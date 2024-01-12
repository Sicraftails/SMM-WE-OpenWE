function scr_snd_switchsong() {
	switch global.apariencia
	{
        case 0:
            return snd_SMB3_switchsong;
        case 1:
            return snd_SMB3_switchsong;
        case 2:
            return snd_switchsong;
        case 3:
            return snd_NSMBU_switchsong;
	}




}
