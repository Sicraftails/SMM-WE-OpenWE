function scr_snd_starman() {
	switch global.apariencia
	{
        case 0:
            return snd_SMB_starman;
        case 1:
            return snd_SMB3_starman;
        case 2:
            return snd_starman;
        case 3:
            return snd_NSMBU_starman;
	}




}
