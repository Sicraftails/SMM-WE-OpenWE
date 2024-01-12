var steps_sound;
switch increment
{
    case 1:
        if (gravity == 0 && ready == 1)
        {
            hspeed = (max(0, (abs(hspeed) - 0.30)) * sign(hspeed))
            if (abs(hspeed) < 0.30)
                hspeed = 0
        }
}

if (global.apariencia == 2 && hspeed != 0 && vspeed == 0)
{
    switch increment
    {
        case 1:
            steps_sound = 14
            break
        case 1.5:
            steps_sound = 10
            break
        case 2:
            steps_sound = 9
            break
    }

    if (steps_count == 0)
    {
        if (step_inter == 0)
            audio_play_sound(snd_boomboom_step1, 0, false)
        else
            audio_play_sound(snd_boomboom_step2, 0, false)
        if (step_inter == 0)
            step_inter = 1
        else
            step_inter = 0
        steps_count = steps_sound
    }
    else
        steps_count--
}
else
{
    steps_count = 0
    step_inter = 0
}

