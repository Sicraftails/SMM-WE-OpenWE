function scr_snd_editor_underwater() {
	switch global.apariencia
	{
	    case 0:
	        return snd_SMB_editor_underwater;
	    case 1:
	        return snd_SMB3_editor_underwater;
	    case 2:
	        return snd_editor_underwater;
	    case 3:
	        return snd_NSMBU_editor_underwater;
	}




}
