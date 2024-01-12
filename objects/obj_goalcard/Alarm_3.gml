if (global.timer <= 0)
    global.timer = 0
else
{
    if (global.timer > 4)
    {
        alarm[3] = 1
        score += 250
        global.timer -= 8
    }
    else if (global.timer < 5 && global.timer > 0)
    {
        alarm[3] = 2
        score += 50
        global.timer--
    }
    if (ready3 == 0)
    {
        if (global.timer > 0)
        {
            ready3 = 1
            audio_play_sound(snd_SMB_count, 0, true)
        }
        else
        {
            ready3 = 2
            audio_stop_sound(snd_SMB_count)
        }
    }
    else if (global.timer < 1 && ready3 == 1)
    {
        ready3 = 2
            audio_stop_sound(snd_SMB_count)
    }
}

