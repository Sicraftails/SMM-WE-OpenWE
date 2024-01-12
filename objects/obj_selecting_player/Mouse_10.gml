if (active != 2)
{
    if (effect_hover == 0)
    {
        audio_stop_sound(snd_settings_move)
        audio_stop_sound(snd_settings_player_move)
        audio_play_sound(snd_settings_player_move, 0, false)
    }
    effect_hover = 1
}

