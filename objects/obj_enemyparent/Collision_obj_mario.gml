if (stomp != -1 && other.invincible != -1 && (!instance_exists(obj_slider)))
{
    if (sprite_index == spr_shell_buzzy_empty || sprite_index == spr_shell_spiny_empty || sprite_index == spr_SMB3_shell_empty || sprite_index == spr_SMB3_shell_empty_night || sprite_index == spr_SMB3_shell_spiny_empty || sprite_index == spr_SMB_shell_empty || sprite_index == spr_SMB_shell_empty_spiny)
    {
        var altura = 12
        var v_speed = vspeed
    }
    else if (object_index == obj_shell_held)
    {
        altura = 15
        v_speed = 0
    }
    else
    {
        altura = 5
        v_speed = vspeed
    }
    if (global.apariencia == 3 && other.bbox_bottom < ((bbox_top - vspeed) + 14) && (stomp == 0 || stomp == 3) && (other.groundpount == 2 || other.helice_fly == 4))
    {
        scr_musicalscale(other, id, 1)
        instance_create(other.x, (other.y + 22), obj_spinthump)
        event_user(0)
    }
    else if (other.bbox_bottom < ((bbox_top - vspeed) + altura) && object_index != obj_grinder && object_index != obj_crumblebones && object_index != obj_thwomp && global.yoshi == 2)
    {
        with (other.id)
            event_user(1)
        if instance_exists(obj_kuribo_drybones)
            scr_musicalscale_kick(other, id, 1)
        else
            scr_musicalscale(other, id, 1)
        instance_create(other.x, (other.y + 22), obj_spinthump)
        event_user(0)
    }
    else if (other.bbox_bottom < ((bbox_top - vspeed) + altura) && hardness < 99 && stomp != 1 && global.powerup == -77)
    {
        if (object_index == obj_shell_held && sprite_index == spr_SMB_shell_empty_spiny)
        {
            with (other.id)
                event_user(0)
        }
        else
        {
            with (other.id)
                event_user(1)
            scr_musicalscale(other, id, 1)
            instance_create(other.x, (other.y + 22), obj_spinthump)
            event_user(0)
        }
    }
    else if (other.bbox_bottom < ((bbox_top - v_speed) + altura))
    {
        if (stomp != 3 && stomp != 5 && stomp != 6 && (other.stompstyle == 1 || global.yoshi == 1 || global.yoshi == 2))
        {
            if (stomp == 0 || stomp == 4)
            {
                if (object_index == obj_bobomb || object_index == obj_bobomb_ready)
                {
                    with (other.id)
                        event_user(1)
                    audio_play_sound(scr_snd_stomp(), 0, false)
                    instance_create(other.x, (other.y + 22), obj_spinthump)
                    with (instance_create((x - 8), y, obj_bobomb_hold))
                    {
                        hitpoint = 1
                        event_user(1)
                    }
                    instance_destroy()
                }
                else if (object_index == obj_shell_held && (sprite_index == spr_shell_spiny_empty || sprite_index == spr_NSMBU_shell_spiny_empty || sprite_index == spr_SMB3_shell_spiny_empty || sprite_index == spr_SMB_shell_empty_spiny))
                {
                    with (other.id)
                        event_user(1)
                    audio_play_sound(scr_snd_stomp(), 0, false)
                    instance_create(other.x, (other.y + 22), obj_spinthump)
                }
                else if (object_index == obj_charginchuck)
                {
                    with (other.id)
                        event_user(1)
                    instance_create(other.x, (other.y + 22), obj_spinthump)
                    event_user(1)
                }
                else if (object_index == obj_charginchuck || object_index == obj_cannonball || object_index == obj_cannonball_red or object_index == obj_NSMBU_charginchuck)
                {
                    with (other.id)
                        event_user(1)
                    audio_stop_sound(scr_snd_stomp())
                    audio_play_sound(scr_snd_stomp(), 0, false)
                    instance_create(other.x, (other.y + 22), obj_spinthump)
                    event_user(1)
                }
                else
                {
                    if (variable_instance_exists(object_index, "key") && key == 1)
                    {
                        with (instance_create((x - 8), (y - 8), obj_key_appear))
                            vspeed = -4
                    }
                    if (global.apariencia == 3)
                        scr_NSMBU_spinstomp(other, id, 1)
                    with (other.id)
                        event_user(1)
                    instance_create((((bbox_left + bbox_right) / 2) - 8), y, obj_spinsmoke)
                    instance_destroy()
                }
            }
            else if (object_index == obj_boo || object_index == obj_podoboo || object_index == obj_podoboo_b || object_index == obj_angrysun)
            {
                with (other.id)
                    event_user(0)
            }
            else if (stomp == 1 && object_index == obj_pokey && image_index == 0 && global.bg_level == "snow")
            {
                audio_play_sound(scr_snd_kick(), 0, false)
                with (other.id)
                    event_user(1)
                instance_create(other.x, (other.y + 22), obj_spinthump)
                event_user(1)
            }
            else
            {
                with (other.id)
                    event_user(1)
                audio_stop_sound(scr_snd_stomp())
                audio_play_sound(scr_snd_stomp(), 0, false)
                instance_create(other.x, (other.y + 22), obj_spinthump)
            }
        }
        else if (global.powerup != -80 && (stomp == 0 || stomp == 3 || stomp == 5))
        {
            switch object_index
            {
                case obj_buzzybeetle:
                    if (object_index.wings == 0)
                        si = 1
                    else
                        si = 0
                    break
                case obj_buzzybeetle_b:
                    if (object_index.wings == 0)
                        si = 1
                    else
                        si = 0
                    break
                case obj_shell_held:
                    if (object_index.mytopid == obj_lighting)
                        si = 1
                    else
                        si = 0
                    break
                default:
                    si = 1
            }

            if (si == 1)
            {
                if (object_index == obj_shell_held && (sprite_index == spr_SMB_shell_empty_spiny || sprite_index == spr_SMB3_shell_spiny_empty || sprite_index == spr_shell_spiny_empty || sprite_index == spr_NSMBU_shell_spiny_empty))
                {
                    with (other.id)
                        event_user(0)
                    exit
                }
                if (vspeed < 0)
                {
                    y = yprevious
                    if (other.vspeed > 0)
                        other.y = other.yprevious
                }
                with (other.id)
                    event_user(1)
                if (stomp == 0 || stomp == 3)
                {
                    if (global.apariencia == 3)
                    {
                        if (keyboard_check(global.saltar) || keyboard_check(global.saltar_spin))
                            scr_NSMBU_musicalscale_rebote(other, id, 1)
                        else
                            scr_NSMBU_musicalscale_minirebote(other, id, 1)
                    }
                    else if instance_exists(obj_mario)
                        scr_musicalscale(other, id, 1)
                }
                with (instance_create(other.x, (other.y + 22), obj_spinthump))
                {
                    if (global.apariencia == 3)
                        sprite_index = spr_NSMBU_effect_stomp
                }
                if (global.yoshi == 2)
                    event_user(0)
                else
                    event_user(1)
            }
        }
        else if (stomp == 1 && object_index == obj_pokey && image_index == 0 && global.bg_level == "snow" && global.powerup != -80)
        {
            audio_play_sound(scr_snd_kick(), 0, false)
            with (other.id)
                event_user(1)
            instance_create(other.x, (other.y + 22), obj_spinthump)
            event_user(1)
        }
    }
    else if (bbox_bottom < ((other.bbox_top - other.vspeed) + 3) && vspeed > 0 && obj_mario.helmet == 1)
        exit
    else if (object_index == obj_shell_held && mytopid != obj_lighting && mytopid != obj_rainmaker && other.y < (y - 29) && other.y > (y - 32))
        exit
    else
    {
        with (other.id)
            event_user(0)
    }
}
