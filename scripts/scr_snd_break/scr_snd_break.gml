function scr_snd_break() {
	switch global.apariencia
	{
        case 0:
            return snd_SMB3_break;
        case 1:
            return snd_SMB3_break;
        case 2:
            return snd_break;
        case 3:
            return snd_NSMBU_break;
	}




}
