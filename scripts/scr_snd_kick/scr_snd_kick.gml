function scr_snd_kick() {
	switch global.apariencia
	{
        case 0:
            return snd_SMB_kick;
        case 1:
            return snd_SMB3_kick;
        case 2:
            return snd_klock;
        case 3:
            return snd_NSMBU_kick;
	}




}
