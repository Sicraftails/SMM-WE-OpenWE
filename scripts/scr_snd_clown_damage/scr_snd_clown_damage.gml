function scr_snd_clown_damage() {
	switch global.apariencia
	{
        case 0:
            return snd_SMB3_clown_damage;
        case 1:
            return snd_SMB3_clown_damage;
        case 2:
            return snd_clown_damage;
        case 3:
            return snd_clown_damage;
	}




}
