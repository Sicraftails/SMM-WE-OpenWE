if (obj_levelmanager.editor == 1)
{
    if (image_index == 0)
    {
        if (obj_panel_expand.value == 10 || obj_panel_expand.value == 4 || obj_panel_expand.value == 3)
        {
            audio_stop_sound(snd_palette_page2)
            audio_play_sound(snd_palette_page2, 0, false)
        }
        else if (obj_panel_expand.value != 1)
        {
            audio_stop_sound(snd_page_enemies2)
            audio_play_sound(snd_page_enemies2, 0, false)
        }
		
		
        if (obj_panel_expand.value > 1)
        {	
			obj_panel_expand.value--
			obj_header.page--
			with obj_header { alarm[0] = 1}
			with obj_btn_header_parent { alarm[0] = 1}
            with (obj_panel_circle)
                instance_destroy()
            with (instance_create((camera_get_view_x(view_get_camera(0)) + 192), (camera_get_view_y(view_get_camera(0)) + 125), obj_panel_circle))
            {
                event_user((obj_panel_expand.value - 1))
                ready = 1
            }
        }
    }
    else if (image_index == 1)
    {
        if (obj_panel_expand.value == 2 || obj_panel_expand.value == 3 || obj_panel_expand.value == 9)
        {
            audio_stop_sound(snd_palette_page2)
            audio_play_sound(snd_palette_page2, 0, false)
        }
        else if (obj_panel_expand.value != 14)
        {
            audio_stop_sound(snd_page_enemies)
            audio_play_sound(snd_page_enemies, 0, false)
        }
		
		
        if (obj_panel_expand.value < 14)
        {
            obj_panel_expand.value++
			obj_header.page++
			with obj_header { alarm[0] = 1}
			with obj_btn_header_parent { alarm[0] = 1}
            with (obj_panel_circle)
                instance_destroy()
            with (instance_create((camera_get_view_x(view_get_camera(0)) + 192), (camera_get_view_y(view_get_camera(0)) + 125), obj_panel_circle))
            {
                event_user((obj_panel_expand.value - 1))
                ready = 1
            }
        }
    }
}


//if (obj_levelmanager.editor == 1)
//{
//    if (image_index == 0)
//    {
//        if (obj_panel_expand.value == 10 || obj_panel_expand.value == 4 || obj_panel_expand.value == 3)
//        {
//            audio_stop_sound(snd_palette_page2)
//            audio_play_sound(snd_palette_page2, 0, false)
//        }
//        else if (obj_panel_expand.value != 1)
//        {
//            audio_stop_sound(snd_page_enemies2)
//            audio_play_sound(snd_page_enemies2, 0, false)
//        }
		
		
//        if (obj_panel_expand.value > 1)
//        {		
//			obj_panel_expand.value--
//			obj_header.page--
//            with (obj_panel_circle)
//                instance_destroy()
//            with (instance_create((camera_get_view_x(view_get_camera(0)) + 192), (camera_get_view_y(view_get_camera(0)) + 125), obj_panel_circle))
//            {
//                event_user((obj_panel_expand.value - 1))
//                ready = 1
//            }
//        }
//    }
//    else if (image_index == 1)
//    {
//        if (obj_panel_expand.value == 2 || obj_panel_expand.value == 3 || obj_panel_expand.value == 9)
//        {
//            audio_stop_sound(snd_palette_page2)
//            audio_play_sound(snd_palette_page2, 0, false)
//        }
//        else if (obj_panel_expand.value != 14)
//        {
//            audio_stop_sound(snd_page_enemies)
//            audio_play_sound(snd_page_enemies, 0, false)
//        }
		
		
//        if (obj_panel_expand.value < 14)
//        {
//            obj_panel_expand.value++
//			obj_header.page++
//            with (obj_panel_circle)
//                instance_destroy()
//            with (instance_create((camera_get_view_x(view_get_camera(0)) + 192), (camera_get_view_y(view_get_camera(0)) + 125), obj_panel_circle))
//            {
//                event_user((obj_panel_expand.value - 1))
//                ready = 1
//            }
//        }
//    }
//}