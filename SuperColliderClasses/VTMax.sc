VTMax {
	classvar <allocations;
	classvar <responders;
	classvar <routings; //spatProxyPath -> [(nodeProxy: a NodeProxy, monitor: a Monitor, args: [args])]
	classvar <busnumMappings;

	*initClass{
		allocations = IdentityDictionary.new;
		routings = IdentityDictionary.new;
		busnumMappings = IdentityDictionary.new;
		StartUp.add({
			this.prInitResponders;
			this.queryAllocations;
			{
				var videoAddr = NetAddr("1.2.3.41", 50000);
				[
					(input: '/ting2/nanoKontrol/scene.1/fader.1', output: '/sterkled.1'),
					(input: '/ting2/nanoKontrol/scene.1/fader.2', output: '/sterkled.2'),
					(input: '/ting2/nanoKontrol/scene.1/fader.3', output: '/sterkled.3'),
					(input: '/ting2/nanoKontrol/scene.1/fader.4', output: '/sterkled.4'),
					(input: '/ting2/nanoKontrol/scene.1/fader.5', output: '/sterkled.5'),
					(input: '/ting2/nanoKontrol/scene.1/fader.6', output: '/sterkled.6'),
					(input: '/ting2/nanoKontrol/scene.1/fader.7', output: '/sterkled.7'),
					(input: '/ting2/nanoKontrol/scene.1/fader.8', output: '/sterkled.8'),
					(input: '/ting2/nanoKontrol/scene.1/knob.1', output: '/sterkled.9'),
					(input: '/ting2/nanoKontrol/scene.1/knob.2', output: '/sterkled.10')
				].do({arg mapping;
					var input, output;
					input = mapping[\input];
					output = mapping[\output];
					OSCdef("%_%".format(input, output).asSymbol, { arg msg, time, addr, port;
						// "sterkled % %".format(output, msg[1]).postln;
						videoAddr.sendMsg(output, msg[1]);
					}, input);
				})

			}.value
		});
	}

	*prInitResponders{
		responders = [
			OSCFunc({arg msg, time, addr, port;
				allocations = msg[1].asString.parseYAML.changeScalarValuesToDataTypes;
				// "Allocations: %".format(allocations).postln;
				this.updateSpatProxyRoutings;
				this.changed(\allocations);
			}, '/vt_max/allocator/allocations'),
			OSCFunc({arg msg, time, addr, port;
				var spatProxyPath, channels;
				spatProxyPath = msg[1];
				channels = msg[2..];
				// "Allocated: % - channels: %".format(spatProxyPath, channels).postln;
				allocations.put(spatProxyPath, channels);
				this.changed(\allocations);
				this.updateSpatProxyRoutings;
			}, '/vt_max/allocator/allocated'),
			OSCFunc({arg msg, time, addr, port;
				var spatProxyPath, channels;
				spatProxyPath = msg[1];
				channels = msg[2..];
				// "Free: % - channels: %".format(spatProxyPath, channels).postln;
				allocations.removeAt(spatProxyPath);
				this.changed(\allocations);
				this.updateSpatProxyRoutings;
				// "Freed: %".format(msg[1..]).postln;
			}, '/vt_max/allocator/freed'),
			OSCFunc({arg msg, time, addr, port;
				var path, busnum;
				path = msg[1].asSymbol;
				busnum = msg[2];
				// "Registered busnums path: % - %".format(path, busnum).postln;
				this.busnumMappings.put(path, busnum);
			}, '/lydserver/busnumPaths')
		];
	}

	*queryAllocations{
		NetAddr("127.0.0.1", 50000).sendMsg('/vt_max/allocator/allocations?');
	}

	*addSpatProxyRoute{arg nodeProxy, spatProxyPath, args;
		// "%:% \n\t%".format(this.class, thisMethod.name, [nodeProxy, spatProxyPath, args]).postln;

		//--------new code
		if(routings.includesKey(spatProxyPath).not, {
			routings.put(spatProxyPath, Dictionary.new().put(
				nodeProxy, (
					monitor: NodeProxy.audio(nodeProxy.server, nodeProxy.numChannels).source_({
						nodeProxy.ar(nodeProxy.numChannels);
					}),
					args: args
				)
			));
		});

		if(routings[spatProxyPath].includesKey(nodeProxy), {
			routings[spatProxyPath][nodeProxy][\monitor].source_({
				//update the source just in case it has changed
				nodeProxy.ar(nodeProxy.numChannels);
			}).mold(nodeProxy.numChannels);
		}, {
			routings[spatProxyPath].put(nodeProxy, (
				monitor: NodeProxy.audio(Server.default, nodeProxy.numChannels).source_({
					nodeProxy.ar(nodeProxy.numChannels);
				}),
				args: args
			));
		});
		this.updateSpatProxyRoutings;
		//--------END new code

		// ------old code
		// //have we already routed something to this spatProxy?
		// if(routings.includesKey(spatProxyPath), {
		// 	//then is the nodeProxy already routed to this spatProxy?
		// 	if(routings[spatProxyPath].detectIndex({arg it; it[\nodeProxy] === nodeProxy}).isNil, {
		// 		"Adding another routing for % in %".format(spatProxyPath, nodeProxy).postln;
		// 		routings.put(spatProxyPath, routings[spatProxyPath].add(
		// 			(
		// 				nodeProxy: nodeProxy,
		// 				monitor: NodeProxy.audio(Server.default, nodeProxy.numChannels).source_({
		// 					nodeProxy.ar(nodeProxy.numChannels);
		// 				}),
		// 				args: args
		// 			)
		// 		).asArray);
		// 		}, {
		// 			"Routing already registered: %".format(spatProxyPath).postln;
		// 	});
		// 	}, {
		// 		"Adding first routing for spatProxy % in %".format(spatProxyPath, nodeProxy).postln;
		// 		routings.put(spatProxyPath, [
		// 			(
		// 				nodeProxy: nodeProxy,
		// 				//We could have used the Monitor class here, but playN doesn't work properly for it.
		// 				monitor: NodeProxy.audio(Server.default, nodeProxy.numChannels).source_({
		// 					nodeProxy.ar(nodeProxy.numChannels);
		// 				}),
		// 				args: args
		// 			)
		// 		]);
		// });
		// //TODO: add dependancy for freeing the nodeproxy
		// this.updateSpatProxyRoutings;
		// ------END old code
	}

	*removeSpatProxyRouting{arg nodeProxy, spatProxyPath;
		// "%:% \n\t%".format(this.class, thisMethod.name, [nodeProxy, spatProxyPath]).postln;

		//----- new code
		if(routings.includesKey(spatProxyPath), {
			if(routings[spatProxyPath].includesKey(nodeProxy), {
				var removedRouting = routings[spatProxyPath].removeAt(nodeProxy);
				removedRouting[\monitor].end;
				removedRouting[\monitor].free;
				removedRouting[\monitor].clear;
			});
			if(routings[spatProxyPath].isEmpty, {
				routings.removeAt(spatProxyPath);
			});
		});
		//-----END new code

		// //-----old code
		// if(routings.includesKey(spatProxyPath), {
		// 	var index = routings[spatProxyPath].detectIndex({arg it; it[\nodeProxy] === nodeProxy;});
		// 	if(index.notNil, {
		// 		var removedRouting;
		// 		removedRouting = routings[spatProxyPath].removeAt(index);
		// 		"Removing routing from % to %".format(removedRouting, spatProxyPath).postln;
		// 		removedRouting[\monitor].clear;
		// 		if(routings[spatProxyPath].isEmpty, {
		// 			"All roting are now deleted".postln;
		// 			routings.removeAt(spatProxyPath);
		// 		});
		// 		}, {
		// 			"Routing for % not found".format(spatProxyPath).postln;
		// 	});
		// });
		// this.updateSpatProxyRoutings;
		// //----- END old code
	}

	*updateSpatProxyRoutings{
		// "%:%".format(this.class, thisMethod.name).postln;
		//----new code
		routings.keysValuesDo({arg spatProxyPath, nodeProxyRoutings;
			//
			if(allocations.includesKey(spatProxyPath), {
				nodeProxyRoutings.keysValuesDo({arg nodeProxy, routing;
					var busnums = allocations[spatProxyPath] - 1;
					var args = ();
					args.put(\outs, busnums);
					args.putAll(routing[\args]);
					routing[\monitor].performWithEnvir(\playN, args);
				});
			}, {
				nodeProxyRoutings.keysValuesDo({arg nodeProxy, routing;
					routing[\monitor].stop;
				});
			});
		});
		//----END new code

		// //----old code
		// routings.keysValuesDo({arg spatProxyPath, nodeProxyRoutings;
		// 	nodeProxyRoutings.do({arg routing;
		// 		if(allocations.includesKey(spatProxyPath), {
		// 			var busnums = allocations[spatProxyPath] - 1;
		// 			var args = ();
		// 			// if(routing[\monitor].isPlaying.not, {
		// 			// "Routing start play % on % with channel: %".format(
		// 			// routing[\nodeProxy],
		// 			// spatProxyPath,
		// 			// busnums
		// 			// ).postln;
		//
		// 			args.put(\outs, busnums);
		// 			args.putAll(routing[\args]);
		//
		// 			routing[\monitor].performWithEnvir(\playN, args);
		// 			// }, {
		// 			// "Routing is already playing: %".format(routing[\nodeProxy], spatProxyPath).postln;
		// 			// });
		// 			}, {
		// 				// if(routing[\monitor].isPlaying, {
		// 				"Stopping monitor due to fredd allocation: %".format(spatProxyPath).postln;
		// 				routing[\monitor].stop;
		// 				// });
		// 		});
		// 	});
		// });
		// //----END old code
	}

	*getSpatProxyMonitor{arg spatProxyPath, nodeProxy;
		var result, routing, proxy;
		// "%:%".format(this.class, thisMethod.name).postln;
		routing = routings[spatProxyPath];
		if(routing.notNil, {
			proxy = routing[nodeProxy];
			if(proxy.notNil, {
				result = proxy[\monitor];
			});
		});
		^result;
	}
}
