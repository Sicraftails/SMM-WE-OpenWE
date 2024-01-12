function scr_snd_getcheckpoint() {
	switch global.apariencia
	{
        case 0:
            return snd_SMB3_whistle;
        case 1:
            return snd_SMB3_whistle;
        case 2:
            return snd_whistle;
        case 3:
            return snd_NSMBU_whistle;
	}




}
