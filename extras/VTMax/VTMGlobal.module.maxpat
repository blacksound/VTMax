{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 7,
			"minor" : 3,
			"revision" : 4,
			"architecture" : "x86",
			"modernui" : 1
		}
,
		"rect" : [ -439.0, -1361.0, 179.0, 783.0 ],
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
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 7,
							"minor" : 3,
							"revision" : 4,
							"architecture" : "x86",
							"modernui" : 1
						}
,
						"rect" : [ -148.0, -1361.0, 809.0, 783.0 ],
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
						"visible" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-48",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 7,
											"minor" : 3,
											"revision" : 4,
											"architecture" : "x86",
											"modernui" : 1
										}
,
										"rect" : [ 59.0, 104.0, 640.0, 480.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-2",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "" ],
													"patching_rect" : [ 54.0, 96.0, 30.0, 22.0 ],
													"style" : "",
													"text" : "t b l"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-1",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 54.0, 142.0, 102.0, 22.0 ],
													"style" : "",
													"text" : "NoSaveMessage"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-46",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 54.0, 40.0, 30.0, 30.0 ],
													"style" : ""
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-47",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 223.0, 30.0, 30.0 ],
													"style" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-47", 0 ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 1 ],
													"source" : [ "obj-2", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"source" : [ "obj-46", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 329.75, 132.0, 127.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"style" : "",
										"tags" : ""
									}
,
									"style" : "",
									"text" : "p MaxMSPMagicTrick"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-45",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 7,
											"minor" : 3,
											"revision" : 4,
											"architecture" : "x86",
											"modernui" : 1
										}
,
										"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-40",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 194.0, 114.0, 22.0 ],
													"style" : "",
													"text" : "prepend newScene"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-39",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 164.0, 39.0, 22.0 ],
													"style" : "",
													"text" : "join 2"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-38",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "" ],
													"patching_rect" : [ 50.0, 100.0, 30.0, 22.0 ],
													"style" : "",
													"text" : "t b l"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-33",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patcher" : 													{
														"fileversion" : 1,
														"appversion" : 														{
															"major" : 7,
															"minor" : 3,
															"revision" : 4,
															"architecture" : "x86",
															"modernui" : 1
														}
,
														"rect" : [ 984.0, 204.0, 292.0, 480.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"id" : "obj-4",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"outlettype" : [ "", "int" ],
																	"patching_rect" : [ 119.0, 154.0, 130.0, 22.0 ],
																	"style" : "",
																	"text" : "conformpath max boot"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-3",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "bang" ],
																	"patching_rect" : [ 71.0, 56.0, 24.0, 22.0 ],
																	"style" : "",
																	"text" : "t b"
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-2",
																	"index" : 1,
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "bang" ],
																	"patching_rect" : [ 71.0, 17.0, 30.0, 30.0 ],
																	"style" : ""
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-1",
																	"index" : 1,
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 148.25, 308.0, 30.0, 30.0 ],
																	"style" : ""
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-67",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 148.25, 255.0, 59.0, 22.0 ],
																	"style" : "",
																	"text" : "tosymbol"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-38",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 148.25, 227.0, 126.0, 22.0 ],
																	"style" : "",
																	"text" : "sprintf %smisc/scripts"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-33",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 5,
																	"outlettype" : [ "", "", "", "", "" ],
																	"patching_rect" : [ 119.0, 199.0, 136.0, 22.0 ],
																	"style" : "",
																	"text" : "regexp ^(.+/VTMax/).+$"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-32",
																	"maxclass" : "message",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 69.0, 86.0, 34.0, 22.0 ],
																	"style" : "",
																	"text" : "path"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-25",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"outlettype" : [ "", "" ],
																	"patching_rect" : [ 69.0, 115.0, 69.0, 22.0 ],
																	"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
																	"style" : "",
																	"text" : "thispatcher"
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"destination" : [ "obj-3", 0 ],
																	"source" : [ "obj-2", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-4", 0 ],
																	"source" : [ "obj-25", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-32", 0 ],
																	"source" : [ "obj-3", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-25", 0 ],
																	"source" : [ "obj-32", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-38", 0 ],
																	"source" : [ "obj-33", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-67", 0 ],
																	"source" : [ "obj-38", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-33", 0 ],
																	"source" : [ "obj-4", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-1", 0 ],
																	"source" : [ "obj-67", 0 ]
																}

															}
 ]
													}
,
													"patching_rect" : [ 50.0, 132.0, 108.0, 22.0 ],
													"saved_object_attributes" : 													{
														"description" : "",
														"digest" : "",
														"globalpatchername" : "",
														"style" : "",
														"tags" : ""
													}
,
													"style" : "",
													"text" : "p getScriptsFolder"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-43",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ],
													"style" : ""
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-44",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 276.0, 30.0, 30.0 ],
													"style" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-39", 0 ],
													"source" : [ "obj-33", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-33", 0 ],
													"source" : [ "obj-38", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-39", 1 ],
													"source" : [ "obj-38", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-40", 0 ],
													"source" : [ "obj-39", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-44", 0 ],
													"source" : [ "obj-40", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-38", 0 ],
													"source" : [ "obj-43", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 329.75, 67.0, 133.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"style" : "",
										"tags" : ""
									}
,
									"style" : "",
									"text" : "p makeNewSceneArgs"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-15",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 329.75, 39.0, 169.0, 22.0 ],
									"style" : "",
									"text" : "route newScene"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 329.75, 174.0, 35.0, 22.0 ],
									"style" : "",
									"text" : "shell"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-66",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 529.75, 39.0, 117.0, 22.0 ],
									"style" : "",
									"text" : "prepend findScenes"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 421.25, 257.0, 158.0, 22.0 ],
									"style" : "",
									"text" : "loadmess dictionary scenes"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-20",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 0,
									"patching_rect" : [ 29.0, 98.0, 117.0, 22.0 ],
									"style" : "",
									"text" : "NakedScriptCanvas",
									"varname" : "viewCanvas"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-82",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 0,
									"patching_rect" : [ 29.0, 48.0, 117.0, 22.0 ],
									"style" : "",
									"text" : "NakedScriptCanvas",
									"varname" : "coreCanvas"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-81",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 329.75, 98.0, 301.25, 22.0 ],
									"saved_object_attributes" : 									{
										"filename" : "SceneManager.js",
										"parameter_enable" : 0
									}
,
									"style" : "",
									"text" : "js SceneManager.js"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-78",
									"maxclass" : "dict.view",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 417.25, 349.0, 162.0, 299.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.986246, 0.007121, 0.027434, 1.0 ],
									"id" : "obj-71",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 4,
									"outlettype" : [ "dictionary", "", "", "" ],
									"patching_rect" : [ 172.5, 52.0, 71.0, 22.0 ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"parameter_enable" : 0
									}
,
									"style" : "",
									"text" : "dict scenes"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.287863, 0.333333, 0.329398, 0.7 ],
									"id" : "obj-52",
									"linecount" : 4,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 104.75, 712.0, 150.0, 60.0 ],
									"style" : "",
									"text" : "EABDisk:/Users/eirikblekesaune/Documents/Max 7/Packages/VTMax/misc/Scener/",
									"textcolor" : [ 0.862745, 0.741176, 0.137255, 1.0 ],
									"varname" : "scenesFolder"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-23",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 7,
											"minor" : 3,
											"revision" : 4,
											"architecture" : "x86",
											"modernui" : 1
										}
,
										"rect" : [ 984.0, 204.0, 292.0, 480.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-1",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 148.25, 254.0, 30.0, 30.0 ],
													"style" : ""
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-80",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 69.0, 57.0, 60.0, 22.0 ],
													"style" : "",
													"text" : "loadbang"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-67",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 148.25, 201.0, 59.0, 22.0 ],
													"style" : "",
													"text" : "tosymbol"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-38",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 148.25, 173.0, 133.0, 22.0 ],
													"style" : "",
													"text" : "sprintf %smisc/Scener/"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-33",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 5,
													"outlettype" : [ "", "", "", "", "" ],
													"patching_rect" : [ 119.0, 145.0, 136.0, 22.0 ],
													"style" : "",
													"text" : "regexp ^(.+/VTMax/).+$"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-32",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 69.0, 86.0, 34.0, 22.0 ],
													"style" : "",
													"text" : "path"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-25",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 69.0, 115.0, 69.0, 22.0 ],
													"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
													"style" : "",
													"text" : "thispatcher"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-33", 0 ],
													"source" : [ "obj-25", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-25", 0 ],
													"source" : [ "obj-32", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-38", 0 ],
													"source" : [ "obj-33", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-67", 0 ],
													"source" : [ "obj-38", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"source" : [ "obj-67", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-32", 0 ],
													"source" : [ "obj-80", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 529.75, 9.0, 114.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"style" : "",
										"tags" : ""
									}
,
									"style" : "",
									"text" : "p findScenesFolder"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 329.75, 12.0, 97.0, 22.0 ],
									"style" : "",
									"text" : "r sceneManager"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-78", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-45", 0 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-81", 0 ],
									"midpoints" : [ 489.25, 93.0, 339.25, 93.0 ],
									"source" : [ "obj-15", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-66", 0 ],
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-81", 0 ],
									"source" : [ "obj-45", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-48", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-81", 0 ],
									"midpoints" : [ 539.25, 93.0, 339.25, 93.0 ],
									"source" : [ "obj-66", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-48", 0 ],
									"source" : [ "obj-81", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 6.0, 646.0, 59.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"style" : "",
						"tags" : ""
					}
,
					"style" : "",
					"text" : "p scenes"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.0, 1.0, 0.0, 1.0 ],
					"bgfillcolor_angle" : 270.0,
					"bgfillcolor_autogradient" : 0.79,
					"bgfillcolor_color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
					"bgfillcolor_color1" : [ 0.0, 1.0, 0.0, 1.0 ],
					"bgfillcolor_color2" : [ 0.685, 0.685, 0.685, 1.0 ],
					"bgfillcolor_proportion" : 0.39,
					"bgfillcolor_type" : "gradient",
					"fontname" : "Arial",
					"fontsize" : 18.0,
					"gradient" : 0,
					"id" : "obj-15",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 10.0, 562.0, 160.0, 29.0 ],
					"style" : "",
					"text" : "pageB/fader.3 0.",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
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
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 7,
							"minor" : 3,
							"revision" : 4,
							"architecture" : "x86",
							"modernui" : 1
						}
,
						"rect" : [ 979.0, 79.0, 576.0, 502.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "resetPage", "" ],
									"patching_rect" : [ 133.0, 145.0, 78.0, 22.0 ],
									"style" : "",
									"text" : "t resetPage l"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 192.0, 188.0, 101.0, 22.0 ],
									"style" : "",
									"text" : "prepend address"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 133.0, 224.0, 43.0, 22.0 ],
									"style" : "",
									"text" : "j.send"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 133.0, 106.0, 57.0, 22.0 ],
									"style" : "",
									"text" : "zl slice 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 345.0, 68.0, 173.0, 22.0 ],
									"style" : "",
									"text" : "j.receive /global/sceneMapped"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 133.0, 68.0, 188.0, 22.0 ],
									"style" : "",
									"text" : "j.receive /global/sceneUnmapped"
								}

							}
, 							{
								"box" : 								{
									"annotation" : "none",
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 131.0, 353.0, 177.0, 22.0 ],
									"style" : "",
									"text" : "VTMControlPage.model pageD"
								}

							}
, 							{
								"box" : 								{
									"annotation" : "none",
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 131.0, 322.0, 177.0, 22.0 ],
									"style" : "",
									"text" : "VTMControlPage.model pageC"
								}

							}
, 							{
								"box" : 								{
									"annotation" : "none",
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 131.0, 289.0, 177.0, 22.0 ],
									"style" : "",
									"text" : "VTMControlPage.model pageB"
								}

							}
, 							{
								"box" : 								{
									"annotation" : "none",
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 131.0, 259.0, 177.0, 22.0 ],
									"style" : "",
									"text" : "VTMControlPage.model pageA"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-3",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 23.0, 154.0, 30.0, 30.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-2",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 23.0, 68.0, 30.0, 30.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 23.0, 117.0, 49.0, 22.0 ],
									"style" : "",
									"text" : "j.model"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-13", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 10.0, 528.0, 57.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"style" : "",
						"tags" : ""
					}
,
					"style" : "",
					"text" : "p control"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 6.0, 617.0, 56.0, 22.0 ],
					"style" : "",
					"text" : "onecopy"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "none",
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 6.0, 493.0, 142.0, 22.0 ],
					"style" : "",
					"text" : "VTMGlobal.model global"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "none",
					"args" : [ "/global" ],
					"bgcolor" : [ 0.299869, 0.296929, 0.263911, 0.69 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-3",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "VTMGlobal.view.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 6.0, 1.0, 165.0, 451.0 ],
					"viewvisibility" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 1 ],
					"source" : [ "obj-1", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "VTMGlobal.view.maxpat",
				"bootpath" : "~/Documents/Max 7/Packages/VTMax/patchers/VTMGlobal",
				"patcherrelativepath" : "../../patchers/VTMGlobal",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "VTMSceneStateList.maxpat",
				"bootpath" : "~/Documents/Max 7/Packages/VTMax/patchers/VTMGlobal",
				"patcherrelativepath" : "../../patchers/VTMGlobal",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "VTMSceneStatus.view.maxpat",
				"bootpath" : "~/Documents/Max 7/Packages/VTMax/patchers/VTMGlobal",
				"patcherrelativepath" : "../../patchers/VTMGlobal",
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
				"name" : "deleteAllPatchers.js",
				"bootpath" : "~/Documents/Max 7/Packages/VTMax/patchers/VTMGlobal",
				"patcherrelativepath" : "../../patchers/VTMGlobal",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "VTMGlobal.model.maxpat",
				"bootpath" : "~/Documents/Max 7/Packages/VTMax/patchers/VTMGlobal",
				"patcherrelativepath" : "../../patchers/VTMGlobal",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "NakedScriptCanvas.maxpat",
				"bootpath" : "~/Documents/Max 7/Packages/VTMax/patchers/ImportedFrom_vt_max",
				"patcherrelativepath" : "../../patchers/ImportedFrom_vt_max",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "VTMGlobalLogic.js",
				"bootpath" : "~/Documents/Max 7/Packages/VTMax/javascript",
				"patcherrelativepath" : "../../javascript",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "VTMControlPage.model.maxpat",
				"bootpath" : "~/Documents/Max 7/Packages/VTMax/patchers/Control",
				"patcherrelativepath" : "../../patchers/Control",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "VTMControlButtonCol.model.maxpat",
				"bootpath" : "~/Documents/Max 7/Packages/VTMax/patchers/Control",
				"patcherrelativepath" : "../../patchers/Control",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "SceneManager.js",
				"bootpath" : "~/Documents/Max 7/Packages/VTMax/javascript",
				"patcherrelativepath" : "../../javascript",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "SceneCore.model.maxpat",
				"bootpath" : "~/Documents/Max 7/Packages/VTMax/patchers/SceneCore",
				"patcherrelativepath" : "../../patchers/SceneCore",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "TestScene.core.maxpat",
				"bootpath" : "~/Documents/Max 7/Packages/VTMax/misc/Scener/TestScene",
				"patcherrelativepath" : "../../misc/Scener/TestScene",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "VTMSpatProxy.model.maxpat",
				"bootpath" : "~/Documents/Max 7/Packages/VTMax/patchers/Modules/VTMSpatProxy",
				"patcherrelativepath" : "../../patchers/Modules/VTMSpatProxy",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "splay.methodParameters.maxpat",
				"bootpath" : "~/Documents/Max 7/Packages/VTMax/patchers/Modules/VTMSpatProxy/MethodParametersPatchers",
				"patcherrelativepath" : "../../patchers/Modules/VTMSpatProxy/MethodParametersPatchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "SpatProxyLogic.js",
				"bootpath" : "~/Documents/Max 7/Packages/VTMax/patchers/Modules/VTMSpatProxy",
				"patcherrelativepath" : "../../patchers/Modules/VTMSpatProxy",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "GetAllParametersDict.maxpat",
				"bootpath" : "~/Documents/Max 7/Packages/VTMax/patchers/General",
				"patcherrelativepath" : "../../patchers/General",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "j.lazyReceive.maxpat",
				"bootpath" : "~/Documents/Max 7/Packages/VTMax/patchers/ImportedFrom_vt_max",
				"patcherrelativepath" : "../../patchers/ImportedFrom_vt_max",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "BuildJSONCue.maxpat",
				"bootpath" : "~/Documents/Max 7/Packages/VTMax/patchers/General",
				"patcherrelativepath" : "../../patchers/General",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "VTMSendMsg.maxpat",
				"bootpath" : "~/Documents/Max 7/Packages/VTMax/patchers",
				"patcherrelativepath" : "../../patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "PassNonEmptySymbol.maxpat",
				"bootpath" : "~/Documents/Max 7/Packages/VTMax/patchers/General",
				"patcherrelativepath" : "../../patchers/General",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "ScriptCanvas.maxpat",
				"bootpath" : "~/Documents/Max 7/Packages/VTMax/patchers/General",
				"patcherrelativepath" : "../../patchers/General",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "MappingScripter.js",
				"bootpath" : "~/Documents/Max 7/Packages/VTMax/patchers/Control",
				"patcherrelativepath" : "../../patchers/Control",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "TestScene.mappings",
				"bootpath" : "~/Documents/Max 7/Packages/VTMax/misc/Scener/TestScene",
				"patcherrelativepath" : "../../misc/Scener/TestScene",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "gangabeushi.core.maxpat",
				"bootpath" : "~/.Trash/gangabeushi",
				"patcherrelativepath" : "../../../../../../.Trash/gangabeushi",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "TestScene.maxpat",
				"bootpath" : "~/Documents/Max 7/Packages/VTMax/misc/Scener/TestScene",
				"patcherrelativepath" : "../../misc/Scener/TestScene",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "SceneCore.module.maxpat",
				"bootpath" : "~/Documents/Max 7/Packages/VTMax/patchers/SceneCore",
				"patcherrelativepath" : "../../patchers/SceneCore",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "SceneCore.view.maxpat",
				"bootpath" : "~/Documents/Max 7/Packages/VTMax/patchers/SceneCore",
				"patcherrelativepath" : "../../patchers/SceneCore",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "VTM_UI_cellblock.maxpat",
				"bootpath" : "~/Documents/Max 7/Packages/VTMax/patchers/Widgets",
				"patcherrelativepath" : "../../patchers/Widgets",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "VTM_UI_slider.maxpat",
				"bootpath" : "~/Documents/Max 7/Packages/VTMax/patchers/Widgets",
				"patcherrelativepath" : "../../patchers/Widgets",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "VTM_UI_floatbox.maxpat",
				"bootpath" : "~/Documents/Max 7/Packages/VTMax/patchers/Widgets",
				"patcherrelativepath" : "../../patchers/Widgets",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "VTM_UI_intbox.maxpat",
				"bootpath" : "~/Documents/Max 7/Packages/VTMax/patchers/Widgets",
				"patcherrelativepath" : "../../patchers/Widgets",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "VTM_UI_textedit.maxpat",
				"bootpath" : "~/Documents/Max 7/Packages/VTMax/patchers/Widgets",
				"patcherrelativepath" : "../../patchers/Widgets",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "VTM_UI_textedit.large.maxpat",
				"bootpath" : "~/Documents/Max 7/Packages/VTMax/patchers/Widgets",
				"patcherrelativepath" : "../../patchers/Widgets",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "VTM_UI_booleanbutton.maxpat",
				"bootpath" : "~/Documents/Max 7/Packages/VTMax/patchers/Widgets",
				"patcherrelativepath" : "../../patchers/Widgets",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "VTM_UI_messagebutton.maxpat",
				"bootpath" : "~/Documents/Max 7/Packages/VTMax/patchers/Widgets",
				"patcherrelativepath" : "../../patchers/Widgets",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "VTM_UI_toggle.maxpat",
				"bootpath" : "~/Documents/Max 7/Packages/VTMax/patchers/Widgets",
				"patcherrelativepath" : "../../patchers/Widgets",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "VTM_UI_slider.large.maxpat",
				"bootpath" : "~/Documents/Max 7/Packages/VTMax/patchers/Widgets",
				"patcherrelativepath" : "../../patchers/Widgets",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "VTM_UI_menu.maxpat",
				"bootpath" : "~/Documents/Max 7/Packages/VTMax/patchers/Widgets",
				"patcherrelativepath" : "../../patchers/Widgets",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "VTM_UI_menu.large.maxpat",
				"bootpath" : "~/Documents/Max 7/Packages/VTMax/patchers/Widgets",
				"patcherrelativepath" : "../../patchers/Widgets",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "VTM_UI_floatbox.large.maxpat",
				"bootpath" : "~/Documents/Max 7/Packages/VTMax/patchers/Widgets",
				"patcherrelativepath" : "../../patchers/Widgets",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "VTM_UI_intbox.large.maxpat",
				"bootpath" : "~/Documents/Max 7/Packages/VTMax/patchers/Widgets",
				"patcherrelativepath" : "../../patchers/Widgets",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "VTMSpatProxy.view.maxpat",
				"bootpath" : "~/Documents/Max 7/Packages/VTMax/patchers/Modules/VTMSpatProxy",
				"patcherrelativepath" : "../../patchers/Modules/VTMSpatProxy",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "splay.parameters.view.maxpat",
				"bootpath" : "~/Documents/Max 7/Packages/VTMax/patchers/Modules/VTMSpatProxy/MethodParametersPatchers",
				"patcherrelativepath" : "../../patchers/Modules/VTMSpatProxy/MethodParametersPatchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "gangabeushi.maxpat",
				"bootpath" : "~/.Trash/gangabeushi",
				"patcherrelativepath" : "../../../../../../.Trash/gangabeushi",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "NoSaveMessage.maxpat",
				"bootpath" : "~/Documents/Max 7/Packages/VTMax/patchers/General",
				"patcherrelativepath" : "../../patchers/General",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "j.view.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "j.receive.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "j.remote.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "j.send.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "j.model.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "j.message.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "j.return.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "j.parameter.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "j.return_array.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "j.namespace.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "j.oscroute.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "j.init.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "j.cue.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "j.ui.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "shell.mxo",
				"type" : "iLaX"
			}
 ],
		"autosave" : 0
	}

}
