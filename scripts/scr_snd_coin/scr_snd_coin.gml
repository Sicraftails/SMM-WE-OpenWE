function scr_snd_coin() {
	switch global.apariencia
	{
        case 0:
            return snd_SMB3_coin;
        case 1:
            return snd_SMB3_coin;
        case 2:
            return snd_coin;
        case 3:
            return snd_NSMBU_coin;
	}




}
