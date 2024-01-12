if instance_exists(obj_frozenmario)
    event_user(0)
if instance_exists(obj_mario)
{
    if (obj_mario.state != 2 && obj_mario.state != 3)
    {
        m_sprite = scr_mario_shoe()
        if (obj_mario.isduck == 1)
            m_subimagen = 1
        else
            m_subimagen = 0
    }
    else if (global.powerup != -39)
    {
        m_sprite = scr_mario_shoe()
        if (obj_mario.isduck == 1)
            m_subimagen = 1
        else
            m_subimagen = 0
    }
    else if (global.powerup == -39)
    {
        m_sprite = scr_mario_shoe_fall()
        if (obj_mario.wiggle == 0)
        {
            if (obj_mario.vspeed > 0 || collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_bortice, 0, 0))
                m_subimagen = 3
            else
                m_subimagen = 0
        }
        else if (obj_mario.wiggle > 12)
            m_subimagen = 3
        else if (obj_mario.wiggle > 8)
            m_subimagen = 2
        else if (obj_mario.wiggle > 4)
            m_subimagen = 1
        else if (obj_mario.wiggle > 1)
            m_subimagen = 2
        else if (obj_mario.wiggle == 1)
            m_subimagen = 1
    }
    x = obj_mario.x
    y = (obj_mario.y + 16)
    obj_mario.visible = false
    obj_mario.holding = 3
    if (sprite_index == spr_SMB_kuriboshoe2 || sprite_index == spr_kuriboshoe2)
    {
        if (obj_mario.state == 2 && keyboard_check_pressed(global.abajo))
        {
            gran_golpe = 1
            obj_mario.vspeed = 3
            obj_mario.hspeed = 0
        }
        if (stateprev == 2 && obj_mario.state != 2)
        {
            audio_play_sound(snd_kuriboshoe_steps, 0, false)
            if (gran_golpe == 1 && golpe_count == 0)
            {
                with (instance_create(x, y, obj_smoke_shoe))
                    hspeed = 2.6
                with (instance_create(x, y, obj_smoke_shoe))
                {
                    hspeed = -2.6
                    direct = -1
                }
                audio_play_sound(snd_stomp, 0, false)
                var block = collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_blockparent, 0, 0)
                if block
                {
                    with (block)
                    {
                        if (object_index == obj_flipblock)
                            alarm[2] = 2
                        else if (ready == 0)
                        {
                            ready = 1
                            vspeed = -2
                            if (object_index == obj_noteblock)
                                alarm[0] = 7
                            else
                                alarm[0] = 4
                            event_user(0)
                        }
                    }
                }
                var block_ice = collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_block_ice, 0, 0)
                if block_ice
                {
                    with (block_ice)
                        alarm[0] = 1
                }
                var block_rock = collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_block_rock, 0, 0)
                if block_rock
                {
                    with (block_rock)
                        alarm[0] = 1
                }
                alarm[3] = 10
                golpe_count = 1
            }
        }
        stateprev = obj_mario.state
    }
    else if (global.ycolor == 3)
    {
        if (keyboard_check(vk_shift) && obj_mario.isswim == 0)
        {
            if (flying == 0 && obj_mario.vspeed > 0)
            {
                flying = 1
                alarm[1] = 1
            }
            if (flying == 1)
            {
                with (obj_mario)
                {
                    if (!(collision_rectangle(bbox_left, (bbox_top - 3), bbox_right, bbox_top, obj_solid, 1, 0)))
                        vspeed = -2
                }
            }
        }
        else
            flying = 0
    }
}
else if instance_exists(obj_player_goal_smb3)
{
    x = obj_player_goal_smb3.x
    y = (obj_player_goal_smb3.y + 16)
    obj_player_goal_smb3.visible = false
    m_sprite = scr_mario_shoe()
}
else if instance_exists(obj_player_goal_smw_castle)
{
    x = obj_player_goal_smw_castle.x
    y = (obj_player_goal_smw_castle.y + 16)
    obj_player_goal_smw_castle.visible = false
    m_sprite = scr_mario_shoe()
}
