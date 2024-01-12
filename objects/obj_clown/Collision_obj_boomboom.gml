if (obj_levelmanager.editor == 0)
{
    if (inmario == 1)
    {
        audio_stop_sound(snd_stomp)
        audio_play_sound(snd_stomp, 0, false)
        if ((other.bbox_left + (bbox_right / 2)) < (bbox_left + (bbox_right / 2)))
            hspeed = 1.5
        else if ((other.bbox_left + (bbox_right / 2)) > (bbox_left + (bbox_right / 2)))
            hspeed = -1.5
    }
}
