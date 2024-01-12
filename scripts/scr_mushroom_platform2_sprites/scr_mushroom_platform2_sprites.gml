function scr_mushroom_platform2_sprites() {
	if (global.apariencia == 0)
	{
	    switch global.bg_level
	    {
	        case "snow":
	            if (global.modo_noche == 1)
	                return spr_SMB_mp2_snow_night;
	            else
	                return spr_SMB_mp2_snow;
	        case "underwater":
	            return spr_SMB_mp2_underwater;
	        case "beach":
	            return spr_SMB_mp2_underwater;
	        case "airship":
	            return spr_SMB_mp2_airship;
	        case "castle":
	            return spr_SMB_mp2_dark;
	        case "underground":
	            return spr_SMB_mp2_dark;
	        case "ghost":
	            return spr_SMB_mp2_dark;
	        case "mountain":
	            if (global.modo_noche == 1)
	                return spr_SMB_mp2_dark;
	            else
	                return spr_SMB_mp2;
	        default:
	            return spr_SMB_mp2;
	    }

	}
	else if (global.apariencia == 1)
	{
	    if (global.modo_noche == 1)
	    {
	        switch global.bg_level
	        {
	            case "snow":
				if (global.modo_noche == 1)
	                return spr_SMB3_mp2_snow_night;
				else
					return spr_SMB3_mp2_snow;
	            case "underwater":
	                return spr_SMB3_mp2_underwater;
	            case "beach":
	                return spr_SMB3_mp2_underwater;
	            case "airship":
	                return spr_SMB3_mp2_airship;
	            case "castle":
	                return spr_SMB3_mp2_dark;
				case "mountain":
	                return spr_SMB3_mp2_dark;
	            default:
	                return spr_SMB3_mp2_night;
	        }

	    }
	    else
	    {
	        switch global.bg_level
	        {
	            case "snow":
				if (global.modo_noche == 1)
	                return spr_SMB3_mp2_snow_night;
				else
					return spr_SMB3_mp2_snow;
	            case "underwater":
	                return spr_SMB3_mp2_underwater;
	            case "beach":
	                return spr_SMB3_mp2_underwater;
	            case "airship":
	                return spr_SMB3_mp2_airship;
	            case "castle":
	                return spr_SMB3_mp2_dark;
	            case "underground":
	                return spr_SMB3_mp2_night;
	            case "ghost":
	                return spr_SMB3_mp2_night;
	            case "mountain":
					return spr_SMB3_mp2;
	            default:
	                return spr_SMB3_mp2;
	        }

	    }
	}
	else if (global.apariencia == 2)
	{
	    switch global.bg_level
	    {
	        case "snow":
	            if (global.modo_noche == 1)
	                return spr_mp2_snow_night;
	            else
	                return spr_mp2_snow;
	        case "underwater":
	            return spr_mp2_underwater;
	        case "beach":
	            return spr_mp2_underwater;
	        case "airship":
	            return spr_mp2_airship;
	        case "mountain":
	            if (global.modo_noche == 1)
	                return spr_mp2;
	            else
	                return spr_mp2;
	        default:
	            return spr_mp2;
	    }

	}
	else if (global.apariencia == 2)
	{
	    switch global.bg_level
	    {
	        case "snow":
	            if (global.modo_noche == 1)
	                return spr_mp1_snow_night;
	            else
	                return spr_mp1_snow;
	        case "underwater":
	            return spr_mp1_underwater;
	        case "beach":
	            return spr_mp1_underwater;
	        case "airship":
	            return spr_mp1_airship;
	        case "mountain":
	            if (global.modo_noche == 1)
	                return spr_mp1;
	            else
	                return spr_mp1;
	        default:
	            return spr_mp1;
	    }

	}
	else if (global.apariencia == 3)
	{
	    if (global.modo_noche == 1)
	    {
	        switch global.bg_level
	        {
	            case "snow":
	                return spr_NSMBU_mp2_snow_night;
	            case "underwater":
	                return spr_NSMBU_mp2_underwater_night;
	            case "beach":
	                return spr_NSMBU_mp2_underwater_night;
	            case "airship":
	                return spr_NSMBU_mp2_airship_night;
	            case "ghost":
	                return spr_NSMBU_mp2_ghost;
	            case "castle":
	                return spr_NSMBU_mp2_castle;
	            case "underground":
	                return spr_NSMBU_mp2_underground;
	            case "mountain":
	                return spr_NSMBU_mp2_castle;
	            default:
	                return spr_NSMBU_mp2_overworld_night;
	        }

	    }
	    else
	    {
	        switch global.bg_level
	        {
	            case "snow":
	                return spr_NSMBU_mp2_snow;
	            case "underwater":
	                return spr_NSMBU_mp2_underwater;
	            case "beach":
	                return spr_NSMBU_mp2_underwater;
	            case "airship":
	                return spr_NSMBU_mp2_airship;
	            case "ghost":
	                return spr_NSMBU_mp2_ghost;
	            case "desert":
	                return spr_NSMBU_mp2_desert;
	            case "castle":
	                return spr_NSMBU_mp2_castle;
	            case "underground":
	                return spr_NSMBU_mp2_underground;
	            case "mountain":
	                return spr_NSMBU_mp2_overworld;
	            default:
	                return spr_NSMBU_mp2_overworld;
	        }

	    }
	}


}
