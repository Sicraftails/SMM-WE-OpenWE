if (temp_ready == 1 && instance_exists(obj_mario) && (!instance_exists(obj_mario_transform2)))
    global.ms += (1000 / room_speed)
if (global.apariencia == 3)
    banim += 0.2
else
    banim += 0.15
if (global.apariencia == 3)
    banim2 += 0.2
else
    banim2 += 0.1
banim3 += 0.1
if (instance_exists(obj_mario) && obj_mario.dash_atack == 2 && (!audio_is_playing(snd_SMB_link_dash_sword)))
    audio_play_sound(snd_SMB_link_dash_sword, 1, true)
else if (audio_is_playing(snd_SMB_link_dash_sword) && ((!instance_exists(obj_mario)) || (instance_exists(obj_mario) && obj_mario.dash_atack != 2)))
    audio_stop_sound(snd_SMB_link_dash_sword)
if (instance_exists(obj_bowserjr_shell) && (!audio_is_playing(scr_snd_bowserjr_shell())))
    audio_play_sound(scr_snd_bowserjr_shell(), 1, true)
else if (audio_is_playing(scr_snd_bowserjr_shell()) && ((!instance_exists(obj_bowserjr_shell)) || (!instance_exists(obj_mario))))
    audio_stop_sound(scr_snd_bowserjr_shell())
if (global.modo_noche == 1 && editor == 0 && (global.bg_level == "ghost" || global.bg_level == "underwater"))
{
    if (!instance_exists(obj_lighting))
        instance_create(0, 0, obj_lighting)
}
else if instance_exists(obj_lighting)
{
    with (obj_lighting)
        instance_destroy()
}
if (global.condiciones_count == 2 && (!instance_exists(obj_condiciones)) && ((global.bg_level != "forest" && global.bg_level != "beach") || (instance_exists(obj_arrow_lock) && instance_exists(obj_lava_water) && obj_lava_water.y > obj_arrow_lock.y)))
    global.condiciones_count = 0
if (keyboard_check_pressed(vk_control) && obj_persistent.modo_android == 1)
{
    if (global.key_br == 0)
        global.key_br = 1
    else
        global.key_br = 0
}
if (pmeter < 6 || editor == 1 || instance_exists(obj_player_goal_parent))
    audio_stop_sound(snd_pmeter)
event_user(6)
if instance_exists(obj_autoscroll)
{
    if (camlock == 1)
    {
        if instance_exists(follow)
        {
            if (y < ((room_height - (__view_get((3 << 0), 0) / 2)) - 18))
            {
                vspeed += 0.4
                if (vspeed > 4)
                    vspeed = 4
                x = obj_autoscroll.x
            }
            else
            {
                if ((follow.y + 32) < (room_height - __view_get((3 << 0), 0)) && variable_instance_exists(follow, "state") && follow.state < 2 && lock_lock == 0)
                {
                    if (y <= ((room_height - (__view_get((3 << 0), 0) / 2)) - 16))
                    {
                        vspeed = 0
                        y = ((room_height - (__view_get((3 << 0), 0) / 2)) - 16)
                        lock_lock = 1
                    }
                    else
                        vspeed -= 0.05
                }
                else if (lock_lock == 1)
                {
                    vspeed = 0
                    y = ((room_height - (__view_get((3 << 0), 0) / 2)) - 16)
                }
                if ((follow.y + 32) > (room_height - (__view_get((3 << 0), 0) / 2)))
                {
                    lock_lock = 0
                    if (y < (room_height - (__view_get((3 << 0), 0) / 2)))
                        vspeed += 0.05
                    else
                    {
                        vspeed = 0
                        y = (room_height - (__view_get((3 << 0), 0) / 2))
                    }
                }
                x = obj_autoscroll.x
            }
        }
        else
            speed = 0
    }
    else if instance_exists(follow)
    {
        event_user(8)
        x = obj_autoscroll.x
    }
}
else if instance_exists(follow)
{
    if (camlock == 1)
    {
        if (fallow_mario == 1)
            event_user(7)
        else if (y < ((room_height - (__view_get((3 << 0), 0) / 2)) - 18))
        {
            vspeed += 0.4
            if (vspeed > 4)
                vspeed = 4
            lock_lock = 1
            if (x != follow.x)
                x += ((follow.x - x) * 0.2)
        }
        else
        {
            if ((follow.y + 32) < (room_height - __view_get((3 << 0), 0)) && variable_instance_exists(follow, "state") && follow.state < 2 && lock_lock == 0)
            {
                if (y <= ((room_height - (__view_get((3 << 0), 0) / 2)) - 16))
                {
                    vspeed = 0
                    y = ((room_height - (__view_get((3 << 0), 0) / 2)) - 16)
                    lock_lock = 1
                }
                else
                    vspeed -= 0.05
            }
            else if (lock_lock == 1)
            {
                vspeed = 0
                y = ((room_height - (__view_get((3 << 0), 0) / 2)) - 16)
            }
            if ((follow.y + 32) > (room_height - (__view_get((3 << 0), 0) / 2)))
            {
                lock_lock = 0
                if (y < (room_height - (__view_get((3 << 0), 0) / 2)))
                    vspeed += 0.05
                else
                {
                    vspeed = 0
                    y = (room_height - (__view_get((3 << 0), 0) / 2))
                }
            }
            if (x != follow.x)
                x += ((follow.x - x) * 0.2)
        }
    }
    else if (fallow_mario == 1)
        event_user(7)
    else
    {
        event_user(8)
        if (x != follow.x)
            x += ((follow.x - x) * 0.2)
    }
}
else
    speed = 0
x = round(x)
y = round(y)
event_user(11)
if (global.instance_deactivate == 1)
{
    if (room != rm_editor)
    {
        if (loop_m == 0)
        {
            instance_deactivate_object(obj_ground2)
            instance_deactivate_object(obj_solidtop)
            instance_activate_region((camera_get_view_x(view_get_camera(0)) - 128), -96, ((camera_get_view_width(view_get_camera(0)) + 128) + 128), (room_height + 192), true)
            instance_deactivate_object(obj_deactivation)
            instance_activate_region((camera_get_view_x(view_get_camera(0)) - 128), -96, ((camera_get_view_width(view_get_camera(0)) + 128) + 128), (room_height + 192), true)
            instance_deactivate_object(obj_modelbgo)
			instance_deactivate_object(obj_parent_sound_o)
            instance_activate_region((camera_get_view_x(view_get_camera(0)) - 32), (camera_get_view_y(view_get_camera(0)) - 32), ((camera_get_view_width(view_get_camera(0)) + 32) + 32), ((camera_get_view_height(view_get_camera(0)) + 32) + 32), true)
            loop_m = 2
        }
        loop_m--
    }
}
else
{
    if (obj_levelmanager.editor == 0)
        instance_activate_object(obj_levelmanager)
    instance_activate_object(obj_solidtop)
    instance_activate_object(obj_deactivation)
    instance_activate_object(obj_parent_save)
    instance_activate_object(obj_parent_sound_o)
}
if (barrier == 0 && instance_exists(obj_mario))
{
    if (obj_mario.x < (camera_get_view_x(view_get_camera(0)) + 5))
    {
        obj_mario.x = (camera_get_view_x(view_get_camera(0)) + 5)
        if (obj_mario.hspeed < 0)
            obj_mario.hspeed = 0
        if instance_exists(obj_slider)
            obj_slider.x = (camera_get_view_x(view_get_camera(0)) + 5)
    }
    else if (obj_mario.x > ((camera_get_view_x(view_get_camera(0)) + camera_get_view_width(view_get_camera(0))) - 5))
    {
        obj_mario.x = ((camera_get_view_x(view_get_camera(0)) + camera_get_view_width(view_get_camera(0))) - 5)
        if (obj_mario.hspeed > 0)
            obj_mario.hspeed = 0
        if instance_exists(obj_slider)
            obj_slider.x = ((camera_get_view_x(view_get_camera(0)) + camera_get_view_width(view_get_camera(0))) - 5)
    }
}
if (barrier == 0 && instance_exists(obj_mario_pballon))
{
    if (obj_mario_pballon.x < (camera_get_view_x(view_get_camera(0)) + 5))
    {
        obj_mario_pballon.x = (camera_get_view_x(view_get_camera(0)) + 5)
        if (obj_mario_pballon.hspeed < 0)
            obj_mario_pballon.hspeed = 0
    }
    else if (obj_mario_pballon.x > ((camera_get_view_x(view_get_camera(0)) + camera_get_view_width(view_get_camera(0))) - 5))
    {
        obj_mario_pballon.x = ((camera_get_view_x(view_get_camera(0)) + camera_get_view_width(view_get_camera(0))) - 5)
        if (obj_mario_pballon.hspeed > 0)
            obj_mario_pballon.hspeed = 0
    }
}
if (global.coins > 99)
{
    global.coins -= 100
    if instance_exists(obj_mario)
    {
        with (instance_create((obj_mario.x - 8), obj_mario.y, obj_score))
            event_user(7)
    }
    else
    {
        with (instance_create((x - 8), y, obj_score))
            event_user(7)
    }
}
if (editor == 1)
{
    jump_condicion = 0
    exit
}
if (global.condiciones == 1 && editor == 0)
{
    if (global.condiciones_type == 0)
    {
        switch global.condiciones_count
        {
            case 0:
                if (instance_exists(obj_deadmario) || (instance_exists(obj_mario_transform2) && obj_mario_transform2.powerdown == 1))
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
                break
            case 1:
                if (instance_exists(obj_mario) && obj_mario.state > 1 && jump_condicion == 0)
                    jump_condicion = 1
                else if (instance_exists(obj_mario) && obj_mario.inclown == 0 && obj_mario.state < 2 && global.condiciones_clear == 1 && jump_condicion == 1)
                {
                    global.condiciones_clear = 0
                    with (obj_alert_condicion)
                        instance_destroy()
                    with (instance_create((camera_get_view_x(view_get_camera(0)) + 54), (camera_get_view_y(view_get_camera(0)) + 98), obj_alert_condicion))
                        lose = 1
                }
                break
            case 2:
                if (instance_exists(obj_mario) && (global.bg_level == "forest" || global.bg_level == "beach") && obj_mario.isswim == 0)
                {
                    global.condiciones_clear = 0
                    with (obj_alert_condicion)
                        instance_destroy()
                    with (instance_create((camera_get_view_x(view_get_camera(0)) + 54), (camera_get_view_y(view_get_camera(0)) + 98), obj_alert_condicion))
                        lose = 1
                }
                break
            case 3:
                if (global.coins > 0 && (!instance_exists(obj_player_goal_parent)) && global.condiciones_clear == 1)
                {
                    global.condiciones_clear = 0
                    with (obj_alert_condicion)
                        instance_destroy()
                    with (instance_create((camera_get_view_x(view_get_camera(0)) + 54), (camera_get_view_y(view_get_camera(0)) + 98), obj_alert_condicion))
                        lose = 1
                }
                break
        }

    }
}
if (instance_number(obj_mario) > 1)
{
    with (obj_mario)
    {
        instance_destroy()
        exit
    }
}
if (pwarning == 0 && editor == 0)
{
    if (alarm[10] > 100 && alarm[10] < 120)
    {
        audio_play_sound(scr_snd_switchalert(), 0, false)
        pwarning = 1
    }
}
if audio_is_playing(scr_snd_hurryup())
{
    if audio_is_playing(levelmusic)
        audio_pause_sound(levelmusic)
    else if audio_is_playing(scr_snd_starman())
        audio_pause_sound(scr_snd_starman())
    else if audio_is_playing(scr_snd_switchsong())
        audio_pause_sound(scr_snd_switchsong())
}
else
{
    if (global.timer > -1 && global.timer < 101)
    {
        audio_sound_pitch(levelmusic, 1.1)
        audio_sound_pitch(scr_snd_starman(), 1.1)
        audio_sound_pitch(scr_snd_switchsong(), 1.1)
    }
    else
    {
        audio_sound_pitch(levelmusic, 1)
        audio_sound_pitch(scr_snd_starman(), 1)
        audio_sound_pitch(scr_snd_switchsong(), 1)
    }
    if (editor == 0)
    {
        if audio_is_paused(levelmusic)
            audio_resume_sound(levelmusic)
        else if audio_is_paused(scr_snd_starman())
            audio_resume_sound(scr_snd_starman())
        else if audio_is_paused(scr_snd_switchsong())
            audio_resume_sound(scr_snd_switchsong())
    }
    if (editor == 0)
    {
        if (global.bonus_music > 0)
        {
            if (global.bonus_music == 2)
            {
                if (global.bonus_obj != obj_lighting && (!instance_exists(global.bonus_obj)) && global.ef_repeat == 0 && (!instance_exists(obj_player_goal_parent)) && (!instance_exists(obj_deadmario)))
                {
                    audio_stop_sound(levelmusic)
                    switch global.powerup
                    {
                        case -50:
                            levelmusic = snd_music_mario_land
                            break
                        case -85:
                            levelmusic = scr_music_link()
                            break
                        default:
                            levelmusic = levelmusic_temp
                            break
                    }

                    if ((!audio_is_playing(scr_snd_starman())) && (!audio_is_playing(scr_snd_switchsong())))
                        audio_play_sound(levelmusic, 1, true)
                    global.bonus_music = 0
                }
            }
            else if (global.bonus_music == 1)
            {
                if (levelmusic != snd_music_mario_land && levelmusic != snd_SMB_master_sword && levelmusic != snd_SMB_master_sword_underground && levelmusic != snd_SMB_master_sword_castle && global.boss_music == 0)
                    levelmusic_temp = levelmusic
                else
                    levelmusic_temp = levelmusic_original
                audio_stop_sound(levelmusic)
                switch global.apariencia
                {
                    case 0:
                        if (global.powerup == -85)
                            levelmusic = snd_SMB_bonus_link
                        else
                            levelmusic = snd_SMB_bonus
                        break
                    case 1:
                        levelmusic = snd_SMB3_bonus
                        break
                    case 2:
                        levelmusic = snd_SMW_bonus
                        break
                    case 3:
                        levelmusic = snd_NSMBU_bonus
                        break
                }

                if ((!audio_is_playing(scr_snd_starman())) && (!audio_is_playing(scr_snd_switchsong())))
                    audio_play_sound(levelmusic, 1, true)
                global.bonus_music = 2
                global.boss_music = 0
                global.ef_repeat = 0
            }
        }
        if (global.boss_music > 0)
        {
            if (global.boss_music == 2)
            {
                if (global.bowser_obj != obj_lighting && (!instance_exists(global.bowser_obj)) && global.ef_repeat == 0 && (!instance_exists(obj_player_goal_parent)) && (!instance_exists(obj_deadmario)))
                {
                    audio_stop_sound(levelmusic)
                    switch global.powerup
                    {
                        case -50:
                            levelmusic = snd_music_mario_land
                            break
                        case -85:
                            levelmusic = scr_music_link()
                            break
                        default:
                            levelmusic = levelmusic_temp
                            break
                    }

                    if ((!audio_is_playing(scr_snd_starman())) && (!audio_is_playing(scr_snd_switchsong())))
                        audio_play_sound(levelmusic, 1, true)
                    global.boss_music = 0
                }
            }
            else if (global.boss_music == 1)
            {
                if (levelmusic != snd_music_mario_land && levelmusic != snd_SMB_master_sword && levelmusic != snd_SMB_master_sword_underground && levelmusic != snd_SMB_master_sword_castle && global.bonus_music == 0)
                    levelmusic_temp = levelmusic
                else
                    levelmusic_temp = levelmusic_original
                audio_stop_sound(levelmusic)
                switch global.apariencia
                {
                    case 0:
                        if (global.powerup == -85)
                            levelmusic = snd_SMB_boss_link
                        else
                            levelmusic = snd_SMB_boss
                        break
                    case 1:
                        levelmusic = snd_SMB3_boss
                        break
                    case 2:
                        levelmusic = snd_SMW_boss
                        break
                    case 3:
                        levelmusic = snd_NSMBU_boss
                        break
                }

                if ((!audio_is_playing(scr_snd_starman())) && (!audio_is_playing(scr_snd_switchsong())))
                    audio_play_sound(levelmusic, 1, true)
                global.boss_music = 2
                global.bonus_music = 0
                global.ef_repeat = 0
            }
        }
        if (global.n64_music == 1)
        {
            if (global.bonus_music > 0 || global.boss_music > 0)
                levelmusic_temp = snd_n64
            else
            {
                levelmusic_temp = levelmusic
                audio_stop_sound(levelmusic)
                levelmusic = snd_n64
                if ((!audio_is_playing(scr_snd_starman())) && (!audio_is_playing(scr_snd_switchsong())))
                    audio_play_sound(levelmusic, 1, true)
            }
            global.n64_music = 2
            global.ef_repeat = 0
        }
    }
    else
    {
        global.n64_music = 0
        global.bonus_music = 0
        global.boss_music = 0
        global.ef_repeat = 0
    }
    switch mchange
    {
        case 1:
            if (global.bonus_music > 0 || global.boss_music > 0 || levelmusic == snd_n64)
                levelmusic_temp = snd_music_mario_land
            else
            {
                if (levelmusic == snd_SMB_master_sword || levelmusic == snd_SMB_master_sword_underground || levelmusic == snd_SMB_master_sword_castle)
                    levelmusic_temp = levelmusic_original
                else
                    levelmusic_temp = levelmusic
                audio_stop_sound(levelmusic)
                levelmusic = snd_music_mario_land
                if ((!audio_is_playing(scr_snd_starman())) && (!audio_is_playing(scr_snd_switchsong())))
                    audio_play_sound(levelmusic, 1, true)
            }
            mchange = 0
            global.ef_repeat = 0
            break
        case 2:
            audio_stop_sound(levelmusic)
            levelmusic = levelmusic_original
            mchange = 0
            global.ef_repeat = 0
            break
        case 3:
            if (global.bonus_music > 0 || global.boss_music > 0 || levelmusic == snd_n64)
                levelmusic_temp = levelmusic_original
            else
            {
                audio_stop_sound(levelmusic)
                levelmusic = levelmusic_temp
                if ((!audio_is_playing(scr_snd_starman())) && (!audio_is_playing(scr_snd_switchsong())))
                    audio_play_sound(levelmusic, 1, true)
            }
            mchange = 0
            global.ef_repeat = 0
            break
        case 4:
            if (global.bonus_music > 0 || global.boss_music > 0 || levelmusic == snd_n64)
                levelmusic_temp = scr_music_link()
            else
            {
                if (levelmusic == snd_music_mario_land)
                    levelmusic_temp = levelmusic_original
                else
                    levelmusic_temp = levelmusic
                audio_stop_sound(levelmusic)
                levelmusic = scr_music_link()
                if ((!audio_is_playing(scr_snd_starman())) && (!audio_is_playing(scr_snd_switchsong())))
                    audio_play_sound(levelmusic, 1, true)
            }
            mchange = 0
            global.ef_repeat = 0
            break
    }

}
if (audio_is_playing(snd_es_ahh) || audio_is_playing(snd_es_ubsi) || instance_exists(obj_panel_expand))
{
    if (global.sounds_level == 1)
        var val_2 = 0
    else
        val_2 = 0.2
    var val = 0.2
}
else
{
    if (global.sounds_level == 1)
        val_2 = 0
    else
        val_2 = 1
    val = 1
}
audio_sound_gain(levelmusic, val_2, 0)
audio_sound_gain(scr_snd_starman(), val, 0)
audio_sound_gain(scr_snd_switchsong(), val, 0)


