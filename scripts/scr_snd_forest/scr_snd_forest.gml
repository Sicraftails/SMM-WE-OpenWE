function scr_snd_forest() {

	    switch global.apariencia
	    {
	        case 0:
	            if (global.modo_noche == 0)
	                return snd_SMB_music_forest;
	            else
	                return snd_SMB_music_forest_night;
	            break
	        case 1:
	            if (global.modo_noche == 0)
	                return snd_SMB3_music_ground;
	            else
	                return snd_SMB3_music_ground_night;
	            break
	        case 2:
	            if (global.modo_noche == 0)
	                return snd_music_forest;
	            else
	                return snd_music_forest_night;
	            break
	        case 3:
	            if (global.modo_noche == 0)
	                return snd_NSMBU_music_forest;
	            else
	                return snd_NSMBU_music_forest_night;
	            break
	    }





}
