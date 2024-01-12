if (room == rm_editor 
&& scr_insideview() 
&& instance_exists(obj_levelmanager) 
&& obj_levelmanager.editor == 1 
&& obj_editormanager.expand_open == 0 
&& instance_exists(obj_editormanager) 
&& obj_editormanager.zoom == 0)
{
    if ((!(place_meeting(obj_creation_preview.x, obj_creation_preview.y, obj_parent_layout))) 
	&& (!(collision_rectangle((floor((mouse_x / 16)) * 16), (floor((mouse_y / 16)) * 16), ((floor((mouse_x / 16)) * 16) + 15), ((floor((mouse_y / 16)) * 16) + 15), obj_groundparent, 1, 1))) 
	&& (!(place_meeting(obj_creation_preview.x, obj_creation_preview.y, obj_groundparent))))
    {
        if (global.cursor == 0 
		&& global.editor_activity == 1 
		&& global.select_resource != obj_resource_empty 
		&& (((!(collision_rectangle((floor((mouse_x / 16)) * 16), (floor((mouse_y / 16)) * 16), ((floor((mouse_x / 16)) * 16) + 15), ((floor((mouse_y / 16)) * 16) + 15), obj_parent_resource, 1, 1))) 
		&& (!(place_meeting(obj_creation_preview.x, obj_creation_preview.y, obj_parent_resource)))) 
		|| collision_rectangle((floor((mouse_x / 16)) * 16), (floor((mouse_y / 16)) * 16), ((floor((mouse_x / 16)) * 16) + 15), ((floor((mouse_y / 16)) * 16) + 15), obj_parent_sounds, 1, 1)) 
		&& obj_creation_preview.place == 0 && (obj_cursor.dont_move == 0 
		|| obj_cursor.dont_move == 2) && (!(place_meeting(x, y, obj_arrow_lock))) 
		&& (global.select_resource == obj_ground 
		|| global.select_resource == obj_block_res 
		|| global.select_resource == obj_rock_res 
		|| global.select_resource == obj_ice_res 
		|| global.select_resource == obj_onoffplatform_res 
		|| global.select_resource == obj_onoffplatform_blue_res 
		|| global.select_resource == obj_pblock_res 
		|| global.select_resource == obj_pblock2_res 
		|| global.select_resource == obj_qblock_res 
		|| global.select_resource == obj_block_hidden_res 
		|| global.select_resource == obj_pinchos_res 
		|| global.select_resource == obj_coin_res))
        {
            global.resource_create = 1
            event_user(1)
        }
        else if (obj_persistent.modo_android == 1 
		&& move_view == 0 
		&& global.select_resource == obj_resource_empty 
		&& global.select_resource != obj_ground 
		&& ((!(collision_rectangle((floor((mouse_x / 16)) * 16), (floor((mouse_y / 16)) * 16), ((floor((mouse_x / 16)) * 16) + 15), ((floor((mouse_y / 16)) * 16) + 15), obj_parent_resource, 1, 1))) 
		|| collision_rectangle((floor((mouse_x / 16)) * 16), (floor((mouse_y / 16)) * 16), ((floor((mouse_x / 16)) * 16) + 15), ((floor((mouse_y / 16)) * 16) + 15), obj_ground, 1, 1)) 
		&& ((!(place_meeting(obj_creation_preview.x, obj_creation_preview.y, obj_parent_resource))) || place_meeting(obj_creation_preview.x, obj_creation_preview.y, obj_ground)) 
		&& (!(collision_rectangle((floor((mouse_x / 16)) * 16), (floor((mouse_y / 16)) * 16), ((floor((mouse_x / 16)) * 16) + 15), ((floor((mouse_y / 16)) * 16) + 15), obj_mario_editor, 1, 1))) 
		&& (!(place_meeting(obj_creation_preview.x, obj_creation_preview.y, obj_mario_editor))) 
		&& (!(place_meeting(obj_creation_preview.x, obj_creation_preview.y, obj_expand_panels))) 
		&& (!(place_meeting(obj_creation_preview.x, obj_creation_preview.y, obj_expand_panels_left))) 
		&& (!(place_meeting(obj_creation_preview.x, obj_creation_preview.y, obj_expand_paneles_top))) 
		&& (!instance_exists(obj_apariencia)) && (!instance_exists(obj_bg_selection)) 
		&& (!instance_exists(obj_time)) && (!instance_exists(obj_autoavance)) 
		&& (!instance_exists(obj_condiciones)) 
		&& (!instance_exists(obj_edit_menu)) 
		&& (!instance_exists(obj_panel_save_load)) 
		&& (!instance_exists(obj_alert_load)) 
		&& (!instance_exists(obj_window_alert)) 
		&& (!instance_exists(obj_settings_panel)) 
		&& move_tuberia == 0 
		&& global.cursor == 0)
        {
            move_view = 1
            obj_editormanager.expand_open = 2
        }
    }
}