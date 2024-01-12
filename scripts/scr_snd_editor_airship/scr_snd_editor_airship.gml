function scr_snd_editor_airship() {
	switch global.apariencia
	{
	    case 0:
	        return snd_SMB_editor_airship;
	    case 1:
	        return snd_SMB3_editor_airship;
	    case 2:
	        return snd_editor_airship;
	    case 3:
	        return snd_NSMBU_editor_airship;
	}




}
