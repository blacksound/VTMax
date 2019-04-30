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
		"rect" : [ 1415.0, 79.0, 1127.0, 679.0 ],
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
					"annotation" : "none",
					"id" : "obj-25",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 824.0, 226.0, 202.0, 22.0 ],
					"text" : "VTMSpatProxy.model spat.1 splay 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"linecount" : 3,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 869.0, 427.0, 50.0, 49.0 ],
					"text" : "destination none"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "none",
					"args" : [ "/spat.1" ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-26",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "VTMSpatProxy.view.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 585.0, 118.0, 150.0, 320.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 341.0, 562.0, 115.0, 22.0 ],
					"text" : "j.send /VTLydserver"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 68.0, 540.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 68.0, 458.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 68.0, 584.0, 189.0, 22.0 ],
					"text" : "j.send /VTLydserver/registerClient"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 68.0, 493.0, 202.0, 22.0 ],
					"text" : "j.send /VTLydserver/unregisterClient"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 333.0, 71.0, 129.0, 22.0 ],
					"text" : "print lydserverRunning"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 289.0, 102.0, 50.0, 22.0 ],
					"text" : "1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 285.0, 41.0, 171.0, 22.0 ],
					"text" : "j.receive /VTLydserver/running"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 76.0, 85.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 76.0, 122.0, 165.0, 22.0 ],
					"text" : "j.send /VTLydserver/running?"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 68.0, 226.0, 58.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"linecount" : 3,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 68.0, 261.0, 271.0, 49.0 ],
					"text" : "server_ip 127.0.0.1, server_port 57120, client_ip 127.0.0.1, client_port 50000, client_name aaa, allocatorChannels 1 2 3 4 5 6 7 8"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 68.0, 359.0, 135.0, 22.0 ],
					"text" : "print VTLydserverDump"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "none",
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 68.0, 323.0, 213.0, 22.0 ],
					"text" : "VTLydserverProxy.model VTLydserver"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"source" : [ "obj-23", 0 ]
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
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 1 ],
					"order" : 1,
					"source" : [ "obj-9", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"order" : 0,
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "VTLydserverProxy.model.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/VTMax/patchers/General/VTLydserverProxy",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "thru.maxpat",
				"bootpath" : "C74:/patchers/m4l/Pluggo for Live resources/patches",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "j.lazyReceive.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/VTMax/patchers/ImportedFrom_vt_max",
				"patcherrelativepath" : "../../ImportedFrom_vt_max",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "VTMSpatProxy.view.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/VTMax/patchers/Modules/VTMSpatProxy",
				"patcherrelativepath" : "../../Modules/VTMSpatProxy",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "VTM_UI_textedit.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/VTMax/patchers/Widgets",
				"patcherrelativepath" : "../../Widgets",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "VTM_UI_menu.large.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/VTMax/patchers/Widgets",
				"patcherrelativepath" : "../../Widgets",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "VTM_UI_slider.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/VTMax/patchers/Widgets",
				"patcherrelativepath" : "../../Widgets",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "resizeParent.js",
				"bootpath" : "~/Documents/Max 8/Packages/VTMax/javascript",
				"patcherrelativepath" : "../../../javascript",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "splay.parameters.view.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/VTMax/patchers/Modules/VTMSpatProxy/MethodParametersPatchers/MethodParameterViews",
				"patcherrelativepath" : "../../Modules/VTMSpatProxy/MethodParametersPatchers/MethodParameterViews",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "VTM_UI_menu.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/VTMax/patchers/Widgets",
				"patcherrelativepath" : "../../Widgets",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "VTMSpatProxy.model.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/VTMax/patchers/Modules/VTMSpatProxy",
				"patcherrelativepath" : "../../Modules/VTMSpatProxy",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "splay.methodParameters.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/VTMax/patchers/Modules/VTMSpatProxy/MethodParametersPatchers",
				"patcherrelativepath" : "../../Modules/VTMSpatProxy/MethodParametersPatchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "SpatProxyLogic.js",
				"bootpath" : "~/Documents/Max 8/Packages/VTMax/patchers/Modules/VTMSpatProxy",
				"patcherrelativepath" : "../../Modules/VTMSpatProxy",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "GetAllParametersDict.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/VTMax/patchers/General",
				"patcherrelativepath" : "..",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "BuildJSONCue.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/VTMax/patchers/General",
				"patcherrelativepath" : "..",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "VTMSendMsg.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/VTMax/patchers",
				"patcherrelativepath" : "../..",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "j.model.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "j.return.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "j.message.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "j.send.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "j.oscroute.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "j.receive.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "j.ui.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "j.remote.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "j.view.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "j.parameter.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "j.namespace.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "j.init.mxo",
				"type" : "iLaX"
			}
 ],
		"autosave" : 0
	}

}
