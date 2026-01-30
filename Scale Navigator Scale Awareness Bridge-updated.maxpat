{
	"patcher" : {
		"fileversion" : 1,
		"appversion" : {
			"major" : 9,
			"minor" : 0,
			"revision" : 9,
			"architecture" : "x64",
			"modernui" : 1
		},
		"classnamespace" : "box",
		"rect" : [ 321.0, 157.0, 640.0, 560.0 ],
		"openinpresentation" : 1,
		"default_fontsize" : 10.0,
		"default_fontname" : "Arial Bold",
		"gridsize" : [ 8.0, 8.0 ],
		"boxanimatetime" : 500,
		"boxes" : [
			{
				"box" : {
					"id" : "obj-jweb",
					"maxclass" : "jweb",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 5.0, 5.0, 550.0, 220.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 0.0, 550.0, 220.0 ],
					"url" : "ui-mockup.html"
				}
			},
			{
				"box" : {
					"id" : "obj-root-to-jweb",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 80.0, 400.0, 60.0, 20.0 ],
					"text" : "root $1"
				}
			},
			{
				"box" : {
					"id" : "obj-scale-to-jweb",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 380.0, 440.0, 60.0, 20.0 ],
					"text" : "scale $1"
				}
			},
			{
				"box" : {
					"id" : "obj-midiin",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 180.0, 80.0, 45.0, 20.0 ],
					"text" : "midiin"
				}
			},
			{
				"box" : {
					"id" : "obj-midiparse",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 8,
					"outlettype" : [ "", "", "", "int", "int", "", "int", "" ],
					"patching_rect" : [ 180.0, 120.0, 100.0, 20.0 ],
					"text" : "midiparse"
				}
			},
			{
				"box" : {
					"id" : "obj-unpack",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 180.0, 160.0, 60.0, 20.0 ],
					"text" : "unpack i i"
				}
			},
			{
				"box" : {
					"id" : "obj-sel",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 180.0, 200.0, 60.0, 20.0 ],
					"text" : "split 0 11"
				}
			},
			{
				"box" : {
					"id" : "obj-minus12",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 380.0, 240.0, 40.0, 20.0 ],
					"text" : "- 12"
				}
			},
			{
				"box" : {
					"id" : "obj-rootnum",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 80.0, 240.0, 50.0, 20.0 ]
				}
			},
			{
				"box" : {
					"id" : "obj-scalenum",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 380.0, 280.0, 50.0, 20.0 ]
				}
			},
			{
				"box" : {
					"id" : "obj-rootmsg",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 80.0, 280.0, 100.0, 20.0 ],
					"text" : "set root_note $1"
				}
			},
			{
				"box" : {
					"id" : "obj-root-coll",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 80.0, 320.0, 100.0, 20.0 ],
					"saved_object_attributes" : {
						"embed" : 1,
						"precision" : 6
					},
					"text" : "coll root_names",
					"coll_data" : {
						"count" : 12,
						"data" : [
							{ "key" : 0, "value" : [ "C" ] },
							{ "key" : 1, "value" : [ "C#" ] },
							{ "key" : 2, "value" : [ "D" ] },
							{ "key" : 3, "value" : [ "D#" ] },
							{ "key" : 4, "value" : [ "E" ] },
							{ "key" : 5, "value" : [ "F" ] },
							{ "key" : 6, "value" : [ "F#" ] },
							{ "key" : 7, "value" : [ "G" ] },
							{ "key" : 8, "value" : [ "G#" ] },
							{ "key" : 9, "value" : [ "A" ] },
							{ "key" : 10, "value" : [ "A#" ] },
							{ "key" : 11, "value" : [ "B" ] }
						]
					}
				}
			},
			{
				"box" : {
					"coll_data" : {
						"count" : 39,
						"data" : [
							{ "key" : 0, "value" : [ "Major" ] },
							{ "key" : 1, "value" : [ "Minor" ] },
							{ "key" : 2, "value" : [ "Dorian" ] },
							{ "key" : 3, "value" : [ "Mixolydian" ] },
							{ "key" : 4, "value" : [ "Lydian" ] },
							{ "key" : 5, "value" : [ "Phrygian" ] },
							{ "key" : 6, "value" : [ "Locrian" ] },
							{ "key" : 7, "value" : [ "Whole Tone" ] },
							{ "key" : 8, "value" : [ "Half-whole Dim." ] },
							{ "key" : 9, "value" : [ "Whole-half Dim." ] },
							{ "key" : 10, "value" : [ "Minor Blues" ] },
							{ "key" : 11, "value" : [ "Minor Pentatonic" ] },
							{ "key" : 12, "value" : [ "Major Pentatonic" ] },
							{ "key" : 13, "value" : [ "Harmonic Minor" ] },
							{ "key" : 14, "value" : [ "Harmonic Major" ] },
							{ "key" : 15, "value" : [ "Dorian #4" ] },
							{ "key" : 16, "value" : [ "Phrygian Dominant" ] },
							{ "key" : 17, "value" : [ "Melodic Minor" ] },
							{ "key" : 18, "value" : [ "Lydian Augmented" ] },
							{ "key" : 19, "value" : [ "Lydian Dominant" ] },
							{ "key" : 20, "value" : [ "Super Locrian" ] },
							{ "key" : 21, "value" : [ "8-Tone Spanish" ] },
							{ "key" : 22, "value" : [ "Bhairav" ] },
							{ "key" : 23, "value" : [ "Hungarian Minor" ] },
							{ "key" : 24, "value" : [ "Hirajoshi" ] },
							{ "key" : 25, "value" : [ "In-Sen" ] },
							{ "key" : 26, "value" : [ "Iwato" ] },
							{ "key" : 27, "value" : [ "Kumoi" ] },
							{ "key" : 28, "value" : [ "Pelog Selisir" ] },
							{ "key" : 29, "value" : [ "Pelog Tembung" ] },
							{ "key" : 30, "value" : [ "Messiaen 3" ] },
							{ "key" : 31, "value" : [ "Messiaen 4" ] },
							{ "key" : 32, "value" : [ "Messiaen 5" ] },
							{ "key" : 33, "value" : [ "Messiaen 6" ] },
							{ "key" : 34, "value" : [ "Messiaen 7" ] },
							{ "key" : 52, "value" : [ "hexatonic" ] },
							{ "key" : 53, "value" : [ "hexatonic" ] },
							{ "key" : 54, "value" : [ "hexatonic" ] },
							{ "key" : 55, "value" : [ "hexatonic" ] }
						]
					},
					"id" : "obj-coll",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 380.0, 320.0, 120.0, 20.0 ],
					"saved_object_attributes" : {
						"embed" : 1,
						"precision" : 6
					},
					"text" : "coll scale_names"
				}
			},
			{
				"box" : {
					"id" : "obj-scalename",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 380.0, 360.0, 120.0, 20.0 ],
					"text" : "set scale_name $1"
				}
			},
			{
				"box" : {
					"id" : "obj-loadbang",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 230.0, 320.0, 60.0, 20.0 ],
					"text" : "loadbang"
				}
			},
			{
				"box" : {
					"id" : "obj-livepath",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 230.0, 360.0, 100.0, 20.0 ],
					"text" : "live.path live_set"
				}
			},
			{
				"box" : {
					"id" : "obj-liveobj",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 180.0, 480.0, 70.0, 20.0 ],
					"saved_object_attributes" : {
						"_persistence" : 0
					},
					"text" : "live.object"
				}
			}
		],
		"lines" : [
			{
				"patchline" : {
					"destination" : [ "obj-midiparse", 0 ],
					"source" : [ "obj-midiin", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-unpack", 0 ],
					"source" : [ "obj-midiparse", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-sel", 0 ],
					"source" : [ "obj-unpack", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-rootnum", 0 ],
					"source" : [ "obj-sel", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-minus12", 0 ],
					"source" : [ "obj-sel", 1 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-scalenum", 0 ],
					"source" : [ "obj-minus12", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-rootmsg", 0 ],
					"source" : [ "obj-rootnum", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-root-coll", 0 ],
					"source" : [ "obj-rootnum", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-liveobj", 0 ],
					"source" : [ "obj-rootmsg", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-root-to-jweb", 0 ],
					"source" : [ "obj-root-coll", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-jweb", 0 ],
					"source" : [ "obj-root-to-jweb", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-coll", 0 ],
					"source" : [ "obj-scalenum", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-scalename", 0 ],
					"source" : [ "obj-coll", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-scale-to-jweb", 0 ],
					"source" : [ "obj-coll", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-liveobj", 0 ],
					"source" : [ "obj-scalename", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-jweb", 0 ],
					"source" : [ "obj-scale-to-jweb", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-livepath", 0 ],
					"source" : [ "obj-loadbang", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-liveobj", 1 ],
					"source" : [ "obj-livepath", 1 ]
				}
			}
		],
		"dependency_cache" : [ ],
		"latency" : 0,
		"is_mpe" : 0,
		"external_mpe_tuning_enabled" : 0,
		"minimum_live_version" : "",
		"minimum_max_version" : "",
		"platform_compatibility" : 0,
		"project" : {
			"version" : 1,
			"creationdate" : 3590052786,
			"modificationdate" : 3590052786,
			"viewrect" : [ 0.0, 0.0, 300.0, 500.0 ],
			"autoorganize" : 1,
			"hideprojectwindow" : 1,
			"showdependencies" : 1,
			"autolocalize" : 0,
			"contents" : {
				"patchers" : { }
			},
			"layout" : { },
			"searchpath" : { },
			"detailsvisible" : 0,
			"amxdtype" : 1835887981,
			"readonly" : 0,
			"devpathtype" : 0,
			"devpath" : ".",
			"sortmode" : 0,
			"viewmode" : 0,
			"includepackages" : 0
		},
		"autosave" : 0,
		"saved_attribute_attributes" : {
			"default_plcolor" : {
				"expression" : ""
			}
		}
	}
}
