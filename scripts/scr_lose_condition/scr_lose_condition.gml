function scr_lose_condition() {
	if (global.condiciones == 1 && global.condiciones_count == 0)
	    {
	        if (global.condiciones_clear == 1)
	        {
	            global.condiciones_clear = 0
	            with (obj_alert_condicion)
	                instance_destroy()
	            with (instance_create((camera_get_view_x(view_get_camera(0)) + 54), (camera_get_view_y(view_get_camera(0)) + 98), obj_alert_condicion))
	                lose = 1
	        }
	    }
	    exit



}
