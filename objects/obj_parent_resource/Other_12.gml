if (global.cursor == 2 and !place_meeting(x,y,obj_erase))
{
    audio_stop_sound(snd_erase_clean)
    audio_play_sound(snd_erase_clean, 0, false)
}
if !place_meeting(x,y,obj_erase)
	instance_destroy()