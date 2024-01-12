if (ready4 == 1)
{
    ready = 2
    anim_pole = 0
    audio_play_sound(snd_NSMBU_clear, 0, false)
    sprite_index = scr_NSMBU_goal_pole()
    image_speed = 0.5
    image_index = 0
    alarm[6] = 3
    if (swimming == 1)
    {
        vspeed = -2.125
        hspeed = 1
    }
    else
    {
        vspeed = -3.125
        hspeed = 1.3
    }
    x += 2
    direct = 1
    if instance_exists(obj_flagpole)
    {
        with (obj_flagpole)
        {
            alarm[1] = 126
            alarm[0] = 360
        }
    }
}
else
    alarm[5] = 5
