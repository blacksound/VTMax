{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 0,
			"revision" : 3,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 495.0, 174.0, 1508.0, 1212.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-7",
					"linecount" : 14,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 452.0, 246.0, 785.0, 196.0 ],
					"text" : "/balint1/biala/alias none, /balint1/biala/db -3.586134, /balint1/biala/destination genelec, /balint1/biala/lfoAmount 0., /balint1/biala/lfoSpeed 0., /balint1/biala/lfoType ramp, /balint1/biala/pan -0.418742, /balint1/biala/source allocator, /balint1/biala/spread 0., /balint1/biala/width 0., /balint1/myEq/equalizer/bypass 0, /balint1/myEq/equalizer/channelCount 2, /balint1/myEq/equalizer/filter/number 3, /balint1/myEq/equalizer/filter/1/type AllPass, /balint1/myEq/equalizer/filter/1/active 1, /balint1/myEq/equalizer/filter/1/freq 1158., /balint1/myEq/equalizer/filter/1/gain 0., /balint1/myEq/equalizer/filter/1/q 79.66, /balint1/myEq/equalizer/filter/2/type BandPass, /balint1/myEq/equalizer/filter/2/active 1, /balint1/myEq/equalizer/filter/2/freq 3700., /balint1/myEq/equalizer/filter/2/gain 0., /balint1/myEq/equalizer/filter/2/q 1., /balint1/myEq/equalizer/filter/3/type SimpleGain, /balint1/myEq/equalizer/filter/3/active 1, /balint1/myEq/equalizer/filter/3/freq 1000., /balint1/myEq/equalizer/filter/3/gain 0., /balint1/myEq/equalizer/filter/3/q 1., /balint1/myEq/equalizer/gain 0., /balint1/myEq/equalizer/mute 0, /balint1/myEq/equalizer/samplerate 48000, /balint1/myEq/equalizer/window/floating 1, /balint1/myFilePlayer/soundFile 2.wav, /balint1/myFilePlayer/audio/gain 1., /balint1/myFilePlayer/audio/mute 0, /balint1/myFilePlayer/bufferName buffername 1968_bufferplayer, /balint1/myFilePlayer/fileLength 56645.082031, /balint1/myFilePlayer/fileLoaded 0, /balint1/myFilePlayer/numChan 2, /balint1/myFilePlayer/playbackBegin 18018.770833, /balint1/myFilePlayer/playbackEnd 29524.145833, /balint1/myFilePlayer/playbackLoop 1, /balint1/myFilePlayer/playbackPlay 1, /balint1/myFilePlayer/playbackSpeed 0.958126, /balint1/myFilePlayer/playbackSync 0.287414, /balint1/myFilePlayer/resetLoopPoints 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "spat5.osc.view",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "int", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 95.0, 651.0, 353.0, 225.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 182.0, 286.0, 103.0, 22.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"text" : "spat5.osc.change"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"linecount" : 11,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 361.0, 47.0, 1122.0, 156.0 ],
					"text" : "/balint1/biala/alias none, /balint1/biala/db -25.765463, /balint1/biala/destination gogo, /balint1/biala/lfoAmount 0., /balint1/biala/lfoSpeed 0., /balint1/biala/lfoType ramp, /balint1/biala/pan 0., /balint1/biala/source allocator, /balint1/biala/spread 0., /balint1/biala/width 0., /balint1/myEq/equalizer/bypass 0, /balint1/myEq/equalizer/filter/number 4, /balint1/myEq/equalizer/filter/1/type LowPass, /balint1/myEq/equalizer/filter/1/active 1, /balint1/myEq/equalizer/filter/1/freq 7711., /balint1/myEq/equalizer/filter/1/gain 0., /balint1/myEq/equalizer/filter/1/q 1., /balint1/myEq/equalizer/filter/2/type HighShelf, /balint1/myEq/equalizer/filter/2/active 1, /balint1/myEq/equalizer/filter/2/freq 538., /balint1/myEq/equalizer/filter/2/gain 15., /balint1/myEq/equalizer/filter/2/q 0.37, /balint1/myEq/equalizer/filter/3/type Notch, /balint1/myEq/equalizer/filter/3/active 1, /balint1/myEq/equalizer/filter/3/freq 3476., /balint1/myEq/equalizer/filter/3/gain 4.7, /balint1/myEq/equalizer/filter/3/q 0.25, /balint1/myEq/equalizer/filter/4/type HighPass, /balint1/myEq/equalizer/filter/4/active 1, /balint1/myEq/equalizer/filter/4/freq 196., /balint1/myEq/equalizer/filter/4/gain 0., /balint1/myEq/equalizer/filter/4/q 5.95, /balint1/myEq/equalizer/gain 0., /balint1/myEq/equalizer/mute 0, /balint1/myEq/equalizer/samplerate 48000, /balint1/myEq/equalizer/window/floating 0, /balint1/myFilePlayer/soundFile 6.wav, /balint1/myFilePlayer/audio/gain 3., /balint1/myFilePlayer/audio/mute 0, /balint1/myFilePlayer/bufferName buffername 2984_bufferplayer, /balint1/myFilePlayer/fileLength 39740.957031, /balint1/myFilePlayer/fileLoaded 0, /balint1/myFilePlayer/numChan 2, /balint1/myFilePlayer/playbackBegin 4300.333496, /balint1/myFilePlayer/playbackEnd 7023.645996, /balint1/myFilePlayer/playbackLoop 1, /balint1/myFilePlayer/playbackPlay 1, /balint1/myFilePlayer/playbackSpeed 18.03, /balint1/myFilePlayer/playbackSync 0.031724, /balint1/myFilePlayer/resetLoopPoints 0, /balint1/theFilter/audio/bypass 0, /balint1/theFilter/audio/gain 12., /balint1/theFilter/audio/mix 91., /balint1/theFilter/audio/mute 0, /balint1/theFilter/cutoff 1415., /balint1/theFilter/filterType 0"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "spat5.osc.change.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "spat5.osc.view.mxo",
				"type" : "iLaX"
			}
 ],
		"autosave" : 0
	}

}
