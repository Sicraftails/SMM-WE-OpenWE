function scr_snd_editor_underground() {
	switch global.apariencia
	{
	    case 0:
	        return snd_SMB_editor_underground;
	    case 1:
	        return snd_SMB3_editor_underground;
	    case 2:
	        return snd_editor_underground;
	    case 3:
	        return snd_NSMBU_editor_underground;
	}




}
