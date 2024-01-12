function scr_snd_pwarning() {
	switch global.apariencia
	{
        case 0:
            return snd_SMB3_explode;
        case 1:
            return snd_SMB3_explode;
        case 3:
            return snd_NSMBU_switch;
        default:
            return snd_door_close;
	}




}
