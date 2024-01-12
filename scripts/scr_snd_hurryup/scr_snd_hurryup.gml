function scr_snd_hurryup() {
	switch global.apariencia
	{
        case 0:
            return snd_SMB_hurryup;
        case 1:
            return snd_SMB3_hurryup;
        case 2:
            return snd_hurryup;
        case 3:
            return snd_NSMBU_hurryup;
	}




}
