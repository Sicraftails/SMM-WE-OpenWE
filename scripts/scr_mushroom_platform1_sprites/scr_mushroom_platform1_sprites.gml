function scr_mushroom_platform1_sprites() {
	if (global.apariencia == 0)
	{
	    switch global.bg_level
	    {
	        case "snow":
	            if (global.modo_noche == 1)
	                return spr_SMB_mp1_snow_night;
	            else
	                return spr_SMB_mp1_snow;
	        case "underwater":
	            return spr_SMB_mp1_underwater;
	        case "beach":
	            return spr_SMB_mp1_underwater;
	        case "airship":
	            return spr_SMB_mp1_airship;
	        case "castle":
	            return spr_SMB_mp1_dark;
	        case "underground":
	            return spr_SMB_mp1_dark;
	        case "ghost":
	            return spr_SMB_mp1_dark;
	        case "mountain":
	            if (global.modo_noche == 1)
	                return spr_SMB_mp1_dark;
	            else
	                return spr_SMB_mp1;
	        default:
	            return spr_SMB_mp1;
	    }

	}
	else if (global.apariencia == 1)
	{
	    if (global.modo_noche == 1)
	    {
	        switch global.bg_level
	        {
	            case "snow":
	                return spr_SMB3_mp1_snow_night;
	            case "underwater":
	                return spr_SMB3_mp1_underwater;
	            case "beach":
	                return spr_SMB3_mp1_underwater;
	            case "airship":
	                return spr_SMB3_mp1_airship;
	            case "castle":
	                return spr_SMB3_mp1_dark;
				case "mountain":
	                return spr_SMB3_mp1_dark;
	            default:
	                return spr_SMB3_mp1_night;
	        }

	    }
	    else
	    {
	        switch global.bg_level
	        {
	            case "snow":
	                return spr_SMB3_mp1_snow;
	            case "underwater":
	                return spr_SMB3_mp1_underwater;
	            case "beach":
	                return spr_SMB3_mp1_underwater;
	            case "airship":
	                return spr_SMB3_mp1_airship;
	            case "castle":
	                return spr_SMB3_mp1_dark;
	            case "underground":
	                return spr_SMB3_mp1_night;
	            case "ghost":
	                return spr_SMB3_mp1_night;
	            case "mountain":
					return spr_SMB3_mp1;
	            default:
	                return spr_SMB3_mp1;
	        }

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
	                return spr_NSMBU_mp1_snow_night;
	            case "underwater":
	                return spr_NSMBU_mp1_underwater_night;
	            case "beach":
	                return spr_NSMBU_mp1_underwater_night;
	            case "airship":
	                return spr_NSMBU_mp1_airship_night;
	            case "ghost":
	                return spr_NSMBU_mp1_ghost;
	            case "castle":
	                return spr_NSMBU_mp1_castle;
	            case "underground":
	                return spr_NSMBU_mp1_underground;
	            case "mountain":
	                return spr_NSMBU_mp1_castle;
	            default:
	                return spr_NSMBU_mp1_overworld_night;
	        }

	    }
	    else
	    {
	        switch global.bg_level
	        {
	            case "snow":
	                return spr_NSMBU_mp1_snow;
	            case "underwater":
	                return spr_NSMBU_mp1_underwater;
	            case "beach":
	                return spr_NSMBU_mp1_underwater;
	            case "airship":
	                return spr_NSMBU_mp1_airship;
	            case "ghost":
	                return spr_NSMBU_mp1_ghost;
	            case "desert":
	                return spr_NSMBU_mp1_desert;
	            case "castle":
	                return spr_NSMBU_mp1_castle;
	            case "underground":
	                return spr_NSMBU_mp1_underground;
	            case "mountain":
	                return spr_NSMBU_mp1_overworld;
	            default:
	                return spr_NSMBU_mp1_overworld;
	        }

	    }
	}



}
