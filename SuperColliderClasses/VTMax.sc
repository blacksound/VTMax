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
			//this.queryAllocations;
		});
	}

	*prInitResponders{
		responders = [
			/*OSCFunc({arg msg, time, addr, port;
				allocations = msg[1].asString.parseYAML.changeScalarValuesToDataTypes;
				//allocations = msg[1].asString;
				"\tAllocations: %".format(allocations).postln;
				this.updateSpatProxyRoutings;
				this.changed(\allocations);
			}, '/VTMax/allocator/allocations'),*/
			OSCFunc({arg msg, time, addr, port;
				var spatProxyPath, channels;
				spatProxyPath = msg[1];
				channels = msg[2..];
				//"\tAllocated: % - channels: %".format(spatProxyPath, channels).postln;
				allocations.put(spatProxyPath, channels);
				this.changed(\allocations);
				this.updateSpatProxyRoutings;
			}, '/VTMax/allocator/allocated'),
			OSCFunc({arg msg, time, addr, port;
				var spatProxyPath, channels;
				spatProxyPath = msg[1];
				channels = msg[2..];
				//"\tFree: % - channels: %".format(spatProxyPath, channels).postln;
				allocations.removeAt(spatProxyPath);
				this.changed(\allocations);
				this.updateSpatProxyRoutings;
				"Freed: %".format(msg[1..]).postln;
			}, '/VTMax/allocator/freed'),
			OSCFunc({arg msg, time, addr, port;
				var path, busnum;
				path = msg[1].asSymbol;
				busnum = msg[2];
				//"\tRegistered busnums path: % - %".format(path, busnum).postln;
				this.busnumMappings.put(path, busnum);
			}, '/lydserver/busnumPaths')
		];
	}

	/**queryAllocations{
		NetAddr("127.0.0.1", 50000).sendMsg('/VTLydserver/allocations?');
		// query allocations from VTLydserver Proxy in VTMax Global
		// should ask the clients runnning spatProxys
	}*/

	*addSpatProxyRoute{arg nodeProxy, spatProxyPath, args;
		"addSpatProxyRoute: %:% \n\t%".format(this.class, thisMethod.name, [nodeProxy, spatProxyPath, args]).postln;

		if(routings.includesKey(spatProxyPath).not, {
			"no existing spatProxy routing for key: %".format(spatProxyPath).postln;
			routings.put(spatProxyPath, Dictionary.new().put(
				nodeProxy, (
					monitor: NodeProxy.audio(nodeProxy.server, nodeProxy.numChannels).source_({
						nodeProxy.ar(nodeProxy.numChannels);
					}),
					args: args
				)
			));
			"created spatProxy routing for key: %".format(spatProxyPath).postln;
		}, {"spatProxy routing for key: % already registered".format(spatProxyPath).postln});

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
	}

	*removeSpatProxyRouting{arg nodeProxy, spatProxyPath;
		"removeSpatProxyRouting: %:% \n\t%".format(this.class, thisMethod.name, [nodeProxy, spatProxyPath]).postln;

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
	}

	*updateSpatProxyRoutings{
		"updateSpatProxyRoutings: %:%".format(this.class, thisMethod.name).postln;

		routings.keysValuesDo({arg spatProxyPath, nodeProxyRoutings;
			//
			"who are you?: %".format(allocations[spatProxyPath][0].class).postln;
			"allocations on update proxy routings: %".format(allocations[spatProxyPath]).postln;
			if(allocations.includesKey(spatProxyPath) and: allocations[spatProxyPath][0].isInteger,
				// [0] because is the content of the array actually something which is usable as a busnum
				{
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
	}

	*getSpatProxyMonitor{arg spatProxyPath, nodeProxy;
		var result, routing, proxy;
		"getSpatProxyMonitor: %:%".format(this.class, thisMethod.name).postln;
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
