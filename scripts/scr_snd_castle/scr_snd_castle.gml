function scr_snd_castle() {

	    switch global.apariencia
	    {
	        case 0:
	            if (global.modo_noche == 0)
	                return snd_SMB_music_castle;
	            else
	                return snd_SMB_music_castle_night;
	            break
	        case 1:
	            if (global.modo_noche == 0)
	                return snd_SMB3_music_castle;
	            else
	                return snd_SMB3_music_castle_night;
	            break
	        case 2:
	            if (global.modo_noche == 0)
	                return snd_music_castle;
	            else
	                return snd_music_castle_night;
	            break
	        case 3:
	            if (global.modo_noche == 0)
	                return snd_NSMBU_music_castle;
	            else
	                return snd_NSMBU_music_castle_night;
	            break
	    }




}
