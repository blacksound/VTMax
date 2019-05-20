+ BusPlug {
	playSpat{arg spatProxyPath, amps, ins, vol, fadeTime, group, addAction;
		VTMax.addSpatProxyRoute(this, spatProxyPath.asSymbol,
			(
				amps: amps,
				ins: ins,
				vol: vol,
				fadeTime: fadeTime,
				group: group,
				addAction: addAction
			)
		);
	}

	stopSpat{arg spatProxyPath;
		VTMax.removeSpatProxyRouting(this, spatProxyPath);
	}

	spatVol{arg spatProxyPath;
		var result;
		var monitor = this.getSpatProxyMonitor(spatProxyPath);
		if(monitor.notNil, {
			result = monitor.vol;
		});
		^result;
	}

	spatVol_{arg spatProxyPath, vol;
		var monitor = this.getSpatProxyMonitor(spatProxyPath);
		if(monitor.notNil, {
			monitor.vol_(vol);
		});
	}

	getSpatProxyMonitor{arg key;
		var result;
		result = VTMax.getSpatProxyMonitor(key, this);
		^result;
	}

	isPlayingSpat{arg spatPath;
		^this.getSpatRouting(spatPath).notNil;
	}

	getSpatRouting{arg spatPath;
		var spatRoutings;
		var nodeProxyRouting;
		spatRoutings = VTMax.routings[spatPath];
		if(spatRoutings.isNil, {
			^nil;
		});
		nodeProxyRouting = spatRoutings.detect({arg item;
			item[\nodeProxy] === this;
		});
		if(nodeProxyRouting.isNil, { ^nil; });
		^nodeProxyRouting;
	}

}