function scr_step_sounds(argument0, argument1) {
	switch argument0
	{
	    case 0:
	        if (argument1 == 0)
	            audio_play_sound(snd_NSMBU_step_normal1, 0, false)
	        else
	            audio_play_sound(snd_NSMBU_step_normal2, 0, false)
	        break
	    case 1:
	        if (argument1 == 0)
	            audio_play_sound(snd_NSMBU_step_block1, 0, false)
	        else
	            audio_play_sound(snd_NSMBU_step_block2, 0, false)
	        break
	    case 2:
	        if (argument1 == 0)
	            audio_play_sound(snd_NSMBU_step_airship, 0, false)
	        else
	            audio_play_sound(snd_NSMBU_step_airship2, 0, false)
	        break
	}




}
