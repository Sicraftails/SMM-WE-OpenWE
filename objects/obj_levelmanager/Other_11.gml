if (switchon == 0)
{
    switchon = 1
    alarm[1] = 1
    audio_stop_sound(scr_snd_switchsong())
    pswitch_music = audio_play_sound(scr_snd_switchsong(), 1, true)
    audio_stop_sound(scr_snd_starman())
    audio_stop_sound(snd_n64)
    audio_stop_sound(scr_music_link())
}
else if (pswitch_music != snd_SMB_music_ground)
    audio_sound_set_track_position(pswitch_music, 0)

