///@description Initialize events
if (obj_levelmanager.editor == 1)
{
    audio_stop_sound(snd_change_night_day)
    audio_play_sound(snd_change_night_day, 0, false)
	image_index = global.modo_noche
    event_user(1)
}
