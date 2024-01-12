function scr_viewculling(argument0, argument1, argument2, argument3) {
	var cull_width, cull_height;
	cull_width = argument0
	cull_height = argument1
	if (global.count_cull == argument2)
	{
	    instance_deactivate_region((global.cull_previous_x - (cull_width / 2)), (global.cull_previous_y - (cull_height / 2)), cull_width, cull_height, true, false)
	    global.cull_previous_x = x
	    global.cull_previous_y = y
	    instance_activate_region((x - (cull_width / 2)), (y - (cull_height / 2)), cull_width, cull_height, true)
	    if (argument3 == 1)
	        show_debug_message(("Active instances : " + string(instance_count)))
	    global.count_cull = 1
	}
	else
	    global.count_cull += 1



}
