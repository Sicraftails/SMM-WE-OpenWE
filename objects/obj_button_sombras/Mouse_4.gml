audio_stop_sound(snd_aceptar)
audio_play_sound(snd_aceptar, 0, false)
if (global.shadows == 0){
	global.shadows = 1
	image_index = 1
}
else if (global.shadows == 1){
	global.shadows = 0
	image_index = 0
}