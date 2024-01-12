function scr_snd_oneway() {
	switch global.apariencia
	{
        case 0:
            return snd_SMB3_oneway;
        case 1:
            return snd_SMB3_oneway;
        case 2:
            return snd_oneway;
        case 3:
            return snd_NSMBU_oneway;
	}




}
