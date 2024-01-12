function scr_snd_door_close() {
	switch global.apariencia
	{
        case 0:
            return snd_SMB3_door_close;
        case 1:
            return snd_SMB3_door_close;
        case 2:
            return snd_door_close;
        case 3:
            return snd_NSMBU_door_close;
	}




}
