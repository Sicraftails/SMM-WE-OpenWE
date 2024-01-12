if (obj_levelmanager.editor == 0)
{
    audio_stop_sound(scr_snd_clown_damage())
    audio_play_sound(scr_snd_clown_damage(), 0, false)
    enablecontrol = 0
    alarm[2] = 180
    alarm[0] = -1
    sprite_index = s_clown_damage
    if ((other.bbox_left + (bbox_right / 2)) < (bbox_left + (bbox_right / 2)))
    {
        hspeed = 1
        vspeed = -1
    }
    else if ((other.bbox_left + (bbox_right / 2)) > (bbox_left + (bbox_right / 2)))
    {
        hspeed = -1
        vspeed = -1
    }
    else if ((other.bbox_bottom + (bbox_top / 2)) < (bbox_bottom + (bbox_top / 2)))
    {
        hspeed = 1
        vspeed = -1
    }
    else if ((other.bbox_bottom + (bbox_top / 2)) > (bbox_bottom + (bbox_top / 2)))
    {
        hspeed = -1
        vspeed = 1
    }
}
