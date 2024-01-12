function scr_snd_pipes() {
    switch global.apariencia
    {
        case 0:
            return snd_SMB3_powerdown;
        case 1:
            return snd_SMB3_powerdown;
        case 2:
            return snd_warp;
        case 3:
            return snd_SMB3_powerdown;
	}




}
