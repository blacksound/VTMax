// Example of how to use SuperCollider as the SceneCore loader
(
//load buffers
forkIfNeeded{ var soundFilePath = "/path/to/a/sound/file";

    //free buffers if already allocated
    if(topEnvironment.includesKey('aFile'), {
        topEnvironment.at('aFile').free;
    });
    s.sync;

    // populate buffers
    topEnvironment.put(
        'aFile', Buffer.read(s, soundFilePath)
    );
    s.sync; //wait for server to allocate and load soundfile
    "buffers loaded".postln;
};

OSCdef(\SuperColliderExampleActive, {arg msg, time, addr, port;
    var active = msg[1].booleanValue;
	if(active, { //if VTMax Scene is active, "run/activate" SuperCollider SceneCore

		"\n\tSC Scene was activated\n".postln;

        Ndef(\someSound, {arg bufnum;
            var sig;
            var rate = 0.9;
            bufnum = topEnvironment['aFile'].bufnum;
            sig = PlayBuf.ar(2, bufnum, rate * BufRateScale.kr(bufnum), 1, 0, 1);
            sig * 0.5;
        }).playSpat('/SuperColliderExample/spat.1'); // stereo spat

        Ndef(\someOtherSound, {arg bufnum;
            var sig;
			sig = PinkNoise.ar(0.4);
			sig;
        }).playSpat('/SuperColliderExample/spat.2'); // stereo spat

        "\n\tSC Scene is playing\n".postln;

    }, { // if inactice, stop, free and clear what you have done.

        Ndef(\someSound).stopSpat('/SuperColliderExample/spat.1');
        Ndef(\someSound).free;
        Ndef(\someSound).clear;

		Ndef(\someOtherSound).stopSpat('/SuperColliderExample/spat.2');
        Ndef(\someOtherSound).free;
        Ndef(\someOtherSound).clear;

        "\n\tSC Scene FREED\n".postln;
    });
}, '/VTMax/SuperColliderExample/sceneActive'); // path to listen on
)