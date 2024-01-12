function scr_snd_powerdown() {
	switch global.apariencia
	{
        case 0:
            return snd_SMB3_powerdown;
        case 1:
            if (global.powerup == -29)
                return snd_helmet_remove;
            else
                return snd_SMB3_powerdown;
            break
        case 2:
            return snd_warp;
        case 3:
            return snd_NSMBU_powerdown;
	}




}
