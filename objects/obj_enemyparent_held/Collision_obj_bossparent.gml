if (hspeed != 0 && held == 0 && vspeed < 0 && other.hardness < 99 && obj_levelmanager.editor == 0)
{
    audio_play_sound(scr_snd_kick(), 0, false)
    event_user(0)
}
else if ((hspeed != 0 || held == 1) && other.hardness < 99 && obj_levelmanager.editor == 0)
{
    audio_play_sound(scr_snd_kick(), 0, false)
    event_user(0)
}

