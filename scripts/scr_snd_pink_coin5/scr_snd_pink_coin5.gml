function scr_snd_pink_coin5()
{
if global.apariencia == 2
	audio_play_sound(snd_pink_coin5, 0, false)
else if global.apariencia == 3
	audio_play_sound(snd_NSMBU_pink_coin5, 0, false)
else
	audio_play_sound(snd_SMB_pink_coin5, 0, false)
}

