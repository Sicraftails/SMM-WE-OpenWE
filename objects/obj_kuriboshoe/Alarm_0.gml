if instance_exists(obj_mario)
{
    if (obj_mario.state == 1 && (!(collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_lava_water_drybones, 0, 0))))
    {
        switch offsetnext
        {
            case 0:
                offset = 1
                break
            case 1:
                offset = 2
                break
            case 2:
                offset = 3
                break
            case 3:
                offset = 4
                break
            case 4:
                offset = 5
                break
            case 5:
                offset = 4
                break
            case 6:
                offset = 3
                break
            case 7:
                offset = 2
                break
            case 8:
                offset = 1
                break
            case 9:
                offset = 0
                break
        }

        offsetnext++
        if (offsetnext == 10)
        {
            offsetnext = 0
            if (global.apariencia == 3 && object_index == obj_kuribo_drybones && (!(collision_rectangle(bbox_left, (bbox_bottom + 8), bbox_right, (bbox_bottom + vspeed), obj_lava_water_drybones, 0, 0))))
            {
                audio_stop_sound(snd_NSMBU_step_block1)
                audio_play_sound(snd_NSMBU_step_block2, 0, false)
            }
            else if (object_index == obj_kuriboshoe2)
            {
                audio_stop_sound(snd_kuriboshoe_steps)
                audio_play_sound(snd_kuriboshoe_steps, 0, false)
            }
        }
    }
    else
    {
        offsetnext = 0
        offset = 0
    }
}
else if instance_exists(obj_player_goal_smb3)
{
    if (obj_player_goal_smb3.hspeed != 0)
    {
        switch offsetnext
        {
            case 0:
                offset = 1
                break
            case 1:
                offset = 2
                break
            case 2:
                offset = 3
                break
            case 3:
                offset = 4
                break
            case 4:
                offset = 5
                break
            case 5:
                offset = 4
                break
            case 6:
                offset = 3
                break
            case 7:
                offset = 2
                break
            case 8:
                offset = 1
                break
            case 9:
                offset = 0
                break
        }

        offsetnext++
        if (offsetnext == 10)
        {
            offsetnext = 0
            if (object_index == obj_kuriboshoe2)
            {
                audio_stop_sound(snd_kuriboshoe_steps)
                audio_play_sound(snd_kuriboshoe_steps, 0, false)
            }
        }
    }
    else
    {
        offsetnext = 0
        offset = 0
    }
}
else if instance_exists(obj_player_goal_smw)
{
    if (obj_player_goal_smw.hspeed != 0)
    {
        switch offsetnext
        {
            case 0:
                offset = 1
                break
            case 1:
                offset = 2
                break
            case 2:
                offset = 3
                break
            case 3:
                offset = 4
                break
            case 4:
                offset = 5
                break
            case 5:
                offset = 4
                break
            case 6:
                offset = 3
                break
            case 7:
                offset = 2
                break
            case 8:
                offset = 1
                break
            case 9:
                offset = 0
                break
        }

        offsetnext++
        if (offsetnext == 10)
        {
            offsetnext = 0
            if (object_index == obj_kuriboshoe2)
            {
                audio_stop_sound(snd_kuriboshoe_steps)
                audio_play_sound(snd_kuriboshoe_steps, 0, false)
            }
        }
    }
    else
    {
        offsetnext = 0
        offset = 0
    }
}
alarm[0] = 2
