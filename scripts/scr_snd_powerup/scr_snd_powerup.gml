function scr_snd_powerup() {
	switch global.apariencia
	{
        case 0:
            return snd_SMB3_powerup;
        case 1:
            return snd_SMB3_powerup;
        case 2:
            return snd_powerup;
        case 3:
		if (object_index == obj_propellershroom)
            return snd_NSMBU_powerup_helice;
		else if (object_index == obj_penguin_suit)
            return snd_NSMBU_powerup_penguinsuit;
		else
			return snd_NSMBU_powerup;
		break
	}




}
