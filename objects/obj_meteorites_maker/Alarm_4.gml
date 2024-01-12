if global.apariencia = 3
	audio_play_sound(snd_NSMBU_volcanic_rocks, 0, false)
instance_create(__view_get( e__VW.XView, 0 )+random(__view_get( e__VW.WView, 0 ) + 54)/*960)*/,__view_get( e__VW.YView, 0 )-16,obj_meteorites)
alarm[5] = 49
