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
		"rect" : [ 100.0, 100.0, 600.0, 450.0 ],
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
					"patching_rect" : [ 150.0, 20.0, 30.0, 30.0 ]
				}
			},
			{
				"box" : {
					"id" : "obj-print",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 350.0, 70.0, 80.0, 22.0 ],
					"text" : "print MIDI_IN"
				}
			},
			{
				"box" : {
					"id" : "obj-title",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 20.0, 100.0, 20.0 ],
					"text" : "Scale Nav Bridge",
					"fontsize" : 12.0,
					"fontface" : 1
				}
			},
			{
				"box" : {
					"id" : "obj-sel1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 50.0, 100.0, 135.0, 22.0 ],
					"text" : "midiselect @type 1 @channel 1"
				}
			},
			{
				"box" : {
					"id" : "obj-sel2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 250.0, 100.0, 135.0, 22.0 ],
					"text" : "midiselect @type 1 @channel 2"
				}
			},
			{
				"box" : {
					"id" : "obj-unpack1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 50.0, 140.0, 60.0, 22.0 ],
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
					"patching_rect" : [ 250.0, 140.0, 60.0, 22.0 ],
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
					"parameter_enable" : 0,
					"patching_rect" : [ 50.0, 180.0, 50.0, 22.0 ]
				}
			},
			{
				"box" : {
					"id" : "obj-num2",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 250.0, 180.0, 50.0, 22.0 ]
				}
			},
			{
				"box" : {
					"id" : "obj-msg1",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 50.0, 220.0, 100.0, 22.0 ],
					"text" : "set root_note $1"
				}
			},
			{
				"box" : {
					"id" : "obj-path1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 50.0, 260.0, 100.0, 22.0 ],
					"text" : "live.path live_set"
				}
			},
			{
				"box" : {
					"id" : "obj-obj1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 50.0, 300.0, 75.0, 22.0 ],
					"text" : "live.object"
				}
			},
			{
				"box" : {
					"id" : "obj-comment1",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 50.0, 330.0, 120.0, 20.0 ],
					"text" : "Ch1 = Root (0-11)"
				}
			},
			{
				"box" : {
					"id" : "obj-comment2",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 250.0, 220.0, 130.0, 20.0 ],
					"text" : "Ch2 = Scale (unused)"
				}
			}
		],
		"lines" : [
			{
				"patchline" : {
					"destination" : [ "obj-sel1", 0 ],
					"order" : 2,
					"source" : [ "obj-inlet", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-sel2", 0 ],
					"order" : 1,
					"source" : [ "obj-inlet", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-print", 0 ],
					"order" : 0,
					"source" : [ "obj-inlet", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-unpack1", 0 ],
					"source" : [ "obj-sel1", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-unpack2", 0 ],
					"source" : [ "obj-sel2", 0 ]
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
					"destination" : [ "obj-msg1", 0 ],
					"source" : [ "obj-num1", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-path1", 0 ],
					"source" : [ "obj-msg1", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-obj1", 0 ],
					"source" : [ "obj-path1", 0 ]
				}
			}
		]
	}
}
