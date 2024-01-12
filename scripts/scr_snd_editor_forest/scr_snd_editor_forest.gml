function scr_snd_editor_forest() {
	switch global.apariencia
	{
	    case 0:
	        return snd_SMB_editor_forest;
	    case 1:
	        return snd_SMB3_editor_forest;
	    case 2:
	        return snd_editor_forest;
	    case 3:
	        return snd_NSMBU_editor_forest;
	}




}
