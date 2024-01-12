function scr_bg_airship() {
	switch global.apariencia
	{
	    case 0:
	        if (global.modo_noche == 0)
	            return bg_SMB_airship;
	        else
	            return bg_SMB_night_1;
	        break
	    case 1:
	        if (global.modo_noche == 0)
	            return bg_SMB3_airship;
	        else
	            return bg_SMB3_night_1;
	        break
	    case 2:
	        if (global.modo_noche == 0)
	            return bg_airship;
	        else
	            return bg_night_1;
	        break
	    case 3:
	        if (global.modo_noche == 0)
	            return bg_NSMBU_sky_0;
	        else
	            return bg_NSMBU_airship_night_0;
	        break
	    case 4:
	        if (global.modo_noche == 0)
	            return bg_SMB_airship;
	        else
	            return bg_SMB_night;
	        break
	    default:
	        return bg_ground;
	}




}
