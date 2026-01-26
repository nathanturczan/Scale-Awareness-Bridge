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
		"rect" : [ 100.0, 100.0, 500.0, 420.0 ],
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
					"patching_rect" : [ 100.0, 30.0, 45.0, 22.0 ],
					"text" : "midiin"
				}
			},
			{
				"box" : {
					"id" : "obj-title",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 250.0, 30.0, 150.0, 20.0 ],
					"text" : "Scale Navigator Bridge",
					"fontsize" : 12.0,
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
					"patching_rect" : [ 100.0, 70.0, 100.0, 22.0 ],
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
					"patching_rect" : [ 100.0, 110.0, 60.0, 22.0 ],
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
					"patching_rect" : [ 100.0, 150.0, 60.0, 22.0 ],
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
					"patching_rect" : [ 280.0, 190.0, 40.0, 22.0 ],
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
					"patching_rect" : [ 280.0, 230.0, 50.0, 22.0 ]
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
					"id" : "obj-rootpath",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 50.0, 270.0, 100.0, 22.0 ],
					"text" : "live.path live_set"
				}
			},
			{
				"box" : {
					"id" : "obj-rootobj",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 50.0, 310.0, 70.0, 22.0 ],
					"text" : "live.object"
				}
			},
			{
				"box" : {
					"id" : "obj-loadbang",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 170.0, 230.0, 60.0, 22.0 ],
					"text" : "loadbang"
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
					"patching_rect" : [ 335.0, 230.0, 100.0, 20.0 ],
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
					"destination" : [ "obj-rootmsg", 0 ],
					"source" : [ "obj-rootnum", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-rootobj", 0 ],
					"source" : [ "obj-rootmsg", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-rootpath", 0 ],
					"source" : [ "obj-loadbang", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-rootobj", 1 ],
					"source" : [ "obj-rootpath", 1 ]
				}
			}
		]
	}
}
