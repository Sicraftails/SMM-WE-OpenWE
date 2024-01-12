function scr_bg_mountain() {
	switch global.apariencia
	{
	    case 0:
	        if (global.modo_noche == 0)
	            return bg_SMB_mountain;
	        else
	            return bg_SMB_volcano;
	        break
	    case 1:
	        if (global.modo_noche == 0)
	            return bg_SMB3_mountain;
	        else
	            return bg_SMB3_volcano;
	        break
	    case 2:
	        if (global.modo_noche == 0)
	            return bg_mountain;
	        else
	            return bg_volcano_1;
	        break
	    case 3:
	        if (global.modo_noche == 0)
	            return bg_NSMBU_mountain_0;
	        else
	            return bg_NSMBU_volcano_0;
	        break
            
	    case 4:
	        if (global.modo_noche == 0)
	            return bg_SMB_ground;
	        else
	            return bg_SMB_night;
	        break
	    default:
	        return bg_ground;
	}




}
