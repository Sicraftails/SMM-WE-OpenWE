if (fallow == obj_lighting)
{
    x = (camera_get_view_x(view_get_camera(0)) + (camera_get_view_width(view_get_camera(0)) / 2))
    y = (camera_get_view_y(view_get_camera(0)) + (camera_get_view_height(view_get_camera(0)) / 2))
}
if (listo == 1)
    scale += 6
if (scale > 300)
{
    if instance_exists(obj_mario)
    {
        with (obj_mario)
            disablecontrols = 0
    }
    instance_destroy()
	exit;	// Stop executing the event if i've been destroyed
}

