function scr_snd_editor_ghost() {
	switch global.apariencia
	{
	    case 0:
	        return snd_SMB_editor_ghost;
	    case 1:
	        return snd_SMB3_editor_ghost;
	    case 2:
	        return snd_editor_ghost;
	    case 3:
	        return snd_NSMBU_editor_ghost;
	}




}
