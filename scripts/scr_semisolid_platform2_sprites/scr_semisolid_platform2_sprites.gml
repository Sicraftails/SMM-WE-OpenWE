function scr_semisolid_platform2_sprites() {
	if (global.apariencia == 0)
	{
	    switch global.bg_level
	    {
	        case "ground":
	            return spr_SMB_ssp2_overworld;
	        case "underground":
	            return spr_SMB_ssp2_underground;
	        case "underwater":
	            if (global.modo_noche == 1)
	                return spr_SMB_ssp2_underwater_night;
	            else
	                return spr_SMB_ssp2_underwater;
	        case "desert":
	            return spr_SMB_ssp2_desert;
	        case "snow":
	            if (global.modo_noche == 1)
	                return spr_SMB_ssp2_snow_night;
	            else
	                return spr_SMB_ssp2_snow;
	        case "sky":
	            return spr_SMB_ssp2_sky;
	        case "forest":
	            return spr_SMB_ssp2_forest;
	        case "ghost":
	            return spr_SMB_ssp2_ghost;
	        case "airship":
	            if (global.modo_noche == 1)
	                return spr_SMB_ssp2_airship_night;
	            else
	                return spr_SMB_ssp2_airship;
	        case "castle":
	            return spr_SMB_ssp2_castle;
	        case "fall":
	            return spr_SMB_ssp2_fall;
	        case "beach":
	            return spr_SMB_ssp2_beach;
	        case "mountain":
	            if (global.modo_noche == 1)
	                return spr_SMB_ssp2_volcano;
	            else
	                return spr_SMB_ssp2_mountain;
	            break
	    }

	}
	else if (global.apariencia == 1)
	{
	    switch global.bg_level
	    {
	        case "ground":
	            return spr_SMB3_ssp2_overworld;
	        case "underground":
	            return spr_SMB3_ssp2_underground;
	        case "underwater":
	            return spr_SMB3_ssp2_underwater;
	        case "desert":
	            return spr_SMB3_ssp2_desert;
	        case "snow":
	            if (global.modo_noche == 1)
	                return spr_SMB3_ssp2_snow_night;
	            else
	                return spr_SMB3_ssp2_snow;
	        case "sky":
	            return spr_SMB3_ssp2_sky;
	        case "forest":
	            return spr_SMB3_ssp2_forest;
	        case "ghost":
	            return spr_SMB3_ssp2_ghost;
	        case "airship":
	            return spr_SMB3_ssp2_airship;
	        case "castle":
	            return spr_SMB3_ssp2_castle;
	        case "fall":
	            return spr_SMB3_ssp2_autumn;
	        case "beach":
	            if (global.modo_noche == 1)
	                return spr_SMB3_ssp2_beach_night;
	            else
	                return spr_SMB3_ssp2_beach;
	            break
	        case "mountain":
	            if (global.modo_noche == 1)
	                return spr_SMB3_ssp2_volcano;
	            else
	                return spr_SMB3_ssp2_mountain;
	            break
	    }

	}
	else if (global.apariencia == 2)
	{
	    switch global.bg_level
	    {
	        case "ground":
	            return spr_ssp2_overworld;
	        case "underground":
	            return spr_ssp2_underground;
	        case "underwater":
	            return spr_ssp2_underwater;
	        case "desert":
	            return spr_ssp2_desert;
	        case "snow":
	            if (global.modo_noche == 1)
	                return spr_ssp2_snow_night;
	            else
	                return spr_ssp2_snow;
	        case "sky":
	            return spr_ssp2_sky;
	        case "forest":
	            return spr_ssp2_forest;
	        case "ghost":
	            return spr_ssp2_ghost;
	        case "airship":
	            return spr_ssp2_airship;
	        case "castle":
	            return spr_ssp2_castle;
	        case "fall":
	            return spr_ssp2_autumn;
	        case "beach":
	            return spr_ssp2_beach;
	        case "mountain":
	            if (global.modo_noche == 1)
	                return spr_ssp2_volcano;
	            else
	                return spr_ssp2_mountain;
	            break
	    }

	}
	else if (global.apariencia == 3)
	{
	    switch global.bg_level
	    {
            case "ground":
                if (global.modo_noche == 1)
                    return spr_NSMBU_ssp2_overworld_night;
                else
                    return spr_NSMBU_ssp2_overworld;
	        case "underground":
	            return spr_NSMBU_ssp2_underground;
	        case "underwater":
	            return spr_NSMBU_ssp2_underwater;
            case "desert":
                if (global.modo_noche == 1)
                    return spr_NSMBU_ssp2_desert_night;
                else
                    return spr_NSMBU_ssp2_desert;
	        case "snow":
	            if (global.modo_noche == 1)
	                return spr_NSMBU_ssp2_snow_night;
	            else
	                return spr_NSMBU_ssp2_snow;
	        case "sky":
	            return spr_NSMBU_ssp2_sky;
	        case "forest":
                if (global.modo_noche == 1)
                    return spr_NSMBU_ssp2_forest_night;
                else
                    return spr_NSMBU_ssp2_forest;
	        case "ghost":
	            return spr_NSMBU_ssp2_ghost;
	        case "airship":
	            if (global.modo_noche == 1)
	                return spr_NSMBU_ssp2_airship_night;
	            else
	                return spr_NSMBU_ssp2_airship;
	        case "castle":
	            return spr_NSMBU_ssp2_castle;
	        case "fall":
	            return spr_NSMBU_ssp2_autumn;
	        case "beach":
	            if (global.modo_noche == 1)
	                return spr_NSMBU_ssp2_beach_night;
	            else
	                return spr_NSMBU_ssp2_beach;
	        case "mountain":
	            if (global.modo_noche == 1)
	                return spr_NSMBU_ssp2_volcano;
	            else
	                return spr_NSMBU_ssp2_mountain;
	            break
	    }

	}



}
