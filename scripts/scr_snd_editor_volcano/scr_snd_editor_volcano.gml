function scr_snd_editor_volcano() {
	switch global.apariencia
	{
	    case 0:
	        return snd_SMB_editor;
	    case 1:
	        return snd_SMB3_editor;
	    case 2:
	        return snd_editor_overworld;
	    case 3:
	        return snd_NSMBU_editor_volcano;
	}




}
