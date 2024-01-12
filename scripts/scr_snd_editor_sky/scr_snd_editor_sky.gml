function scr_snd_editor_sky() {
	switch global.apariencia
	{
	    case 0:
	        return snd_SMB_editor_sky;
	    case 1:
	        return snd_SMB3_editor_sky;
	    case 2:
	        return snd_editor_sky;
	    case 3:
	        return snd_NSMBU_editor_sky;
	}




}
