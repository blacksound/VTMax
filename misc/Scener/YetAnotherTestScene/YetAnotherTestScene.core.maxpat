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
		"rect" : [ 1505.0, 608.0, 640.0, 480.0 ],
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
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 86.0, 150.0, 199.0, 22.0 ],
					"text" : "VTMSpatProxy.model mono splay 1"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "none",
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 86.0, 104.0, 201.0, 22.0 ],
					"text" : "VTMSpatProxy.model hussa splay 2"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "none",
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 86.0, 64.0, 200.0, 22.0 ],
					"text" : "VTMSpatProxy.model yessa splay 2"
				}

			}
 ],
		"lines" : [  ],
		"dependency_cache" : [ 			{
				"name" : "VTMSpatProxy.model.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/VTMax/patchers/Modules/VTMSpatProxy",
				"patcherrelativepath" : "../../../patchers/Modules/VTMSpatProxy",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "splay.methodParameters.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/VTMax/patchers/Modules/VTMSpatProxy/MethodParametersPatchers",
				"patcherrelativepath" : "../../../patchers/Modules/VTMSpatProxy/MethodParametersPatchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "SpatProxyLogic.js",
				"bootpath" : "~/Documents/Max 8/Packages/VTMax/patchers/Modules/VTMSpatProxy",
				"patcherrelativepath" : "../../../patchers/Modules/VTMSpatProxy",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "thru.maxpat",
				"bootpath" : "C74:/patchers/m4l/Pluggo for Live resources/patches",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "GetAllParametersDict.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/VTMax/patchers/General",
				"patcherrelativepath" : "../../../patchers/General",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "j.lazyReceive.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/VTMax/patchers/ImportedFrom_vt_max",
				"patcherrelativepath" : "../../../patchers/ImportedFrom_vt_max",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "BuildJSONCue.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/VTMax/patchers/General",
				"patcherrelativepath" : "../../../patchers/General",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "VTMSendMsg.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/VTMax/patchers",
				"patcherrelativepath" : "../../../patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "j.parameter.mxo",
				"type" : "iLaX"
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
				"name" : "j.namespace.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "j.receive.mxo",
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
 ],
		"autosave" : 0
	}

}
