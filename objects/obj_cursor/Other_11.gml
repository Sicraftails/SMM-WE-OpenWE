if (instance_exists(obj_levelmanager) && global.resource_create == 1 && mouse_y < (room_height - 2) && mouse_y > 0 && mouse_x > 0 && mouse_x < (room_width - 2) && (!instance_exists(obj_edit_menu)))
{
    audio_stop_sound(snd_mario_add)
    audio_play_sound(snd_mario_add, 0, false)
    if (global.select_resource == obj_ground)
    {
        with (instance_create((floor((mouse_x / 16)) * 16), (floor((mouse_y / 16)) * 16), obj_ground))
        {
            instance_create(x, y, obj_tile_trigger)
            event_user(8)
        }
    } 
	else if (global.select_resource == obj_slopes)
    {
        with (instance_create((floor((mouse_x / 16)) * 16), (floor((mouse_y / 16)) * 16), obj_slopes))
        {
            instance_create(x, y, obj_tile_trigger)
            event_user(8)
        }
    }
    else
    {
        with (instance_create((floor((mouse_x / 16)) * 16), (floor((mouse_y / 16)) * 16), global.select_resource))
            expand3 = 1
    }
}