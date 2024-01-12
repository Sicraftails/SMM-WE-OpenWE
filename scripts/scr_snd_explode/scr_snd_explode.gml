function scr_snd_explode() {
	switch global.apariencia
	{
        case 0:
            return snd_SMB3_explode;
        case 1:
            return snd_SMB3_explode;
        case 2:
            return snd_explode;
        case 3:
            return snd_NSMBU_explosion;
	}




}
