function scr_snd_mountain() {
	switch global.apariencia
	{
	    case 0:
	        if (global.modo_noche == 0)
	            return snd_SMB_music_mountain;
	        else
	            return snd_SMB_music_volcano;
	        break
	    case 1:
	        if (global.modo_noche == 0)
	            return snd_SMB3_music_mountain;
	        else
	            return snd_SMB3_music_volcano;
	        break
	    case 2:
	        if (global.modo_noche == 0)
	            return snd_music_mountain;
	        else
	            return snd_music_volcano;
	        break
	    case 3:
	        if (global.modo_noche == 0)
	            return snd_NSMBU_music_mountain;
	        else
	            return snd_NSMBU_music_volcano;
	        break
	}




}
