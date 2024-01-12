function scr_snd_dead() {
	    switch global.apariencia
	    {
	        case 0:
	            if (global.powerup == -85)
	                return snd_SMB_link_dead
				else if (global.powerup == -50)
					return snd_SMB_superball_dead
	            else
	                return snd_SMB_dead;
	            break
	        case 1:
	            return snd_SMB3_dead;
	        case 2:
	            return snd_dead;
	        case 3:
	            return snd_NSMBU_dead;
	    }


}
