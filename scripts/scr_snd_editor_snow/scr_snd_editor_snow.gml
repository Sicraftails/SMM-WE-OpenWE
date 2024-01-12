function scr_snd_editor_snow() {
	switch global.apariencia
	{
	    case 0:
	        return snd_SMB_editor_snow;
	    case 1:
	        return snd_SMB3_editor_snow;
	    case 2:
	        return snd_editor_snow;
	    case 3:
	        return snd_NSMBU_editor_snow;
	}




}
