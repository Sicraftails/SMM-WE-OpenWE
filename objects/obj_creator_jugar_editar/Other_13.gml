var marioU,no_instances_above_camera;
global.instance_deactivate = 0
if (global.apariencia == 3)
    marioU = obj_marioU
else
    marioU = obj_mario
if (moment == 0)
{
no_instances_above_camera = true;
if instance_exists(obj_parent_resource){
with (obj_parent_resource) {
	// Check for items and enemies above the camera
     if (y < obj_levelmanager.cam_top - 8) {
        no_instances_above_camera = false;
        break;
    }
}
if (no_instances_above_camera) {
	with (obj_levelmanager)
		camlock = 1;
} 
else {
	with (obj_levelmanager)
		camlock = 0;
}
}
if (obj_ground2.y < (obj_levelmanager.cam_top - 8) || obj_ground3.y < (obj_levelmanager.cam_top - 8)) {
        with (obj_levelmanager)
             camlock = 0;
}
		scr_edit_to_play()
        if instance_exists(obj_player_trail)
        {
            with (obj_player_trail)
                instance_destroy()
        }
        switch global.autoavance
        {
            case 1:
                with (instance_create((camera_get_view_x(view_get_camera(0)) + 192), (room_height - (camera_get_view_height(view_get_camera(0)) / 2)), obj_autoscroll))
                    velocidad = 0.6
                break
            case 2:
                with (instance_create((camera_get_view_x(view_get_camera(0)) + 192), (room_height - (camera_get_view_height(view_get_camera(0)) / 2)), obj_autoscroll))
                    velocidad = 1
                break
            case 3:
                with (instance_create((camera_get_view_x(view_get_camera(0)) + 192), (room_height - (camera_get_view_height(view_get_camera(0)) / 2)), obj_autoscroll))
                    velocidad = 1.5
                break
        }

        if (global.condiciones == 1 && global.condiciones_type == 0)
        {
            global.condiciones_clear = 1
            with (instance_create((camera_get_view_x(view_get_camera(0)) + 54), (camera_get_view_y(view_get_camera(0)) + 43), obj_alert_condicion))
                start = 1
        }
        if (global.player_trail != 0)
        {
            with (obj_editormanager)
                alarm[1] = 2
        }
        switch global.bg_level
        {
           case "airship":
               if (global.apariencia == 3)
			   {
				   if (global.modo_noche == 1){
                    __background_set((11 << 0), 1, -0.1)
                    __background_set((11 << 0), 2, -0.2)
                    __background_set((11 << 0), 3, -0.3)
                    __background_set((11 << 0), 4, -0.4)
                    __background_set((11 << 0), 5, -0.5)
                    __background_set((11 << 0), 7, -0.6)
				   }   
			   }
                else if (global.apariencia != 3){
				if (global.modo_noche == 0)
                    __background_set((11 << 0), 0, -0.3)
				else
					__background_set((11 << 0), 0, -1)
				}
            case "sky":
                if (global.apariencia == 3)
                {
                    __background_set( e__BG.HSpeed, 1, -0.1 )
                    __background_set( e__BG.HSpeed, 2, -0.2 )
                    __background_set( e__BG.HSpeed, 3, -0.3 )
                    __background_set( e__BG.HSpeed, 4, -0.4 )
                    __background_set( e__BG.HSpeed, 5, -0.5 )
                    __background_set( e__BG.HSpeed, 7, -0.6 )
                }
                else if (global.modo_noche == 0)
                    __background_set( e__BG.HSpeed, 0, -0.2 )
        }

        if (global.bg_level == "airship" && global.modo_noche == 1 && global.apariencia != 0)
            instance_create(0, 0, obj_rainmaker)
        if (global.bg_level == "snow")
            instance_create(0, 0, obj_snowmaker)
        if (global.bg_level == "fall")
            instance_create(0, 0, obj_leafmaker)
        if (global.bg_level == "castle" && global.apariencia == 3)
            instance_create(0, 0, obj_firemaker)
        obj_levelmanager.editor = 0
        with (obj_cursor)
            event_user(3)
        alarm[4] = 25
        if instance_exists(obj_bg_selection)
        {
            with (obj_bg_selection)
                instance_destroy()
        }
        if instance_exists(obj_time)
        {
            with (obj_time)
                instance_destroy()
        }
        if instance_exists(obj_toast)
        {
            with (obj_toast)
                instance_destroy()
        }
        audio_play_sound(snd_play_start_create, 0, false)
        if (global.apariencia == 3)
            audio_play_sound(snd_letsgo, 0, false)
		
        else
        {
            switch global.jugador
            {
                case 0:
                    audio_play_sound(snd_letsgo, 0, false)
                    break
                case 1:
                    audio_play_sound(snd_letsgo_luigi, 0, false)
                    break
                case 2:
                    audio_play_sound(snd_letsgo_toad, 0, false)
                    break
                case 3:
                    audio_play_sound(snd_letsgo_toadette, 0, false)
                    break
            }

        }
        audio_stop_sound(music_editor)
        audio_stop_sound(snd_SMB_dead)
        audio_stop_sound(snd_SMB3_dead)
        audio_stop_sound(snd_dead)
        audio_stop_sound(snd_NSMBU_dead)
        audio_stop_sound(snd_NSMBU_dead_lava)
        audio_stop_sound(snd_NSMBU_dead_veneno)
        global.pink_coins_total = instance_number(obj_pink_coin)
        if (global.pink_coins_total != 0){
            global.pink_coins_draw = 1
			with (obj_levelmanager) pink_coins_draw = 1
		}
        with (obj_levelmanager)
        {
            global.timer = leveltime
            if (global.timer > 0 && global.timer < 101)
            {
                alarm[3] = 2
                alarm[2] = 1
            }
            else
                alarm[2] = 1
        }
        switch global.powerup
        {
            case -50:
                with (obj_levelmanager)
                    mchange = 1
                break
            case -85:
                with (obj_levelmanager)
                    mchange = 4
                break
            default:
                audio_play_sound(obj_levelmanager.levelmusic, 99, true)
        }

        var mario_c = instance_create((obj_mario_editor.x + 8), (obj_mario_editor.y - 16), obj_mario_temp)
        mario_c.direct = obj_mario_editor.direct
        with (obj_mario_editor)
        {
            if (global.star_flash == 1)
                event_user(1)
            instance_destroy()
        }
        if (obj_levelmanager.editor_sonidos == 1)
        {
            if instance_exists(obj_card_block_sounds)
            {
                with (obj_card_block_sounds)
                    event_user(2)
            }
        }
        if (obj_persistent.modo_android == 1 && global.controles_tactiles == 1)
        {
            with (obj_persistent)
            {
                event_user(2)
                event_user(3)
            }
        }
        moment = 1
        global.instance_deactivate = 1
}
else
{
    obj_levelmanager.editor = 1
    global.n64_music = 0
    global.bonus_music = 0
    global.boss_music = 0
    global.ef_repeat = 0
    // DESACTIVARCONTROL
    scr_play_to_edit()
    scr_stop_effect_sounds()
    obj_editormanager.visible = true
    obj_expand_panels.visible = true
    obj_expand_panels_left.visible = true
    obj_expand_paneles_top.visible = true
    if instance_exists(obj_panel_left)
        obj_panel_left.visible = true
    if instance_exists(obj_autoscroll)
    {
        with (obj_autoscroll)
            instance_destroy()
    }
    if instance_exists(obj_rainmaker)
    {
        with (obj_rainmaker)
            instance_destroy()
    }
    __background_set((11 << 0), 0, c_black)
    __background_set((11 << 0), 1, c_black)
    __background_set((11 << 0), 2, c_black)
    __background_set((11 << 0), 3, c_black)
    __background_set((11 << 0), 4, c_black)
    __background_set((11 << 0), 5, c_black)
    __background_set((11 << 0), 6, c_black)
	__background_set((11 << 0), 7, c_black)
    with (obj_cursor)
        event_user(4)
    alarm[5] = 10
    scr_reset_variables()
    audio_play_sound(snd_play_start_create, 0, false)
    with (obj_persistent)
        alarm[6] = -1
    with (obj_goalcard)
        alarm[3] = -1
    with (obj_persistent)
        alarm[6] = -1
    with (obj_levelmanager)
    {
        audio_stop_sound(levelmusic)
        levelmusic = levelmusic_original
    }
    audio_stop_sound(snd_music_mario_land)
    if (obj_levelmanager.sound_effect != snd_SMB_music_ground)
    {
        audio_stop_sound(obj_levelmanager.sound_effect)
        obj_levelmanager.sound_effect = 0
    }
    audio_play_sound(music_editor, 99, true)
    global.powerup = 0
    with (obj_levelmanager)
    {
        lock_lock = 0
        global.timer = leveltime
        alarm[2] = -1
        alarm[4] = -1
        alarm[10] = 1
    }
    if instance_exists(marioU)
        var element_obj = marioU
    else if instance_exists(obj_deadmario)
        element_obj = obj_deadmario
    else if instance_exists(obj_doormario)
        element_obj = obj_doormario
    else if instance_exists(obj_doormario_exit)
        element_obj = obj_doormario_exit
    else if instance_exists(obj_player_warp)
        element_obj = obj_player_warp
    else if instance_exists(obj_player_goal_parent)
        element_obj = obj_player_goal_parent
    else
        element_obj = noone
    if instance_exists(element_obj)
    {
        if ((element_obj.y + 32) > room_height)
            var mario_editor = instance_create((element_obj.x - 8), (room_height - 32), obj_mario_editor)
        else if ((element_obj.x + 8) > room_width)
            mario_editor = instance_create((room_width - 16), (element_obj.y + 16), obj_mario_editor)
        else
            mario_editor = instance_create((element_obj.x - 8), (element_obj.y + 16), obj_mario_editor)
        mario_editor.direct = element_obj.direct
        with (element_obj)
            instance_destroy()
    }
    else
        instance_create((camera_get_view_x(view_get_camera(0)) + 192) , (camera_get_view_y(view_get_camera(0)) + (camera_get_view_height(view_get_camera(0)) / 2)), obj_mario_editor)
    if (obj_persistent.modo_android == 1 && global.controles_tactiles == 1)
    {
        with (obj_persistent)
        {
            event_user(4)
            event_user(5)
        }
    }
    if instance_exists(obj_parent_save)
    {
        with (obj_parent_save)
            visible = true
    }
    moment = 0
    global.instance_deactivate = 1
}
