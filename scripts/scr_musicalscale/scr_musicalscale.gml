function scr_musicalscale(argument0, argument1, argument2) {
	var scoreobject = instance_create(round((((argument1.bbox_left + argument1.bbox_right) / 2) - 8)), round(argument1.y), obj_score)
	if (global.apariencia == 0)
	{
	    switch argument0.hitpoint
	    {
	        case 0:
	            if argument2
	                audio_play_sound(snd_step_enemy, 0, false)
	            with (scoreobject)
	                event_user(0)
	            break
	        case 1:
	            if argument2
	                audio_play_sound(snd_step_enemy, 0, false)
	            with (scoreobject)
	                event_user(1)
	            break
	        case 2:
	            if argument2
	                audio_play_sound(snd_step_enemy, 0, false)
	            with (scoreobject)
	                event_user(2)
	            break
	        case 3:
	            if argument2
	                audio_play_sound(snd_step_enemy, 0, false)
	            with (scoreobject)
	                event_user(3)
	            break
	        case 4:
	            if argument2
	                audio_play_sound(snd_step_enemy, 0, false)
	            with (scoreobject)
	                event_user(4)
	            break
	        case 5:
	            if argument2
	                audio_play_sound(snd_step_enemy, 0, false)
	            with (scoreobject)
	                event_user(5)
	            break
	        case 6:
	            if argument2
	                audio_play_sound(snd_step_enemy, 0, false)
	            with (scoreobject)
	                event_user(6)
	            break
	        default:
	            if argument2
	            {
	                audio_stop_sound(snd_step_enemy_1up)
	                audio_play_sound(snd_step_enemy_1up, 0, false)
	                with (scoreobject)
	                    event_user(7)
	            }
	    }

	}
	else if (global.apariencia == 1)
	{
	    if (argument0.hitpoint < 7)
	    {
	        if (argument1.object_index == obj_bobomb || argument1.object_index == obj_bobomb_ready)
	            audio_play_sound(snd_SMB3_kick, 0, false)
	        else
	            audio_play_sound(snd_step_enemy, 0, false)
	    }
	    switch argument0.hitpoint
	    {
	        case 0:
	            with (scoreobject)
	                event_user(0)
	            break
	        case 1:
	            with (scoreobject)
	                event_user(1)
	            break
	        case 2:
	            with (scoreobject)
	                event_user(2)
	            break
	        case 3:
	            with (scoreobject)
	                event_user(3)
	            break
	        case 4:
	            with (scoreobject)
	                event_user(4)
	            break
	        case 5:
	            with (scoreobject)
	                event_user(5)
	            break
	        case 6:
	            with (scoreobject)
	                event_user(6)
	            break
	        default:
	            if argument2
	            {
	                audio_stop_sound(snd_step_enemy_1up)
	                audio_play_sound(snd_step_enemy_1up, 0, false)
	                with (scoreobject)
	                    event_user(7)
	            }
	    }

	}
	else if (global.apariencia == 2)
	{
	    switch argument0.hitpoint
	    {
	        case 0:
	            if argument2
	                audio_play_sound(snd_kick, 0, false)
	            with (scoreobject)
	                event_user(0)
	            break
	        case 1:
	            if argument2
	                audio_play_sound(snd_kick2, 0, false)
	            with (scoreobject)
	                event_user(1)
	            break
	        case 2:
	            if argument2
	                audio_play_sound(snd_kick3, 0, false)
	            with (scoreobject)
	                event_user(2)
	            break
	        case 3:
	            if argument2
	                audio_play_sound(snd_kick4, 0, false)
	            with (scoreobject)
	                event_user(3)
	            break
	        case 4:
	            if argument2
	                audio_play_sound(snd_kick5, 0, false)
	            with (scoreobject)
	                event_user(4)
	            break
	        case 5:
	            if argument2
	                audio_play_sound(snd_kick6, 0, false)
	            with (scoreobject)
	                event_user(5)
	            break
	        case 6:
	            if argument2
	                audio_play_sound(snd_kick7, 0, false)
	            with (scoreobject)
	                event_user(6)
	            break
	        default:
	            if argument2
	            {
	                audio_stop_sound(snd_kick_1up)
	                audio_play_sound(snd_kick_1up, 0, false)
	                with (scoreobject)
	                    event_user(7)
	            }
	    }

	}
	else if (global.apariencia == 3)
	{
	    switch argument0.hitpoint
	    {
	        case 0:
	            if argument2
	                audio_play_sound(snd_NSMBU_kick_jump, 0, false)
	            with (scoreobject)
	                event_user(0)
	            break
	        case 1:
	            if argument2
	                audio_play_sound(snd_NSMBU_kick_jump, 0, false)
	            with (scoreobject)
	                event_user(1)
	            break
	        case 2:
	            if argument2
	                audio_play_sound(snd_NSMBU_kick_jump, 0, false)
	            with (scoreobject)
	                event_user(2)
	            break
	        case 3:
	            if argument2
	                audio_play_sound(snd_NSMBU_kick_jump, 0, false)
	            with (scoreobject)
	                event_user(3)
	            break
	        case 4:
	            if argument2
	                audio_play_sound(snd_NSMBU_kick_jump, 0, false)
	            with (scoreobject)
	                event_user(4)
	            break
	        case 5:
	            if argument2
	                audio_play_sound(snd_NSMBU_kick_jump, 0, false)
	            with (scoreobject)
	                event_user(5)
	            break
	        case 6:
	            if argument2
	                audio_play_sound(snd_NSMBU_kick_jump, 0, false)
	            with (scoreobject)
	                event_user(6)
	            break
	        default:
	            if argument2
	            {
	                audio_stop_sound(snd_NSMBU_kick_jump)
	                audio_play_sound(snd_NSMBU_kick_jump, 0, false)
	                audio_stop_sound(snd_NSMBU_1up_original)
	                audio_play_sound(snd_NSMBU_1up_original, 0, false)
	                with (scoreobject)
	                    event_user(7)
	            }
	    }

	}
	else
	{
	    switch argument0.hitpoint
	    {
	        case 0:
	            if argument2
	                audio_play_sound(snd_step_enemy, 0, false)
	            with (scoreobject)
	                event_user(0)
	            break
	        case 1:
	            if argument2
	                audio_play_sound(snd_step_enemy, 0, false)
	            with (scoreobject)
	                event_user(1)
	            break
	        case 2:
	            if argument2
	                audio_play_sound(snd_step_enemy, 0, false)
	            with (scoreobject)
	                event_user(2)
	            break
	        case 3:
	            if argument2
	                audio_play_sound(snd_step_enemy, 0, false)
	            with (scoreobject)
	                event_user(3)
	            break
	        case 4:
	            if argument2
	                audio_play_sound(snd_step_enemy, 0, false)
	            with (scoreobject)
	                event_user(4)
	            break
	        case 5:
	            if argument2
	                audio_play_sound(snd_step_enemy, 0, false)
	            with (scoreobject)
	                event_user(5)
	            break
	        case 6:
	            if argument2
	                audio_play_sound(snd_step_enemy, 0, false)
	            with (scoreobject)
	                event_user(6)
	            break
	        default:
	            if argument2
	            {
	                audio_stop_sound(snd_step_enemy_1up)
	                audio_play_sound(snd_step_enemy_1up, 0, false)
	                with (scoreobject)
	                    event_user(7)
	            }
	    }

	}
	argument0.hitpoint++


}
