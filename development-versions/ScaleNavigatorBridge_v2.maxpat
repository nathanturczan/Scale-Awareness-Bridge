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
		"rect" : [ 100.0, 100.0, 500.0, 400.0 ],
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
					"patching_rect" : [ 120.0, 20.0, 30.0, 30.0 ]
				}
			},
			{
				"box" : {
					"id" : "obj-title",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 20.0, 20.0, 90.0, 20.0 ],
					"text" : "Scale Bridge",
					"fontsize" : 12.0,
					"fontface" : 1
				}
			},
			{
				"box" : {
					"id" : "obj-print",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 300.0, 70.0, 61.0, 22.0 ],
					"text" : "print RAW"
				}
			},
			{
				"box" : {
					"id" : "obj-route",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 50.0, 70.0, 100.0, 22.0 ],
					"text" : "route 144 145"
				}
			},
			{
				"box" : {
					"id" : "obj-unpack1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 50.0, 110.0, 60.0, 22.0 ],
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
					"patching_rect" : [ 200.0, 110.0, 60.0, 22.0 ],
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
					"patching_rect" : [ 50.0, 150.0, 50.0, 22.0 ]
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
					"patching_rect" : [ 200.0, 150.0, 50.0, 22.0 ]
				}
			},
			{
				"box" : {
					"id" : "obj-msg1",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 50.0, 190.0, 100.0, 22.0 ],
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
					"patching_rect" : [ 50.0, 230.0, 100.0, 22.0 ],
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
					"patching_rect" : [ 50.0, 270.0, 70.0, 22.0 ],
					"text" : "live.object"
				}
			},
			{
				"box" : {
					"id" : "obj-comment1",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 50.0, 300.0, 100.0, 20.0 ],
					"text" : "Ch1 = Root 0-11"
				}
			},
			{
				"box" : {
					"id" : "obj-comment2",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 200.0, 190.0, 100.0, 20.0 ],
					"text" : "Ch2 = Scale"
				}
			}
		],
		"lines" : [
			{
				"patchline" : {
					"destination" : [ "obj-route", 0 ],
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
					"source" : [ "obj-route", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-unpack2", 0 ],
					"source" : [ "obj-route", 1 ]
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
