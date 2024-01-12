function scr_snd_clown_fire_charge() {
	switch global.apariencia
	{
        case 0:
            return snd_SMB3_clown_fire_charge;
        case 1:
            return snd_SMB3_clown_fire_charge;
        case 2:
            return snd_clown_fire_charge;
        case 3:
            return snd_NSMBU_clown_charge_start;
	}




}
