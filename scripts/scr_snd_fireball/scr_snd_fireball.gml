function scr_snd_fireball() {
	switch global.apariencia
	{
        case 0:
            if (global.powerup == -50)
                return snd_SMB_superball;
            else
                return snd_SMB_fireball;
            break
        case 1:
            return snd_SMB3_fireball;
        case 2:
            return snd_fireball;
        case 3:
            return snd_NSMBU_fireball;
	}




}
