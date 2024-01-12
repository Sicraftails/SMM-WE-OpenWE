if (room == rm_editor 
and instance_exists(obj_levelmanager) 
and obj_levelmanager.editor == 1 
and instance_exists(obj_editormanager) 
and scr_insideview() and obj_editormanager.zoom == 0 
and (obj_editormanager.expand_open == 0 
or obj_levelmanager.editor_sonidos == 1))
{
    if ((!(place_meeting(obj_creation_preview.x, obj_creation_preview.y, obj_parent_layout))) 
	and (!(collision_rectangle((floor((mouse_x / 16)) * 16), (floor((mouse_y / 16)) * 16), ((floor((mouse_x / 16)) * 16) + 15), ((floor((mouse_y / 16)) * 16) + 15), obj_ground2, 1, 1))) 
	and (!(place_meeting(obj_creation_preview.x, obj_creation_preview.y, obj_ground2))) 
	and (!(collision_rectangle((floor((mouse_x / 16)) * 16), (floor((mouse_y / 16)) * 16), ((floor((mouse_x / 16)) * 16) + 15), ((floor((mouse_y / 16)) * 16) + 15), obj_ground3, 1, 1))) 
	and (!(place_meeting(obj_creation_preview.x, obj_creation_preview.y, obj_ground3)))) {
        if (global.cursor == 0 
		and global.editor_activity == 1 
		and global.select_resource != obj_resource_empty 
		and (((!(collision_rectangle((floor((mouse_x / 16)) * 16), (floor((mouse_y / 16)) * 16), ((floor((mouse_x / 16)) * 16) + 15), ((floor((mouse_y / 16)) * 16) + 15), obj_parent_resource, 1, 1))) 
		and (!(place_meeting(obj_creation_preview.x, obj_creation_preview.y, obj_parent_resource)))) or (place_meeting(obj_creation_preview.x, obj_creation_preview.y, obj_parent_sounds) 
		and obj_levelmanager.editor_sonidos == 0)) 
		and (!(place_meeting(x, y, obj_arrow_lock))) and obj_creation_preview.place == 0 
		and (obj_cursor.dont_move == 0 or obj_cursor.dont_move == 2) 
		and global.select_resource != obj_ground 
		and global.select_resource != obj_slopes
		and global.select_resource != obj_block_res 
		and global.select_resource != obj_rock_res 
		and global.select_resource != obj_ice_res 
		and global.select_resource != obj_coin_res
		and global.select_resource != obj_onoffplatform_res 
		and global.select_resource != obj_onoffplatform_blue_res 
		and global.select_resource != obj_pblock_res 
		and global.select_resource != obj_pblock2_res 
		and global.select_resource != obj_qblock_res 
		and global.select_resource != obj_block_hidden_res 
		and global.select_resource != obj_pinchos_res) {
            global.resource_create = 1
            event_user(1)
        }
        else if (obj_levelmanager.editor_sonidos == 1) {
            if (obj_persistent.modo_android == 1 and move_view == 0 
			and global.select_resource == obj_resource_empty 
			and ((!(collision_rectangle((floor((mouse_x / 16)) * 16), (floor((mouse_y / 16)) * 16), ((floor((mouse_x / 16)) * 16) + 15), ((floor((mouse_y / 16)) * 16) + 15), obj_parent_resource, 1, 1))) 
			or collision_rectangle((floor((mouse_x / 16)) * 16), (floor((mouse_y / 16)) * 16), ((floor((mouse_x / 16)) * 16) + 15), ((floor((mouse_y / 16)) * 16) + 15), obj_ground, 1, 1)) 
			and ((!(place_meeting(obj_creation_preview.x, obj_creation_preview.y, obj_parent_resource))) or place_meeting(obj_creation_preview.x, obj_creation_preview.y, obj_ground)) 
			and (!(collision_rectangle((floor((mouse_x / 16)) * 16), (floor((mouse_y / 16)) * 16), ((floor((mouse_x / 16)) * 16) + 15), ((floor((mouse_y / 16)) * 16) + 15), obj_mario_editor, 1, 1))) 
			and (!(place_meeting(obj_creation_preview.x, obj_creation_preview.y, obj_mario_editor))) and (!(place_meeting(obj_creation_preview.x, obj_creation_preview.y, obj_expand_panels))) 
			and (!(place_meeting(obj_creation_preview.x, obj_creation_preview.y, obj_expand_panels_left))) and (!(place_meeting(obj_creation_preview.x, obj_creation_preview.y, obj_expand_paneles_top))) 
			and (!instance_exists(obj_apariencia)) and (!instance_exists(obj_bg_selection)) and (!instance_exists(obj_time)) and (!instance_exists(obj_autoavance)) and (!instance_exists(obj_condiciones)) 
			and (!instance_exists(obj_edit_menu)) and (!instance_exists(obj_panel_save_load)) and (!instance_exists(obj_alert_load)) and (!instance_exists(obj_window_alert)) and (!instance_exists(obj_settings_panel)) 
			and move_tuberia == 0 and global.cursor == 0)
                move_view = 1
        }
    }
}
if instance_exists(obj_ventana)
{
    with (obj_ventana)
    {
        if (can_anim == 0)
            can_anim2 = 1
    }
}
if instance_exists(obj_ventana_mario)
{
    with (obj_ventana_mario)
    {
        if (can_anim == 0)
            can_anim2 = 1
    }
}
