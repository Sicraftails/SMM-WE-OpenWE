if (held == 1)
{
    swimming = 0
    vspeed = 0
    if instance_exists(obj_mario)
    {
        if (obj_mario.helice_fly == 4 || obj_mario.stuntime > 0 || (global.powerup == -82 && (!instance_exists(obj_mario_transform2))))
        {
            obj_mario.holding = 0
            y--
            held = 0
            depth = 0
            shake = 0
            alarm[0] = -1
            if (collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_solid, 0, 0) || collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_bullebill_base, 0, 0) || collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_physicssolid, 0, 0))
            {
                inwall = 1
                hspeed = 0
            }
            if (obj_mario.hspeed == 0)
                hspeed = (1 * obj_mario.direct)
            else
                hspeed = (obj_mario.hspeed / 2)
            inmune = 1
            alarm[6] = 15
            obj_mario.isduckhold = 0
            exit
        }
        if (obj_mario.holding == 2 && (obj_mario.stompstyle == 1 || (obj_mario.helice_fly > 0 && obj_mario.helice_fly < 4)))
        {
            if (alarm[0] == -1)
                alarm[0] = 1
            x = (obj_mario.x + spin_x)
        }
        else if (obj_mario.airspin == 1 && obj_mario.holding == 2)
        {
            if (alarm[0] == -1)
                alarm[0] = 1
            x = (obj_mario.x + spin_x)
        }
        else
        {
            if (global.apariencia == 3)
            {
                depth = -10
                x = (obj_mario.x + (8 * obj_mario.direct))
            }
            else if (obj_mario.turning == 1)
            {
                depth = -10
                x = obj_mario.x
            }
            else
            {
                depth = -7
                x = (obj_mario.x + (11 * obj_mario.direct))
            }
            shake = 0
            alarm[0] = -1
            if (keyboard_check(global.abajo) && obj_mario.state < 2 && object_index == obj_shell_drybones)
            {
                event_user(1)
                obj_mario.isduckhold = 0
            }
            else if (keyboard_check(global.abajo) && obj_mario.state < 2 && obj_mario.helmet == 0 && global.apariencia != 3 && object_index == obj_shell_empty)
            {
                audio_stop_sound(snd_helmet_add)
                audio_play_sound(snd_helmet_add, 0, false)
                obj_mario.helmet = 1
                instance_create(obj_mario.x, (obj_mario.y + 15), obj_helmet)
                obj_mario.holding = 0
                obj_mario.isduckhold = 0
                instance_destroy()
            }
            else if (keyboard_check(global.abajo) && obj_mario.state < 2 && obj_mario.helmet == 0 && global.apariencia != 3 && object_index == obj_spiny_empty)
            {
                audio_stop_sound(snd_helmet_spiny_add)
                audio_play_sound(snd_helmet_spiny_add, 0, false)
                obj_mario.helmet = 1
                instance_create(obj_mario.x, (obj_mario.y + 15), obj_helmet_spiny)
                with (instance_create((obj_mario.x - 4), (obj_mario.y + 14), obj_smoke))
                    sprite_index = spr_sparkles_helmet
                obj_mario.holding = 0
                obj_mario.isduckhold = 0
                instance_destroy()
            }
            else if (keyboard_check(global.abajo) && obj_mario.vspeed == 0 && global.apariencia == 2)
                y = (obj_mario.y + 16)
        }
        if ((obj_mario.y + 4) < (__view_get((1 << 0), 0) - 20))
            y = (__view_get((1 << 0), 0) - 20)
        else if (global.powerup == 0)
        {
            if (global.apariencia == 3)
                y = (obj_mario.y + 12)
            else
                y = (obj_mario.y + 15)
        }
        else if (global.apariencia == 3)
            y = (obj_mario.y + 4)
        else
            y = (obj_mario.y + 12)
        if keyboard_check(global.lanzar_agarrar)
        {
            if (keyboard_check(global.abajo) && obj_mario.state < 2 && obj_mario.stompstyle == 0 && global.apariencia != 3 && (object_index == obj_spiny_empty || object_index == obj_shell_empty))
                obj_mario.holding = 0
            else
                obj_mario.holding = 2
            if (obj_mario.stompstyle == 0)
                direct = obj_mario.direct
            else
                direct = 1
        }
        else if (obj_mario.disablecontrols == 0 && global.key_br == 0)
        {
            obj_mario.holding = 0
            y--
            held = 0
            depth = 0
            shake = 0
            alarm[0] = -1
            event_user(2)
        }
        visible = true
    }
    else if instance_exists(obj_player_warp)
    {
        obj_player_warp.myitem = sprite_index
        global.warp_item = sprite_index
        if (global.apariencia == 3)
            x = (obj_player_warp.x + (8 * obj_player_warp.direct))
        else
            x = (obj_player_warp.x + (11 * obj_player_warp.direct))
        if (global.powerup == 0)
        {
            if (global.apariencia == 3)
                y = (obj_player_warp.y + 12)
            else
                y = (obj_player_warp.y + 15)
        }
        else if (global.apariencia == 3)
            y = (obj_player_warp.y + 4)
        else
            y = (obj_player_warp.y + 12)
        obj_player_warp.holding = 2
        visible = false
    }
    else if instance_exists(obj_doormario)
    {
        obj_doormario.myitem = sprite_index
        if (global.apariencia == 3)
            x = (obj_doormario.x + (8 * obj_doormario.direct))
        else
            x = (obj_doormario.x + (11 * obj_doormario.direct))
        if (global.powerup == 0)
        {
            if (global.apariencia == 3)
                y = (obj_doormario.y + 12)
            else
                y = (obj_doormario.y + 15)
        }
        else if (global.apariencia == 3)
            y = (obj_doormario.y + 4)
        else
            y = (obj_doormario.y + 12)
        obj_doormario.holding = 2
        visible = false
    }
    else if instance_exists(obj_doormario_exit)
    {
        obj_doormario_exit.myitem = sprite_index
        if (global.apariencia == 3)
            x = (obj_doormario_exit.x + (8 * obj_doormario_exit.direct))
        else
            x = (obj_doormario_exit.x + (11 * obj_doormario_exit.direct))
        if (global.powerup == 0)
        {
            if (global.apariencia == 3)
                y = (obj_doormario_exit.y + 12)
            else
                y = (obj_doormario_exit.y + 15)
        }
        else if (global.apariencia == 3)
            y = (obj_doormario_exit.y + 4)
        else
            y = (obj_doormario_exit.y + 12)
        obj_doormario_exit.holding = 2
        visible = false
    }
    else if (global.warp_item == -4)
        held = 0
}
else
    event_user(14)

