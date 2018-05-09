{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 6,
			"minor" : 0,
			"revision" : 7
		}
,
		"rect" : [ 116.0, 44.0, 944.0, 831.0 ],
		"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
		"bglocked" : 0,
		"openinpresentation" : 1,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"statusbarvisible" : 2,
		"toolbarvisible" : 0,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"enablehscroll" : 0,
		"enablevscroll" : 0,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"boxes" : [ 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 240.0, 645.0, 229.0, 20.0 ],
					"text" : "dac~ 1 2"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 660.0, 675.0, 69.0, 20.0 ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
					"text" : "thispatcher"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 0,
					"patching_rect" : [ 240.0, 675.0, 80.0, 20.0 ],
					"text" : "bgcolor 0 0 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "bpatcher",
					"name" : "granul8_inside.maxpat",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "signal", "signal", "" ],
					"patching_rect" : [ 240.0, 165.0, 439.0, 465.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 0.0, 943.0, 825.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-1", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "granul8_inside.maxpat",
				"bootpath" : "/Users/jocal/Documents/DOT/branches/v2_max5/synthesizers/granul8",
				"patcherrelativepath" : "",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "granul8_grainctrl.maxpat",
				"bootpath" : "/Users/jocal/Documents/DOT/branches/v2_max5/synthesizers/granul8",
				"patcherrelativepath" : "",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "dot.prependaddr.maxpat",
				"bootpath" : "/Users/jocal/Documents/DOT/branches/v2_max5/toolbox",
				"patcherrelativepath" : "../../toolbox",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "dot.oscexpand.maxpat",
				"bootpath" : "/Users/jocal/Documents/DOT/branches/v2_max5/toolbox",
				"patcherrelativepath" : "../../toolbox",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "granul8_grain.maxpat",
				"bootpath" : "/Users/jocal/Documents/DOT/branches/v2_max5/synthesizers/granul8",
				"patcherrelativepath" : "",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "dot.dampedenvelope.maxpat",
				"bootpath" : "/Users/jocal/Documents/DOT/branches/v2_max5/toolbox",
				"patcherrelativepath" : "../../toolbox",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "yafr2.maxpat",
				"bootpath" : "/Applications/Max6/examples/effects/reverb/lib",
				"patcherrelativepath" : "../../../../../../../../Applications/Max6/examples/effects/reverb/lib",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "dot.for.maxpat",
				"bootpath" : "/Users/jocal/Documents/DOT/branches/v2_max5/toolbox",
				"patcherrelativepath" : "../../toolbox",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "dot.state.maxpat",
				"bootpath" : "/Users/jocal/Documents/DOT/branches/v2_max5/toolbox",
				"patcherrelativepath" : "../../toolbox",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "mapper.mxo",
				"type" : "iLaX"
			}
 ]
	}

}
