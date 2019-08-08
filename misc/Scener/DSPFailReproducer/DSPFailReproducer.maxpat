{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 0,
			"revision" : 6,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 382.0, 160.0, 819.0, 811.0 ],
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
					"hidden" : 1,
					"id" : "obj-25",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 466.0, 558.0, 83.0, 22.0 ],
					"text" : "j.receive pos4"
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-24",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 354.0, 558.0, 83.0, 22.0 ],
					"text" : "j.receive pos3"
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-23",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 453.0, 368.0, 83.0, 22.0 ],
					"text" : "j.receive pos2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 453.0, 475.0, 60.0, 73.0 ],
					"setminmax" : [ 0.0, 1.0 ],
					"thickness" : 6
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 391.0, 475.0, 60.0, 73.0 ],
					"setminmax" : [ 0.0, 1.0 ],
					"thickness" : 6
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 453.0, 400.0, 60.0, 73.0 ],
					"setminmax" : [ 0.0, 1.0 ],
					"thickness" : 6
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 354.0, 361.5, 83.0, 22.0 ],
					"text" : "j.receive pos1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 391.0, 400.0, 60.0, 73.0 ],
					"setminmax" : [ 0.0, 1.0 ],
					"thickness" : 6
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 383.0, 57.0, 150.0, 60.0 ],
					"text" : "husk at slå på dsp, robot styring blir gjort med msp signal behandlings logivv babes"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "none",
					"args" : [ "dspBug.4" ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-18",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "VTMSpatProxy.view.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 571.0, 337.0, 150.0, 320.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/DSPFailReproducer/xy4", "global" ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-17",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "VTM_UI_slider.maxpat",
					"numinlets" : 1,
					"numoutlets" : 0,
					"offset" : [ 0.0, 0.0 ],
					"patching_rect" : [ 342.0, 226.0, 149.0, 19.0 ],
					"prototypename" : "VTM_UI_slider",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/DSPFailReproducer/xy3", "global" ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-16",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "VTM_UI_slider.maxpat",
					"numinlets" : 1,
					"numoutlets" : 0,
					"offset" : [ 0.0, 0.0 ],
					"patching_rect" : [ 342.0, 204.0, 153.0, 21.0 ],
					"prototypename" : "VTM_UI_slider",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/DSPFailReproducer/xy2", "global" ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-15",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "VTM_UI_slider.maxpat",
					"numinlets" : 1,
					"numoutlets" : 0,
					"offset" : [ 0.0, 0.0 ],
					"patching_rect" : [ 342.0, 182.0, 149.0, 19.0 ],
					"prototypename" : "VTM_UI_slider",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/DSPFailReproducer/xy1", "global" ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-28",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "VTM_UI_slider.maxpat",
					"numinlets" : 1,
					"numoutlets" : 0,
					"offset" : [ 0.0, 0.0 ],
					"patching_rect" : [ 342.0, 159.0, 149.0, 19.0 ],
					"prototypename" : "VTM_UI_slider",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"annotation" : "none",
					"args" : [ "dspBug.3" ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-8",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "VTMSpatProxy.view.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 571.0, 68.0, 150.0, 320.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"annotation" : "none",
					"args" : [ "dspBug.2" ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-7",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "VTMSpatProxy.view.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 181.0, 339.0, 150.0, 320.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"annotation" : "none",
					"args" : [ "dspBug.1" ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-5",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "VTMSpatProxy.view.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 181.0, 68.0, 150.0, 320.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "front" ],
					"patching_rect" : [ 5.0, 821.0, 39.0, 22.0 ],
					"text" : "t front"
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 5.0, 790.0, 127.0, 22.0 ],
					"text" : "j.receive showWindow"
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 5.0, 851.0, 67.0, 22.0 ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
					"text" : "thispatcher"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 5.0, 759.0, 41.0, 22.0 ],
					"text" : "j.view"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "DSPFailReproducer" ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-1",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "SceneCore.module.maxpat",
					"numinlets" : 0,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 5.0, 5.0, 150.0, 735.0 ],
					"viewvisibility" : 1
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
					"destination" : [ "obj-9", 0 ],
					"hidden" : 1,
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"hidden" : 1,
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"hidden" : 1,
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"hidden" : 1,
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"hidden" : 1,
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"hidden" : 1,
					"source" : [ "obj-6", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "SceneCore.module.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/VTMax/patchers/SceneCore",
				"patcherrelativepath" : "../../../patchers/SceneCore",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "SceneCore.view.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/VTMax/patchers/SceneCore",
				"patcherrelativepath" : "../../../patchers/SceneCore",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "VTM_UI_cellblock.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/VTMax/patchers/Widgets",
				"patcherrelativepath" : "../../../patchers/Widgets",
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
				"name" : "thru.maxpat",
				"bootpath" : "C74:/patchers/m4l/Pluggo for Live resources/patches",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "VTMSceneStateListContainer.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/VTMax/patchers/VTMGlobal",
				"patcherrelativepath" : "../../../patchers/VTMGlobal",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "VTMSceneStatus.view.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/VTMax/patchers/VTMGlobal",
				"patcherrelativepath" : "../../../patchers/VTMGlobal",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "SceneStateListBuilder.js",
				"bootpath" : "~/Documents/Max 8/Packages/VTMax/javascript",
				"patcherrelativepath" : "../../../javascript",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "SceneCoreLogic.js",
				"bootpath" : "~/Documents/Max 8/Packages/VTMax/javascript",
				"patcherrelativepath" : "../../../javascript",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "VTMSpatProxy.view.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/VTMax/patchers/Modules/VTMSpatProxy",
				"patcherrelativepath" : "../../../patchers/Modules/VTMSpatProxy",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "VTM_UI_textedit.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/VTMax/patchers/Widgets",
				"patcherrelativepath" : "../../../patchers/Widgets",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "SpatProxyMenu.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/VTMax/patchers/Modules/VTMSpatProxy",
				"patcherrelativepath" : "../../../patchers/Modules/VTMSpatProxy",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "VTM_UI_slider.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/VTMax/patchers/Widgets",
				"patcherrelativepath" : "../../../patchers/Widgets",
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
				"patcherrelativepath" : "../../../patchers/Modules/VTMSpatProxy/MethodParametersPatchers/MethodParameterViews",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "VTM_UI_menu.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/VTMax/patchers/Widgets",
				"patcherrelativepath" : "../../../patchers/Widgets",
				"type" : "JSON",
				"implicit" : 1
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
				"name" : "j.remote.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "j.init.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "j.view.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "j.ui.mxo",
				"type" : "iLaX"
			}
 ],
		"autosave" : 0
	}

}
