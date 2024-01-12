var col_one_left, col_one_right;
if (rotten == 0)
    event_inherited()
else
{
    if ((hspeed < 0 && collision_rectangle((bbox_left + (hspeed * 2)), (bbox_top + 4), (bbox_left + (hspeed * 2)), (bbox_bottom - 1), obj_solid, 0, 0)) || (hspeed > 0 && collision_rectangle((bbox_right + (hspeed * 2)), (bbox_top + 4), (bbox_right + (hspeed * 2)), (bbox_bottom - 1), obj_solid, 0, 0)) || (hspeed < 0 && collision_rectangle((bbox_left + (hspeed * 2)), (bbox_top + 4), (bbox_left + (hspeed * 2)), (bbox_bottom - 1), obj_physicssolid, 0, 0)) || (hspeed > 0 && collision_rectangle((bbox_right + (hspeed * 2)), (bbox_top + 4), (bbox_right + (hspeed * 2)), (bbox_bottom - 1), obj_physicssolid, 0, 0)) || (hspeed < 0 && collision_rectangle((bbox_left + (hspeed * 2)), (bbox_top + 4), (bbox_left + (hspeed * 2)), (bbox_bottom - 1), obj_solidphy, 0, 0)) || (hspeed > 0 && collision_rectangle((bbox_right + (hspeed * 2)), (bbox_top + 4), (bbox_right + (hspeed * 2)), (bbox_bottom - 1), obj_solidphy, 0, 0)) || (hspeed < 0 && collision_rectangle((bbox_left + (hspeed * 2)), (bbox_top + 4), (bbox_left + (hspeed * 2)), (bbox_bottom - 1), obj_onewaygate_right, 0, 0)) || (hspeed > 0 && collision_rectangle((bbox_right + (hspeed * 2)), (bbox_top + 4), (bbox_right + (hspeed * 2)), (bbox_bottom - 1), obj_onewaygate_left, 0, 0)))
    {
        col_one_left = collision_rectangle(bbox_right, (bbox_top + 1), (bbox_right + 1), (bbox_bottom - 4), obj_onewaygate_left, 0, 0)
        col_one_right = collision_rectangle((bbox_left - 1), (bbox_top + 1), bbox_left, (bbox_bottom - 4), obj_onewaygate_right, 0, 0)
        if (hspeed > 0 && col_one_left)
        {
            with (col_one_left)
            {
                rot = 1
                event_user(0)
            }
        }
        if (hspeed < 0 && col_one_right)
        {
            with (col_one_right)
            {
                rot = 1
                event_user(0)
            }
        }
        if (delay == 0 && gravity == 0)
        {
            if (swimming == 1)
            {
                vspeed = -2.4
                audio_stop_sound(snd_rotten)
                audio_play_sound(snd_rotten, 0, false)
            }
            else
            {
                vspeed = -4.8
                audio_stop_sound(snd_rotten)
                audio_play_sound(snd_rotten, 0, false)
            }
            delay = 6
            y--
        }
    }
    if (hspeed < 0 && collision_rectangle((bbox_left + hspeed), (bbox_top + 4), (bbox_left + hspeed), (bbox_bottom - 1), obj_solid, 0, 0))
        x++
    if (hspeed > 0 && collision_rectangle((bbox_right + hspeed), (bbox_top + 4), (bbox_right + hspeed), (bbox_bottom - 1), obj_solid, 0, 0))
        x--
    if (hspeed < 0 && collision_rectangle((bbox_left + hspeed), (bbox_top + 4), (bbox_left + hspeed), (bbox_bottom - 1), obj_physicssolid, 0, 0))
        x++
    if (hspeed > 0 && collision_rectangle((bbox_right + hspeed), (bbox_top + 4), (bbox_right + hspeed), (bbox_bottom - 1), obj_physicssolid, 0, 0))
        x--
    if (hspeed < 0 && collision_rectangle((bbox_left + hspeed), (bbox_top + 4), (bbox_left + hspeed), (bbox_bottom - 1), obj_solidphy, 0, 0))
        x++
    if (hspeed > 0 && collision_rectangle((bbox_right + hspeed), (bbox_top + 4), (bbox_right + hspeed), (bbox_bottom - 1), obj_solidphy, 0, 0))
        x--
    if (hspeed < 0 && collision_rectangle((bbox_left + hspeed), (bbox_top + 4), (bbox_left + hspeed), (bbox_bottom - 1), obj_onewaygate_right, 0, 0))
        x++
    if (hspeed > 0 && collision_rectangle((bbox_right + hspeed), (bbox_top + 4), (bbox_right + hspeed), (bbox_bottom - 1), obj_onewaygate_left, 0, 0))
        x--
}

