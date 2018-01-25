{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 7,
			"minor" : 3,
			"revision" : 4,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"rect" : [ 2419.0, 224.0, 893.0, 507.0 ],
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
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 224.0, 81.0, 87.0, 22.0 ],
					"style" : "",
					"text" : "j.send button.*"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "resetValues" ],
					"patching_rect" : [ 150.0, 51.0, 93.0, 22.0 ],
					"style" : "",
					"text" : "t 0. resetValues"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 150.0, 14.0, 191.0, 22.0 ],
					"style" : "",
					"text" : "j.message resetPage @type none"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 67.0, 164.0, 50.0, 35.0 ],
					"style" : "",
					"text" : "rotary.24 0."
				}

			}
, 			{
				"box" : 				{
					"annotation" : "none",
					"id" : "obj-58",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 607.0, 438.0, 217.0, 22.0 ],
					"style" : "",
					"text" : "VTMControlButtonCol.model button.24"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "none",
					"id" : "obj-59",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 607.0, 414.0, 217.0, 22.0 ],
					"style" : "",
					"text" : "VTMControlButtonCol.model button.23"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "none",
					"id" : "obj-60",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 607.0, 388.0, 217.0, 22.0 ],
					"style" : "",
					"text" : "VTMControlButtonCol.model button.22"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "none",
					"id" : "obj-61",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 607.0, 364.0, 217.0, 22.0 ],
					"style" : "",
					"text" : "VTMControlButtonCol.model button.21"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "none",
					"id" : "obj-62",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 607.0, 338.0, 217.0, 22.0 ],
					"style" : "",
					"text" : "VTMControlButtonCol.model button.20"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "none",
					"id" : "obj-63",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 607.0, 314.0, 217.0, 22.0 ],
					"style" : "",
					"text" : "VTMControlButtonCol.model button.19"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "none",
					"id" : "obj-64",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 607.0, 288.0, 217.0, 22.0 ],
					"style" : "",
					"text" : "VTMControlButtonCol.model button.18"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "none",
					"id" : "obj-65",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 607.0, 264.0, 217.0, 22.0 ],
					"style" : "",
					"text" : "VTMControlButtonCol.model button.17"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "none",
					"id" : "obj-50",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 378.0, 438.0, 217.0, 22.0 ],
					"style" : "",
					"text" : "VTMControlButtonCol.model button.16"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "none",
					"id" : "obj-51",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 378.0, 414.0, 217.0, 22.0 ],
					"style" : "",
					"text" : "VTMControlButtonCol.model button.15"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "none",
					"id" : "obj-52",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 378.0, 388.0, 217.0, 22.0 ],
					"style" : "",
					"text" : "VTMControlButtonCol.model button.14"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "none",
					"id" : "obj-53",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 378.0, 364.0, 217.0, 22.0 ],
					"style" : "",
					"text" : "VTMControlButtonCol.model button.13"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "none",
					"id" : "obj-54",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 378.0, 338.0, 217.0, 22.0 ],
					"style" : "",
					"text" : "VTMControlButtonCol.model button.12"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "none",
					"id" : "obj-55",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 378.0, 314.0, 216.0, 22.0 ],
					"style" : "",
					"text" : "VTMControlButtonCol.model button.11"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "none",
					"id" : "obj-56",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 378.0, 288.0, 217.0, 22.0 ],
					"style" : "",
					"text" : "VTMControlButtonCol.model button.10"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "none",
					"id" : "obj-57",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 378.0, 264.0, 210.0, 22.0 ],
					"style" : "",
					"text" : "VTMControlButtonCol.model button.9"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "none",
					"id" : "obj-46",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 150.0, 438.0, 210.0, 22.0 ],
					"style" : "",
					"text" : "VTMControlButtonCol.model button.8"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "none",
					"id" : "obj-47",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 150.0, 414.0, 210.0, 22.0 ],
					"style" : "",
					"text" : "VTMControlButtonCol.model button.7"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "none",
					"id" : "obj-48",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 150.0, 388.0, 210.0, 22.0 ],
					"style" : "",
					"text" : "VTMControlButtonCol.model button.6"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "none",
					"id" : "obj-49",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 150.0, 364.0, 210.0, 22.0 ],
					"style" : "",
					"text" : "VTMControlButtonCol.model button.5"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "none",
					"id" : "obj-44",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 150.0, 338.0, 210.0, 22.0 ],
					"style" : "",
					"text" : "VTMControlButtonCol.model button.4"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "none",
					"id" : "obj-45",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 150.0, 314.0, 210.0, 22.0 ],
					"style" : "",
					"text" : "VTMControlButtonCol.model button.3"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "none",
					"id" : "obj-43",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 150.0, 288.0, 210.0, 22.0 ],
					"style" : "",
					"text" : "VTMControlButtonCol.model button.2"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "none",
					"id" : "obj-42",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 150.0, 264.0, 210.0, 22.0 ],
					"style" : "",
					"text" : "VTMControlButtonCol.model button.1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 150.0, 171.0, 488.0, 22.0 ],
					"style" : "",
					"text" : "j.return masterFader @type decimal @range 0. 1. @default 0. @clipmode both @value 0."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 150.0, 202.5, 671.0, 22.0 ],
					"style" : "",
					"text" : "j.return_array rotary.[24] @type decimal @range 0. 1. @default 0. @format single @clipmode both @stepsize 0.1 @value 0."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 150.0, 130.0, 588.0, 22.0 ],
					"style" : "",
					"text" : "j.return_array fader.[24] @type decimal @range 0. 1. @default 0. @format single @clipmode both @value 0."
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-4",
					"index" : 1,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 21.0, 122.0, 30.0, 30.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-2",
					"index" : 1,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 21.0, 40.0, 30.0, 30.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 21.0, 81.0, 49.0, 22.0 ],
					"style" : "",
					"text" : "j.model"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"order" : 1,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 1 ],
					"order" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"order" : 1,
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"order" : 2,
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"order" : 0,
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"source" : [ "obj-8", 1 ]
				}

			}
 ]
	}

}
