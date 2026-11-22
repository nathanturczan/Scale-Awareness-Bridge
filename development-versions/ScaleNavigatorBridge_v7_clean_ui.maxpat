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
		"rect" : [ 100.0, 100.0, 800.0, 600.0 ],
		"openinpresentation" : 1,
		"default_fontsize" : 10.0,
		"default_fontname" : "Arial",
		"gridsize" : [ 8.0, 8.0 ],
		"boxes" : [
			{
				"box" : {
					"id" : "obj-panel-bg",
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 10.0, 10.0, 180.0, 45.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 0.0, 180.0, 45.0 ],
					"bgcolor" : [ 0.15, 0.15, 0.15, 1.0 ],
					"bordercolor" : [ 0.3, 0.3, 0.3, 0.0 ],
					"rounded" : 0
				}
			},
			{
				"box" : {
					"id" : "obj-header",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 15.0, 150.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 6.0, 5.0, 168.0, 18.0 ],
					"text" : "Scale Navigator Bridge",
					"fontface" : 1,
					"fontsize" : 11.0,
					"textcolor" : [ 0.85, 0.85, 0.85, 1.0 ],
					"textjustification" : 0
				}
			},
			{
				"box" : {
					"id" : "obj-root-display",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 38.0, 30.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 6.0, 24.0, 28.0, 18.0 ],
					"text" : "C",
					"fontface" : 1,
					"fontsize" : 12.0,
					"textcolor" : [ 1.0, 0.75, 0.3, 1.0 ]
				}
			},
			{
				"box" : {
					"id" : "obj-scale-display",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 50.0, 38.0, 120.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 34.0, 24.0, 140.0, 18.0 ],
					"text" : "Major",
					"fontface" : 0,
					"fontsize" : 12.0,
					"textcolor" : [ 0.6, 0.8, 1.0, 1.0 ]
				}
			},
			{
				"box" : {
					"id" : "obj-midiin",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 250.0, 50.0, 45.0, 20.0 ],
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
					"patching_rect" : [ 250.0, 90.0, 97.0, 20.0 ],
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
					"patching_rect" : [ 250.0, 130.0, 63.0, 20.0 ],
					"text" : "unpack i i"
				}
			},
			{
				"box" : {
					"id" : "obj-split",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 250.0, 170.0, 65.0, 20.0 ],
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
					"patching_rect" : [ 450.0, 210.0, 32.0, 20.0 ],
					"text" : "- 12"
				}
			},
			{
				"box" : {
					"id" : "obj-root-coll",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 250.0, 250.0, 95.0, 20.0 ],
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
					"id" : "obj-scale-coll",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 450.0, 250.0, 100.0, 20.0 ],
					"saved_object_attributes" : {
						"embed" : 1,
						"precision" : 6
					},
					"text" : "coll scale_names",
					"coll_data" : {
						"count" : 35,
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
							{ "key" : 34, "value" : [ "Messiaen 7" ] }
						]
					}
				}
			},
			{
				"box" : {
					"id" : "obj-root-set",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 250.0, 290.0, 52.0, 20.0 ],
					"text" : "set $1"
				}
			},
			{
				"box" : {
					"id" : "obj-scale-set",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 450.0, 290.0, 52.0, 20.0 ],
					"text" : "set $1"
				}
			},
			{
				"box" : {
					"id" : "obj-root-msg",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 250.0, 210.0, 100.0, 20.0 ],
					"text" : "set root_note $1"
				}
			},
			{
				"box" : {
					"id" : "obj-scale-msg",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 450.0, 330.0, 110.0, 20.0 ],
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
					"patching_rect" : [ 350.0, 370.0, 58.0, 20.0 ],
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
					"patching_rect" : [ 350.0, 410.0, 100.0, 20.0 ],
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
					"patching_rect" : [ 350.0, 490.0, 65.0, 20.0 ],
					"text" : "live.object"
				}
			},
			{
				"box" : {
					"id" : "obj-t-root",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 250.0, 170.0, 29.5, 20.0 ],
					"text" : "t i i"
				}
			},
			{
				"box" : {
					"id" : "obj-t-scale",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 450.0, 170.0, 29.5, 20.0 ],
					"text" : "t i i"
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
					"destination" : [ "obj-split", 0 ],
					"source" : [ "obj-unpack", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-t-root", 0 ],
					"source" : [ "obj-split", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-minus12", 0 ],
					"source" : [ "obj-split", 1 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-t-scale", 0 ],
					"source" : [ "obj-minus12", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-root-msg", 0 ],
					"source" : [ "obj-t-root", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-root-coll", 0 ],
					"source" : [ "obj-t-root", 1 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-scale-coll", 0 ],
					"source" : [ "obj-t-scale", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-scale-msg", 0 ],
					"source" : [ "obj-t-scale", 1 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-root-set", 0 ],
					"source" : [ "obj-root-coll", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-root-display", 0 ],
					"source" : [ "obj-root-set", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-scale-set", 0 ],
					"source" : [ "obj-scale-coll", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-scale-display", 0 ],
					"source" : [ "obj-scale-set", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-liveobj", 0 ],
					"source" : [ "obj-root-msg", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-liveobj", 0 ],
					"source" : [ "obj-scale-msg", 0 ]
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
