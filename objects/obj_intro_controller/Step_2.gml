if (ready == 1)
{
    if (y >= camera_get_view_y(view_get_camera(0)))
    {
        gravity = 0
        if (vspeed > 0)
        {
            if (vspeed > 0.5)
            {
                if (date == 0)
                    date = 1
                vspeed = ((-vspeed) / 2)
            }
            else
            {
                vspeed = 0
                y = camera_get_view_y(view_get_camera(0))
                with (obj_persistent)
                    alarm[4] = 220
                audio_play_sound(snd_SMM_intro, 0, false)
                ready = 2
            }
        }
    }
    else
    {
        gravity = 0.3
        if (vspeed > 6)
            vspeed = 6
    }
}
if (date == 1)
{
    if (alpha >= 1)
        alpha = 1
    else
        alpha += 0.25
}


