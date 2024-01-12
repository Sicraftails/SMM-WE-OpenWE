function scr_snd_door_open() {
	switch global.apariencia
	{
        case 0:
            return snd_SMB3_door_open;
        case 1:
            return snd_SMB3_door_open;
        case 2:
            return snd_door;
        case 3:
            return snd_NSMBU_door_open;
	}




}
