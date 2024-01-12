if (isswim == 0 && state == 1 && isduck == 0 && skidnow == 0)
{
    if (pmeter > 6)
        var steps_sound = 9
    else if (abs(hspeed) <= 1)
        steps_sound = 16
    else if (abs(hspeed) <= 1.6)
        steps_sound = 12
    else if (abs(hspeed) > 1.6)
        steps_sound = 12
    if (steps_count > 0)
    {
        steps_count--
        exit
    }
    if (global.powerup == -38)
    {
        if (step_inter == 0)
            audio_play_sound(snd_NSMBU_step_penguin1, 0, false)
        else
            audio_play_sound(snd_NSMBU_step_penguin2, 0, false)
    }
    else
    {
        var c_model = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + 1), obj_modelsolid, 0, 0)
        var c_start_goal = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + 1), obj_groundparent, 0, 0)
        if (global.bg_level == "ground" || global.bg_level == "forest" || global.bg_level == "beach" || global.bg_level == "fall" || global.bg_level == "snow" || global.bg_level == "sky")
        {
            if (c_model || c_start_goal)
                scr_step_sounds(0, step_inter)
            else
                scr_step_sounds(1, step_inter)
        }
        else if (global.bg_level == "airship")
        {
            if c_start_goal
                scr_step_sounds(0, step_inter)
            else if c_model
                scr_step_sounds(2, step_inter)
            else
                scr_step_sounds(1, step_inter)
        }
        else
            scr_step_sounds(1, step_inter)
    }
    if (step_inter == 0)
        step_inter = 1
    else
        step_inter = 0
    steps_count = steps_sound
}
else
{
    steps_count = 0
    step_inter = 0
}


