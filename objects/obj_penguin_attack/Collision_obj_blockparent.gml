with (other.id)
{
    if (ready == 0)
    {
        if (object_index == obj_flipblock && global.apariencia != 2)
        {
            audio_play_sound(snd_bump, 0, false)
            alarm[2] = 1
        }
        else if (object_index == obj_noteblock)
        {
            audio_play_sound(snd_bump, 0, false)
            ready = 1
            vspeed = -1.5
            event_user(0)
        }
        else
        {
            audio_play_sound(snd_bump, 0, false)
            ready = 1
            vspeed = -2
            alarm[0] = 4
            event_user(0)
        }
    }
}

