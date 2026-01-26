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
		"rect" : [ 100.0, 100.0, 800.0, 500.0 ],
		"default_fontsize" : 12.0,
		"default_fontname" : "Arial",
		"gridsize" : [ 15.0, 15.0 ],
		"boxes" : [
			{
				"box" : {
					"comment" : "MIDI In",
					"id" : "obj-inlet",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 50.0, 30.0, 30.0, 30.0 ]
				}
			},
			{
				"box" : {
					"id" : "obj-parse",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 50.0, 80.0, 100.0, 22.0 ],
					"text" : "midiparse"
				}
			},
			{
				"box" : {
					"id" : "obj-print",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 400.0, 80.0, 80.0, 22.0 ],
					"text" : "print MIDI_IN"
				}
			},
			{
				"box" : {
					"id" : "obj-route1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 50.0, 130.0, 85.0, 22.0 ],
					"text" : "route 0"
				}
			},
			{
				"box" : {
					"id" : "obj-route2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 220.0, 130.0, 85.0, 22.0 ],
					"text" : "route 1"
				}
			},
			{
				"box" : {
					"id" : "obj-unpack1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 50.0, 170.0, 60.0, 22.0 ],
					"text" : "unpack i i"
				}
			},
			{
				"box" : {
					"id" : "obj-unpack2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 220.0, 170.0, 60.0, 22.0 ],
					"text" : "unpack i i"
				}
			},
			{
				"box" : {
					"id" : "obj-num1",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"patching_rect" : [ 50.0, 210.0, 50.0, 22.0 ]
				}
			},
			{
				"box" : {
					"id" : "obj-num2",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"patching_rect" : [ 220.0, 210.0, 50.0, 22.0 ]
				}
			},
			{
				"box" : {
					"id" : "obj-path1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 50.0, 250.0, 100.0, 22.0 ],
					"text" : "live.path live_set"
				}
			},
			{
				"box" : {
					"id" : "obj-msg1",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 50.0, 290.0, 110.0, 22.0 ],
					"text" : "set root_note $1"
				}
			},
			{
				"box" : {
					"id" : "obj-obj1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 50.0, 330.0, 75.0, 22.0 ],
					"text" : "live.object"
				}
			},
			{
				"box" : {
					"id" : "obj-comment1",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 50.0, 360.0, 150.0, 20.0 ],
					"text" : "Ch1 Note = Root (0-11)"
				}
			},
			{
				"box" : {
					"id" : "obj-comment2",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 220.0, 360.0, 150.0, 20.0 ],
					"text" : "Ch2 Note = Scale Index"
				}
			},
			{
				"box" : {
					"id" : "obj-title",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 50.0, 5.0, 200.0, 20.0 ],
					"text" : "Scale Navigator Bridge",
					"fontsize" : 14.0,
					"fontface" : 1
				}
			}
		],
		"lines" : [
			{
				"patchline" : {
					"destination" : [ "obj-parse", 0 ],
					"source" : [ "obj-inlet", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-route1", 0 ],
					"source" : [ "obj-parse", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-route2", 0 ],
					"source" : [ "obj-parse", 1 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-print", 0 ],
					"source" : [ "obj-inlet", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-unpack1", 0 ],
					"source" : [ "obj-route1", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-unpack2", 0 ],
					"source" : [ "obj-route2", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-num1", 0 ],
					"source" : [ "obj-unpack1", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-num2", 0 ],
					"source" : [ "obj-unpack2", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-path1", 0 ],
					"source" : [ "obj-num1", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-msg1", 0 ],
					"source" : [ "obj-path1", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-obj1", 0 ],
					"source" : [ "obj-msg1", 0 ]
				}
			}
		]
	}
}
