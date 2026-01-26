{
	"patcher" : {
		"fileversion" : 1,
		"appversion" : {
			"major" : 8,
			"minor" : 5,
			"revision" : 0,
			"architecture" : "x64",
			"modernui" : 1
		},
		"classnamespace" : "box",
		"rect" : [ 100.0, 100.0, 600.0, 500.0 ],
		"default_fontsize" : 12.0,
		"default_fontname" : "Arial",
		"gridsize" : [ 15.0, 15.0 ],
		"boxes" : [
			{
				"box" : {
					"id" : "obj-midiin",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 150.0, 30.0, 45.0, 22.0 ],
					"text" : "midiin"
				}
			},
			{
				"box" : {
					"id" : "obj-title",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 300.0, 30.0, 180.0, 20.0 ],
					"text" : "Scale Navigator Bridge v6",
					"fontsize" : 14.0,
					"fontface" : 1
				}
			},
			{
				"box" : {
					"id" : "obj-midiparse",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 8,
					"outlettype" : [ "", "", "", "", "", "", "", "" ],
					"patching_rect" : [ 150.0, 70.0, 100.0, 22.0 ],
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
					"patching_rect" : [ 150.0, 110.0, 60.0, 22.0 ],
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
					"patching_rect" : [ 150.0, 150.0, 60.0, 22.0 ],
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
					"patching_rect" : [ 350.0, 190.0, 40.0, 22.0 ],
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
					"patching_rect" : [ 50.0, 190.0, 50.0, 22.0 ]
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
					"patching_rect" : [ 350.0, 230.0, 50.0, 22.0 ]
				}
			},
			{
				"box" : {
					"id" : "obj-rootmsg",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 50.0, 230.0, 100.0, 22.0 ],
					"text" : "set root_note $1"
				}
			},
			{
				"box" : {
					"id" : "obj-coll",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 350.0, 270.0, 120.0, 22.0 ],
					"saved_object_attributes" : {
						"embed" : 1,
						"precision" : 6
					},
					"text" : "coll scale_names",
					"coll_data" : {
						"count" : 35,
						"data" : [
							{
								"key" : 0,
								"value" : [ "Major" ]
							},
							{
								"key" : 1,
								"value" : [ "Minor" ]
							},
							{
								"key" : 2,
								"value" : [ "Dorian" ]
							},
							{
								"key" : 3,
								"value" : [ "Mixolydian" ]
							},
							{
								"key" : 4,
								"value" : [ "Lydian" ]
							},
							{
								"key" : 5,
								"value" : [ "Phrygian" ]
							},
							{
								"key" : 6,
								"value" : [ "Locrian" ]
							},
							{
								"key" : 7,
								"value" : [ "Whole Tone" ]
							},
							{
								"key" : 8,
								"value" : [ "Half-whole Dim." ]
							},
							{
								"key" : 9,
								"value" : [ "Whole-half Dim." ]
							},
							{
								"key" : 10,
								"value" : [ "Minor Blues" ]
							},
							{
								"key" : 11,
								"value" : [ "Minor Pentatonic" ]
							},
							{
								"key" : 12,
								"value" : [ "Major Pentatonic" ]
							},
							{
								"key" : 13,
								"value" : [ "Harmonic Minor" ]
							},
							{
								"key" : 14,
								"value" : [ "Harmonic Major" ]
							},
							{
								"key" : 15,
								"value" : [ "Dorian #4" ]
							},
							{
								"key" : 16,
								"value" : [ "Phrygian Dominant" ]
							},
							{
								"key" : 17,
								"value" : [ "Melodic Minor" ]
							},
							{
								"key" : 18,
								"value" : [ "Lydian Augmented" ]
							},
							{
								"key" : 19,
								"value" : [ "Lydian Dominant" ]
							},
							{
								"key" : 20,
								"value" : [ "Super Locrian" ]
							},
							{
								"key" : 21,
								"value" : [ "8-Tone Spanish" ]
							},
							{
								"key" : 22,
								"value" : [ "Bhairav" ]
							},
							{
								"key" : 23,
								"value" : [ "Hungarian Minor" ]
							},
							{
								"key" : 24,
								"value" : [ "Hirajoshi" ]
							},
							{
								"key" : 25,
								"value" : [ "In-Sen" ]
							},
							{
								"key" : 26,
								"value" : [ "Iwato" ]
							},
							{
								"key" : 27,
								"value" : [ "Kumoi" ]
							},
							{
								"key" : 28,
								"value" : [ "Pelog Selisir" ]
							},
							{
								"key" : 29,
								"value" : [ "Pelog Tembung" ]
							},
							{
								"key" : 30,
								"value" : [ "Messiaen 3" ]
							},
							{
								"key" : 31,
								"value" : [ "Messiaen 4" ]
							},
							{
								"key" : 32,
								"value" : [ "Messiaen 5" ]
							},
							{
								"key" : 33,
								"value" : [ "Messiaen 6" ]
							},
							{
								"key" : 34,
								"value" : [ "Messiaen 7" ]
							}
						]
					}
				}
			},
			{
				"box" : {
					"id" : "obj-scalename",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 350.0, 310.0, 120.0, 22.0 ],
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
					"patching_rect" : [ 200.0, 270.0, 60.0, 22.0 ],
					"text" : "loadbang"
				}
			},
			{
				"box" : {
					"id" : "obj-livepath",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 200.0, 310.0, 100.0, 22.0 ],
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
					"patching_rect" : [ 150.0, 390.0, 70.0, 22.0 ],
					"text" : "live.object"
				}
			},
			{
				"box" : {
					"id" : "obj-rootlabel",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 105.0, 190.0, 80.0, 20.0 ],
					"text" : "Root (0-11)"
				}
			},
			{
				"box" : {
					"id" : "obj-scalelabel",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 405.0, 230.0, 100.0, 20.0 ],
					"text" : "Scale Index"
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
					"destination" : [ "obj-liveobj", 0 ],
					"source" : [ "obj-scalename", 0 ]
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
					"destination" : [ "obj-liveobj", 0 ],
					"source" : [ "obj-rootmsg", 0 ]
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
		]
	}
}
