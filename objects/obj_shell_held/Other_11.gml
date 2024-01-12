if (sprite_index == spr_SMB_shell_empty_spiny || sprite_index == spr_SMB3_shell_spiny_empty || sprite_index == spr_shell_spiny_empty)
{
    if (obj_mario.stompstyle == 1)
    {
        with (other.id)
            event_user(1)
        audio_play_sound(snd_stomp, 0, false)
        instance_create(other.x, (other.y + 22), obj_spinthump)
    }
    else
    {
        with (obj_mario)
            event_user(0)
    }
}
else if (mytopid == obj_lighting)
{
    if (sprite_index == spr_NSMBU_shell_buzzy_empty || sprite_index == spr_shell_buzzy_empty || sprite_index == spr_SMB3_shell_empty || sprite_index == spr_SMB3_shell_empty_night || sprite_index == spr_SMB_shell_empty || sprite_index == spr_SMB_shell_empty_night)
    {
        with (instance_create(x, y, obj_shell_empty))
            inwall = 1
    }
    else
    {
        with (instance_create(x, y, obj_shell))
        {
            sprite_index = other.sprite_index
            flip = other.flip
            inwall = 1
            if (global.apariencia == 2)
            {
                if (other.koopainside < 0)
                {
                    koopainside = other.koopainside
                    alarm[3] = 540
                    alarm[4] = 600
                }
            }
            else
            {
                alarm[3] = 540
                alarm[4] = 640
            }
            if (other.koopainside == 1 || other.koopainside == 2)
                koopainside = 0
        }
    }
    if (koopainside == 1)
    {
        with (instance_create((x - 8), y, obj_beachkoopa))
        {
            sprite_index = spr_beachkoopa
            if ((obj_mario.bbox_left + (bbox_right / 2)) < (bbox_left + (bbox_right / 2)))
                hspeed = 3
            else if ((obj_mario.bbox_left + (bbox_right / 2)) > (bbox_left + (bbox_right / 2)))
                hspeed = -3
            alarm[11] = 30
            ready = 0
        }
    }
    else if (koopainside == 2)
    {
        with (instance_create((x - 8), y, obj_beachkoopa_red))
        {
            sprite_index = spr_beachkoopa_red
            if ((obj_mario.bbox_left + (bbox_right / 2)) < (bbox_left + (bbox_right / 2)))
                hspeed = 3
            else if ((obj_mario.bbox_left + (bbox_right / 2)) > (bbox_left + (bbox_right / 2)))
                hspeed = -3
            alarm[11] = 30
            ready = 0
        }
    }
    instance_destroy()
}

