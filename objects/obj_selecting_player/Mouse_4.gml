if (active != 2)
{
    with (obj_selecting_player)
    {
        if (active == 1)
            active = 0
    }
    active = 1
    audio_stop_sound(snd_mario_voice)
    audio_stop_sound(snd_luigi_voice)
    audio_stop_sound(snd_toad_voice)
    audio_stop_sound(snd_letsgo_toadette)
    audio_stop_sound(snd_toadette_voice)
    switch value
    {
        case 0:
			obj_cursor.cursor = spr_cursor_mario
            audio_play_sound(snd_mario_voice, 0, false)
            break
        case 1:
			obj_cursor.cursor = spr_cursor_luigi
            audio_play_sound(snd_luigi_voice, 0, false)
            break
        case 2:
			obj_cursor.cursor = spr_cursor_toad
            audio_play_sound(snd_toad_voice, 0, false)
            break
        case 3:
			obj_cursor.cursor = spr_cursor_toadette
            audio_play_sound(choose(snd_letsgo_toadette, snd_toadette_voice), 0, false)
            break
    }

    global.jugador = value
}

