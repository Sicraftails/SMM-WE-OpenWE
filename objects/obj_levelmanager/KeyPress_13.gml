if (canpause == 1 && (!instance_exists(obj_player_goal_parent)))
{
    if (room != rm_editor && room != rm_title)
    {
		if global.dsm = 1{
		if !instance_exists(obj_deadmario)
        instance_create((camera_get_view_x(view_get_camera(0)) + 239), camera_get_view_y(view_get_camera(0)), obj_menu_pausa)
		}
		else if global.dsm = 0
			instance_create((camera_get_view_x(view_get_camera(0)) + 239), camera_get_view_y(view_get_camera(0)), obj_menu_pausa)
        if (obj_persistent.modo_android == 1 && global.controles_tactiles == 1)
        {
            with (obj_persistent)
            {
                event_user(4)
                event_user(5)
            }
        }
    }
}

