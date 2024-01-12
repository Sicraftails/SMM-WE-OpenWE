if (global.timer <= 0)
    global.timer = 0
else
{
    if (global.timer > 4)
    {
        alarm[1] = 1
        score += 250
        global.timer -= 8
    }
    else if (global.timer < 5 && global.timer > 0)
    {
        alarm[1] = 2
        score += 50
        global.timer--
    }
    if (ready3 == 0)
    {
        if (global.timer > 0)
        {
            ready3 = 1
            audio_play_sound(count[apariencia], 0, true)
        }
        else
        {
            ready3 = 2
			if apariencia == 3
				audio_play_sound(count_end[apariencia], 0, false)
			else
				audio_stop_sound(count[apariencia])
        }
    }
    else if (global.timer < 1 && ready3 == 1)
    {
        ready3 = 2
		if apariencia == 3{
		audio_stop_sound(snd_NSMBU_count)
        audio_play_sound(count_end[apariencia], 0, false)
		}
		else
			audio_stop_sound(count[apariencia])
    }
}

