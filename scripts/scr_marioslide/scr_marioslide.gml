function scr_marioslide() {
	if (global.apariencia == 1)
	{
	    if (global.jugador == 0)
	    {
	        switch global.powerup
	        {
	            case 0:
	                return spr_SMB3_mario_small_slide;
	            case 1:
	                return spr_SMB3_mario_big_slide;
	            case 2:
	                return spr_SMB3_mario_fire_slide;
	            case -39:
	                return spr_SMB3_mario_raccoon_slide;
	        }

	    }
	    else if (global.jugador == 1)
	    {
	        switch global.powerup
	        {
	            case 0:
	                return spr_SMB3_luigi_small_slide;
	            case 1:
	                return spr_SMB3_luigi_big_slide;
	            case 2:
	                return spr_SMB3_luigi_fire_slide;
	            case -39:
	                return spr_SMB3_luigi_raccoon_slide;
	        }

	    }
	    else if (global.jugador == 2)
	    {
	        switch global.powerup
	        {
	            case 0:
	                return spr_SMB3_toad_small_slide;
	            case 1:
	                return spr_SMB3_toad_big_slide;
	            case 2:
	                return spr_SMB3_toad_fire_slide;
	            case -39:
	                return spr_SMB3_toad_raccoon_slide;
	        }

	    }
	    else if (global.jugador == 3)
	    {
	        switch global.powerup
	        {
	            case 0:
	                return spr_SMB3_toadette_small_slide;
	            case 1:
	                return spr_SMB3_toadette_big_slide;
	            case 2:
	                return spr_SMB3_toadette_fire_slide;
	            case -39:
	                return spr_SMB3_toadette_raccoon_slide;
	        }

	    }
	}
	else if (global.apariencia == 2)
	{
	    if (global.jugador == 0)
	    {
	        switch global.powerup
	        {
	            case 0:
	                return spr_mario_small_slide;
	            case 1:
	                return spr_mario_big_slide;
	            case 2:
	                return spr_mario_fire_slide;
	            case 3:
	                return spr_mario_big_slide;
	        }

	    }
	    else if (global.jugador == 1)
	    {
	        switch global.powerup
	        {
	            case 0:
	                return spr_luigi_small_slide;
	            case 1:
	                return spr_luigi_big_slide;
	            case 2:
	                return spr_luigi_fire_slide;
	            case 3:
	                return spr_luigi_big_slide;
	        }

	    }
	    else if (global.jugador == 2)
	    {
	        switch global.powerup
	        {
	            case 0:
	                return spr_toad_small_slide;
	            case 1:
	                return spr_toad_big_slide;
	            case 2:
	                return spr_toad_fire_slide;
	            case 3:
	                return spr_toad_big_slide;
	        }

	    }
	    else if (global.jugador == 3)
	    {
	        switch global.powerup
	        {
	            case 0:
	                return spr_toadette_small_slide;
	            case 1:
	                return spr_toadette_big_slide;
	            case 2:
	                return spr_toadette_fire_slide;
	            case 3:
	                return spr_toadette_big_slide;
	        }

	    }
	}



}
