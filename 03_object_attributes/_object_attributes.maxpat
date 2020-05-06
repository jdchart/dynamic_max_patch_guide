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
		"rect" : [ 635.0, 79.0, 497.0, 474.0 ],
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
					"id" : "obj-668",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 326.0, 69.5, 70.0, 22.0 ],
					"text" : "loadmess 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 330.0, 414.0, 67.0, 22.0 ],
					"saved_object_attributes" : 					{
						"filename" : "objCtrl.js",
						"parameter_enable" : 0
					}
,
					"text" : "js objCtrl.js",
					"varname" : "js_ctrl"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 330.0, 383.0, 111.0, 22.0 ],
					"text" : "prepend set_object"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 2,
					"fontsize" : 20.0,
					"id" : "obj-6",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 23.0, 19.0, 101.0, 29.0 ],
					"text" : "Attributes:",
					"textcolor" : [ 0.996078431606293, 0.996078431606293, 0.996078431606293, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 326.0, 23.5, 120.0, 20.0 ],
					"text" : "Choose an object..."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"items" : [ "button", ",", "number", ",", "toggle", ",", "buffer~" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 326.0, 45.5, 120.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"border" : 2,
					"bordercolor" : [ 0.996078431372549, 0.972549019607843, 0.168627450980392, 1.0 ],
					"grad1" : [ 0.301961, 0.301961, 0.301961, 0.06 ],
					"grad2" : [ 0.2, 0.2, 0.2, 0.06 ],
					"id" : "obj-7",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 319.5, 19.0, 132.0, 428.0 ],
					"proportion" : 0.5
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.2, 0.2, 0.2, 0.15 ],
					"border" : 2,
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-4",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 23.0, 19.0, 259.0, 219.0 ],
					"proportion" : 0.5,
					"varname" : "attribute_panel"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-710",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 326.0, 120.0, 24.0, 24.0 ],
					"varname" : "jscreated_main_object"
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-711",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "create_attrui", "" ],
					"patching_rect" : [ 457.0, 24.0, 134.0, 22.0 ],
					"text" : "t create_attrui getattrlist",
					"varname" : "jscreated_trigger"
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-712",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 457.0, 49.0, 100.0, 22.0 ],
					"text" : "getattr @listen 0",
					"varname" : "jscreated_get_attr"
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-713",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 457.0, 74.0, 100.0, 22.0 ],
					"text" : "route attrlist",
					"varname" : "jscreated_route"
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-714",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 457.0, 99.0, 100.0, 22.0 ],
					"text" : "iter",
					"varname" : "jscreated_iter"
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-715",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 457.0, 124.0, 126.0, 22.0 ],
					"text" : "prepend add_attribute",
					"varname" : "jscreated_prepend"
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-716",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 457.0, 149.0, 100.0, 22.0 ],
					"text" : "deferlow",
					"varname" : "jscreated_defer"
				}

			}
, 			{
				"box" : 				{
					"attr" : "blinkcolor",
					"id" : "obj-718",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 23.0, 47.0, 259.0, 22.0 ],
					"varname" : "jscreated"
				}

			}
, 			{
				"box" : 				{
					"attr" : "style",
					"id" : "obj-720",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 23.0, 72.0, 259.0, 22.0 ],
					"varname" : "jscreated[1]"
				}

			}
, 			{
				"box" : 				{
					"attr" : "outlinecolor",
					"id" : "obj-722",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 23.0, 97.0, 259.0, 22.0 ],
					"varname" : "jscreated[2]"
				}

			}
, 			{
				"box" : 				{
					"attr" : "bgcolor",
					"id" : "obj-724",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 23.0, 122.0, 259.0, 22.0 ],
					"varname" : "jscreated[3]"
				}

			}
, 			{
				"box" : 				{
					"attr" : "parameter_enable",
					"id" : "obj-726",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 23.0, 147.0, 259.0, 22.0 ],
					"varname" : "jscreated[4]"
				}

			}
, 			{
				"box" : 				{
					"attr" : "parameter_mappable",
					"id" : "obj-728",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 23.0, 172.0, 259.0, 22.0 ],
					"varname" : "jscreated[5]"
				}

			}
, 			{
				"box" : 				{
					"attr" : "blinktime",
					"id" : "obj-730",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 23.0, 197.0, 259.0, 22.0 ],
					"varname" : "jscreated[6]"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"source" : [ "obj-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-668", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-712", 0 ],
					"hidden" : 1,
					"source" : [ "obj-711", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-716", 0 ],
					"hidden" : 1,
					"source" : [ "obj-711", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-710", 0 ],
					"hidden" : 1,
					"source" : [ "obj-712", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-713", 0 ],
					"hidden" : 1,
					"source" : [ "obj-712", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-714", 0 ],
					"hidden" : 1,
					"source" : [ "obj-713", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-715", 0 ],
					"hidden" : 1,
					"source" : [ "obj-714", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"hidden" : 1,
					"source" : [ "obj-715", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"hidden" : 1,
					"source" : [ "obj-716", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-710", 0 ],
					"hidden" : 1,
					"source" : [ "obj-718", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-710", 0 ],
					"hidden" : 1,
					"source" : [ "obj-720", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-710", 0 ],
					"hidden" : 1,
					"source" : [ "obj-722", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-710", 0 ],
					"hidden" : 1,
					"source" : [ "obj-724", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-710", 0 ],
					"hidden" : 1,
					"source" : [ "obj-726", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-710", 0 ],
					"hidden" : 1,
					"source" : [ "obj-728", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-710", 0 ],
					"hidden" : 1,
					"source" : [ "obj-730", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "objCtrl.js",
				"bootpath" : "~/Documents/BACKUP_GIT/VARIOUS CODING PROJECTS/dynamicMaxPatches/03_object_attributes",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
