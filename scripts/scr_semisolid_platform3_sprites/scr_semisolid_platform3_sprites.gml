function scr_semisolid_platform3_sprites() {
	if (global.apariencia == 0)
	{
	    switch global.bg_level
	    {
	        case "ground":
	            return spr_SMB_ssp3_overworld;
	        case "underground":
	            return spr_SMB_ssp3_underground;
	        case "underwater":
	            return spr_SMB_ssp3_underwater;
	        case "desert":
	            return spr_SMB_ssp3_desert;
	        case "snow":
	            if (global.modo_noche == 1)
	                return spr_SMB_ssp3_snow_night;
	            else
	                return spr_SMB_ssp3_snow;
	        case "sky":
	            return spr_SMB_ssp3_sky;
	        case "forest":
	            return spr_SMB_ssp3_underwater;
	        case "ghost":
	            return spr_SMB_ssp3_ghost;
	        case "airship":
	            return spr_SMB_ssp3_airship;
	        case "castle":
	            return spr_SMB_ssp3_castle;
	        case "fall":
	            return spr_SMB_ssp3_fall;
	        case "beach":
	            return spr_SMB_ssp3_beach;
	        case "mountain":
	            if (global.modo_noche == 1)
	                return spr_SMB_ssp3_volcano;
	            else
	                return spr_SMB_ssp3_mountain;
				break
	    }

	}
	else if (global.apariencia == 1)
	{
	    switch global.bg_level
	    {
	        case "ground":
	            return spr_SMB3_ssp3_overworld;
	        case "underground":
	            return spr_SMB3_ssp3_underground;
	        case "underwater":
	            return spr_SMB3_ssp3_underwater;
	        case "desert":
	            return spr_SMB3_ssp3_desert;
	        case "snow":
	            if (global.modo_noche == 1)
	                return spr_SMB3_ssp3_snow_night;
	            else
	                return spr_SMB3_ssp3_snow;
	        case "sky":
	            return spr_SMB3_ssp3_sky;
	        case "forest":
	            return spr_SMB3_ssp3_forest;
	        case "ghost":
	            return spr_SMB3_ssp3_ghost;
	        case "airship":
	            return spr_SMB3_ssp3_airship;
	        case "castle":
	            return spr_SMB3_ssp3_castle;
	        case "fall":
	            return spr_SMB3_ssp3_autumn;
	        case "beach":
	            if (global.modo_noche == 1)
	                return spr_SMB3_ssp3_beach_night;
	            else
	                return spr_SMB3_ssp3_beach;
	            break
	        case "mountain":
	            if (global.modo_noche == 1)
	                return spr_SMB3_ssp3_volcano;
	            else
	                return spr_SMB3_ssp3_mountain;
	            break
	    }

	}
	else if (global.apariencia == 2)
	{
	    switch global.bg_level
	    {
	        case "ground":
	            return spr_ssp3_overworld;
	        case "underground":
	            return spr_ssp3_underground;
	        case "underwater":
	            return spr_ssp3_underwater;
	        case "desert":
	            return spr_ssp3_desert;
	        case "snow":
	            if (global.modo_noche == 1)
	                return spr_ssp3_snow_night;
	            else
	                return spr_ssp3_snow;
	        case "sky":
	            return spr_ssp3_sky;
	        case "forest":
	            return spr_ssp3_forest;
	        case "ghost":
	            return spr_ssp3_ghost;
	        case "airship":
	            return spr_ssp3_airship;
	        case "castle":
	            return spr_ssp3_castle;
	        case "fall":
	            return spr_ssp3_autumn;
	        case "beach":
	            return spr_ssp3_beach;
	        case "mountain":
	            if (global.modo_noche == 1)
	                return spr_ssp3_volcano;
	            else
	                return spr_ssp3_mountain;
	    }

	}
	else if (global.apariencia == 3)
	{
	    switch global.bg_level
	    {
            case "ground":
                if (global.modo_noche == 1)
                    return spr_NSMBU_ssp3_overworld_night;
                else
                    return spr_NSMBU_ssp3_overworld;
	        case "underground":
	            return spr_NSMBU_ssp3_underground;
	        case "underwater":
	            return spr_NSMBU_ssp3_underwater;
            case "desert":
                if (global.modo_noche == 1)
                    return spr_NSMBU_ssp3_desert_night;
                else
                    return spr_NSMBU_ssp3_desert;
	        case "snow":
	            if (global.modo_noche == 1)
	                return spr_NSMBU_ssp3_snow_night;
	            else
	                return spr_NSMBU_ssp3_snow;
	        case "sky":
	            return spr_NSMBU_ssp3_sky;
	        case "forest":
                if (global.modo_noche == 1)
                    return spr_NSMBU_ssp3_forest_night;
                else
                    return spr_NSMBU_ssp3_forest;
	        case "ghost":
	            return spr_NSMBU_ssp3_ghost;
	        case "airship":
	            if (global.modo_noche == 1)
	                return spr_NSMBU_ssp3_airship_night;
	            else
	                return spr_NSMBU_ssp3_airship;
	        case "castle":
	            return spr_NSMBU_ssp3_castle;
	        case "fall":
			if (global.modo_noche == 1)
	                return spr_NSMBU_ssp3_autumn_night;
	            else
	                return spr_NSMBU_ssp3_autumn;
	        case "beach":
	            if (global.modo_noche == 1)
	                return spr_NSMBU_ssp3_beach_night;
	            else
	                return spr_NSMBU_ssp3_beach;
	        case "mountain":
	            if (global.modo_noche == 1)
	                return spr_NSMBU_ssp3_castle;
	            else
	                return spr_NSMBU_ssp3_underground;
			break
	    }

	}
}