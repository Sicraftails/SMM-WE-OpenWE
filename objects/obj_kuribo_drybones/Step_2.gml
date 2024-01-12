if instance_exists(obj_frozenmario)
    event_user(0)
if instance_exists(obj_mario)
{
    if (global.powerup == -82 && (!instance_exists(obj_mario_transform2)))
        event_user(0)
    if (obj_mario.firing > 0)
    {
        if (obj_mario.firing < 6 && obj_mario.firing > 3)
            m_subimagen = 1
        else
        {
            m_subimagen = 0
            m_sprite = scr_marioshoot_drybones()
        }
    }
    else if (obj_mario.state == 2 && global.powerup != -39 && global.apariencia != 0)
    {
        m_sprite = scr_mario_drybones_jump()
        with (obj_mario)
        {
            if ((place_free(x, (y + 1)) && vspeed > 0) || collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_bortice, 0, 0))
                other.m_subimagen = 1
            else
                other.m_subimagen = 0
        }
    }
    else if (obj_mario.state == 1 && global.apariencia != 0)
    {
        m_sprite = scr_mario_drybones_jump()
        m_subimagen = obj_mario.image_index
    }
    else if (obj_mario.state != 2 && obj_mario.state != 3)
    {
        m_sprite = scr_mario_drybones()
        if (obj_mario.isduck == 1)
            m_subimagen = 1
        else
            m_subimagen = 0
    }
    else if (global.powerup != -39)
    {
        m_sprite = scr_mario_drybones()
        if (obj_mario.isduck == 1)
            m_subimagen = 1
        else
            m_subimagen = 0
    }
    else if (global.powerup == -39)
    {
        m_sprite = scr_mario_drybones_jump()
        with (obj_mario)
        {
            if (wiggle == 0)
            {
                if ((place_free(x, (y + 1)) && vspeed > 0) || collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_bortice, 0, 0))
                    other.m_subimagen = 3
                else
                    other.m_subimagen = 0
            }
            else if (wiggle > 12)
                other.m_subimagen = 3
            else if (wiggle > 8)
                other.m_subimagen = 2
            else if (wiggle > 4)
                other.m_subimagen = 1
            else if (wiggle > 1)
                other.m_subimagen = 2
            else if (wiggle == 1)
                other.m_subimagen = 1
        }
    }
    if (collision_rectangle(bbox_left, (bbox_bottom + 8), bbox_right, (bbox_bottom + vspeed), obj_lava_water_drybones, 0, 0) && instance_exists(obj_mario) && instance_exists(obj_lava_water) && obj_mario.y < (obj_lava_water.y - 28) && obj_mario.state == 1)
    {
        if (global.apariencia == 3)
            image_speed = (obj_mario.image_speed / 4)
        else
            image_speed = obj_mario.image_speed
        if (global.apariencia != 0)
        {
            if (salpi == 0)
            {
                salpicadura = 1
                salpi = 1
                alarm[8] = 1
            }
        }
        else
        {
            salpi = 0
            salpicadura = 0
        }
        if ((global.bg_level == "forest" || global.bg_level == "beach") && global.apariencia == 2)
        {
            if (!audio_is_playing(snd_chapoteo_agua))
                audio_play_sound(snd_chapoteo_agua, 0, false)
        }
        else if (global.bg_level == "castle" && global.apariencia == 2)
        {
            if (!audio_is_playing(snd_chapoteo_lava))
                audio_play_sound(snd_chapoteo_lava, 0, false)
        }
        else if (global.bg_level == "mountain" && global.modo_noche == 1 && global.apariencia == 2)
        {
            if (!audio_is_playing(snd_chapoteo_lava))
                audio_play_sound(snd_chapoteo_lava, 0, false)
        }
    }
    else
    {
        salpi = 0
        salpicadura = 0
        if (invincible == 0)
        {
            image_speed = 0
            image_index = 0
        }
    }
    if (instance_exists(obj_mario) && invincible == 1)
    {
        x = obj_mario.x
        y = (obj_mario.y + 16)
        obj_mario.hspeed = 0
    }
    else
    {
        x = obj_mario.x
        y = (obj_mario.y + 16)
    }
    obj_mario.visible = false
    obj_mario.holding = 3
    if (keyboard_check_pressed(global.abajo) && obj_mario.vspeed == 0 && obj_mario.state < 2 && (!(collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_clown, 0, 0))) && (!(collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_clown_fire, 0, 0))) && invincible == 0 && (!(collision_rectangle(bbox_left, (bbox_bottom + 8), bbox_right, (bbox_bottom + vspeed), obj_lava_water_drybones, 0, 0))) && instance_exists(obj_mario))
    {
        audio_play_sound(scr_snd_break(), 0, false)
        obj_mario.invincible = 1
        obj_mario.disablecontrols = 1
        obj_mario.hspeed = 0
        switch global.apariencia
        {
            case 0:
                if (global.powerup == -77)
                    sprite_index = spr_SMB_shell_drybones_crumble_mega
                else
                    sprite_index = spr_SMB_shell_drybones_crumble
                break
            case 1:
                sprite_index = spr_SMB3_shell_drybones_crumble
                break
            case 2:
                sprite_index = spr_shell_drybones_crumble
                break
            case 3:
                sprite_index = spr_NSMBU_shell_drybones_desarmar
                break
        }

        if (global.apariencia == 3)
            image_speed = 0.5
        else
            image_speed = 0.09
        if (invincible == 0)
        {
            alarm[4] = 60
            invincible = 1
        }
    }
    if (obj_mario.state == 2 && (!(collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_bortice, 0, 0))) && (!(collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_spring, 0, 0))) && keyboard_check_pressed(global.abajo))
    {
        audio_play_sound(snd_shell_drybones_down, 0, false)
        gran_golpe = 1
        obj_mario.vspeed = 2
    }
    if (obj_mario.state == 2 && keyboard_check_pressed(global.arriba) && gran_golpe == 1)
    {
        gran_golpe = 0
        obj_mario.vspeed = -0.2
    }
    if (obj_mario.state == 2 && gran_golpe == 1 && (collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_bortice, 0, 0) || collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom + 1), obj_spring, 0, 0)))
        gran_golpe = 0
    if (stateprev == 2 && obj_mario.state != 2 && (!(collision_rectangle(bbox_left, (bbox_bottom + 8), bbox_right, (bbox_bottom + vspeed), obj_lava_water_drybones, 0, 0))) && (!(collision_rectangle(bbox_left, (bbox_bottom + 8), bbox_right, (bbox_bottom + vspeed), obj_spring, 0, 0))))
    {
        if (gran_golpe == 1 && golpe_count == 0)
        {
            audio_stop_sound(scr_snd_break())
            audio_play_sound(scr_snd_break(), 0, false)
            if (!(collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + vspeed), obj_lava_water, 0, 0)))
            {
                obj_mario.invincible = 1
                obj_mario.disablecontrols = 1
                obj_mario.hspeed = 0
                switch global.apariencia
                {
                    case 0:
                        if (global.powerup == -77)
                            sprite_index = spr_SMB_shell_drybones_crumble_mega
                        else
                            sprite_index = spr_SMB_shell_drybones_crumble
                        break
                    case 1:
                        sprite_index = spr_SMB3_shell_drybones_crumble
                        break
                    case 2:
                        sprite_index = spr_shell_drybones_crumble
                        break
                    case 3:
                        sprite_index = spr_NSMBU_shell_drybones_desarmar
                        break
                }

                if (global.apariencia == 3)
                    image_speed = 0.5
                else
                    image_speed = 0.09
                if (invincible == 0)
                {
                    alarm[4] = 60
                    invincible = 1
                }
            }
            var block = collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_blockparent, 0, 0)
            if block
            {
                with (block)
                {
                    if (object_index != obj_noteblock && object_index != obj_musicblock && object_index != obj_noteblock_s && ready == 0)
                        event_user(3)
                }
            }
            alarm[3] = 10
            golpe_count = 1
        }
    }
    stateprev = obj_mario.state
}
else if instance_exists(obj_player_goal_smb3)
{
    x = obj_player_goal_smb3.x
    y = (obj_player_goal_smb3.y + 16)
    obj_player_goal_smb3.visible = false
    m_sprite = scr_mario_drybones()
    m_subimagen = 0
    image_speed = 0
    image_index = 0
}
else if (instance_exists(obj_player_goal_smw) && obj_player_goal_smw.object_index != obj_player_goal_smw_castle)
{
    x = obj_player_goal_smw.x
    y = (obj_player_goal_smw.y + 16)
    obj_player_goal_smw.visible = false
    image_speed = 0
    image_index = 0
    if (obj_player_goal_smw.pose == 1)
    {
        m_sprite = scr_mario_drybones_goal()
        if (obj_player_goal_smw.helmet == 1)
        {
            with (obj_helmet)
                instance_destroy()
            m_subimagen = 1
        }
        else if (obj_player_goal_smw.helmet == 2)
        {
            with (obj_helmet_spiny)
                instance_destroy()
            m_subimagen = 2
        }
        else
            m_subimagen = 0
    }
    else
    {
        m_sprite = scr_mario_drybones()
        m_subimagen = 0
    }
}
else if instance_exists(obj_player_goal_smw_castle)
{
    x = obj_player_goal_smw_castle.x
    y = (obj_player_goal_smw_castle.y + 16)
    obj_player_goal_smw_castle.visible = false
    m_sprite = scr_mario_drybones()
    m_subimagen = 0
    image_speed = 0
    image_index = 0
}
