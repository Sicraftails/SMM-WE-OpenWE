switch current_weekday
{
    case 0:
		instance_create((camera_get_view_x(view_get_camera(0)) -32), (camera_get_view_y(view_get_camera(0)) + 128), obj_shell_intro)
        break
    case 1:
        instance_create((camera_get_view_x(view_get_camera(0)) -32), (camera_get_view_y(view_get_camera(0)) + 128), obj_shell_intro)
        break
    case 2:
        instance_create((camera_get_view_x(view_get_camera(0)) -32), (camera_get_view_y(view_get_camera(0)) + 128), obj_shell_intro)
        break
    case 3:
       /* audio_play_sound(snd_goomba_march, 0, false)
		with instance_create((camera_get_view_x(view_get_camera(0)) + 400), (camera_get_view_y(view_get_camera(0)) + 144), obj_goomba_intro)
			goomba = 1
		instance_create((camera_get_view_x(view_get_camera(0)) + 434), (camera_get_view_y(view_get_camera(0)) + 144), obj_goomba_intro)
        instance_create((camera_get_view_x(view_get_camera(0)) + 468), (camera_get_view_y(view_get_camera(0)) + 144), obj_goomba_intro)
        break*/
        instance_create((camera_get_view_x(view_get_camera(0)) + 194.5), (camera_get_view_y(view_get_camera(0)) - 20), obj_thwomp_intro)
        break
    case 4:
		instance_create((camera_get_view_x(view_get_camera(0)) -32), (camera_get_view_y(view_get_camera(0)) + 128), obj_shell_intro)
        break
    case 5:
	/*
        audio_play_sound(snd_goomba_march, 0, false)
		with instance_create((camera_get_view_x(view_get_camera(0)) + 400), (camera_get_view_y(view_get_camera(0)) + 144), obj_goomba_intro)
			goomba = 1
		instance_create((camera_get_view_x(view_get_camera(0)) + 434), (camera_get_view_y(view_get_camera(0)) + 144), obj_goomba_intro)
        instance_create((camera_get_view_x(view_get_camera(0)) + 468), (camera_get_view_y(view_get_camera(0)) + 144), obj_goomba_intro)
        break*/
        instance_create((camera_get_view_x(view_get_camera(0)) + 194.5), (camera_get_view_y(view_get_camera(0)) - 20), obj_thwomp_intro)
        break
    case 6:
        instance_create((camera_get_view_x(view_get_camera(0)) + 194.5), (camera_get_view_y(view_get_camera(0)) - 20), obj_thwomp_intro)
        break
}

