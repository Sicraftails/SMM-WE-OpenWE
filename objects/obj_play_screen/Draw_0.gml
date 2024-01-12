if (object_index == obj_play_screen)
{
    draw_sprite_ext(spr_creator_top, 0, (camera_get_view_x(view_get_camera(0)) + 197), (camera_get_view_y(view_get_camera(0)) + 130), image_xscale, image_yscale, rot2, c_white, 1)
    draw_sprite_ext(sprite_index, global.idioma, (camera_get_view_x(view_get_camera(0)) + 197), (camera_get_view_y(view_get_camera(0)) + 130), image_xscale, image_yscale, rot1, c_white, 1)
	if (effect_hover == 1){
		anim += 0.3
		scr_anim_hover((camera_get_view_x(view_get_camera(0)) + 197), (camera_get_view_y(view_get_camera(0)) + 130), anim, 2)
	}
}
else
{
    draw_sprite_ext(spr_creator_top, 0, (camera_get_view_x(view_get_camera(0)) + 135), (camera_get_view_y(view_get_camera(0)) + 130), image_xscale, image_yscale, rot2, c_white, 1)
    draw_sprite_ext(sprite_index, global.idioma, (camera_get_view_x(view_get_camera(0)) + 135), (camera_get_view_y(view_get_camera(0)) + 130), image_xscale, image_yscale, rot1, c_white, 1)
	if (effect_hover == 1){
		anim += 0.3
		scr_anim_hover((camera_get_view_x(view_get_camera(0)) + 135), (camera_get_view_y(view_get_camera(0)) + 130), anim, 2)
	}
}

