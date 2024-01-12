function scr_mariojumphold() {
	if (global.apariencia == 0)
	{
	switch global.jugador
	{
	    case 0:
	        return spr_SMB2_mario_big_jumphold;
	    case 1:
	        return spr_SMB2_luigi_big_jumphold;
	    case 2:
	        return spr_SMB2_toad_big_jumphold;
	    case 3:
	        return spr_SMB2_toadette_big_jumphold;
	}
	}
	else if (global.apariencia == 1)
	{
	switch global.jugador
    {
        case 0:
            return spr_SMB3_mario_raccoon_hold_jump;
        case 1:
            return spr_SMB3_luigi_raccoon_hold_jump;
        case 2:
            return spr_SMB3_toad_raccoon_hold_jump;
        case 3:
            return spr_SMB3_toadette_raccoon_hold_jump;
    }
	}



}
