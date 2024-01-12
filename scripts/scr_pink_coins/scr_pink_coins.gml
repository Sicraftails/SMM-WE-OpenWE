function scr_pink_coins()
{
	if global.apariencia = 0{
    switch global.pink_coins_total
    {
        case 1:
            return spr_SMB_pinkcoin_hub1;
        case 2:
            return spr_SMB_pinkcoin_hub2;
        case 3:
            return spr_SMB_pinkcoin_hub3;
        case 4:
            return spr_SMB_pinkcoin_hub4;
        case 5:
            return spr_SMB_pinkcoin_hub5;
        case 6:
            return spr_SMB_pinkcoin_hub6;
        case 7:
            return spr_SMB_pinkcoin_hub7;
        case 8:
            return spr_SMB_pinkcoin_hub8;
        case 9:
            return spr_SMB_pinkcoin_hub9;
        case 10:
            return spr_SMB_pinkcoin_hub10;
        default:
            return spr_SMB_pinkcoin_hub5;
    }
	}
	else if global.apariencia = 1{
    switch global.pink_coins_total
    {
        case 1:
            return spr_SMB3_pinkcoin_hub1;
        case 2:
            return spr_SMB3_pinkcoin_hub2;
        case 3:
            return spr_SMB3_pinkcoin_hub3;
        case 4:
            return spr_SMB3_pinkcoin_hub4;
        case 5:
            return spr_SMB3_pinkcoin_hub5;
        case 6:
            return spr_SMB3_pinkcoin_hub6;
        case 7:
            return spr_SMB3_pinkcoin_hub7;
        case 8:
            return spr_SMB3_pinkcoin_hub8;
        case 9:
            return spr_SMB3_pinkcoin_hub9;
        case 10:
            return spr_SMB3_pinkcoin_hub10;
        default:
            return spr_SMB3_pinkcoin_hub5;
    }
	}
	else if global.apariencia = 3{
    switch global.pink_coins_total
    {
        case 1:
            return spr_NSMBU_pinkcoin_hub1;
        case 2:
            return spr_NSMBU_pinkcoin_hub2;
        case 3:
            return spr_NSMBU_pinkcoin_hub3;
        case 4:
            return spr_NSMBU_pinkcoin_hub4;
        case 5:
            return spr_NSMBU_pinkcoin_hub5;
        case 6:
            return spr_NSMBU_pinkcoin_hub6;
        case 7:
            return spr_NSMBU_pinkcoin_hub7;
        case 8:
            return spr_NSMBU_pinkcoin_hub8;
        case 9:
            return spr_NSMBU_pinkcoin_hub9;
        case 10:
            return spr_NSMBU_pinkcoin_hub10;
        default:
            return spr_NSMBU_pinkcoin_hub5;
    }
	}
	else{
    switch global.pink_coins_total
    {
        case 1:
            return spr_pinkcoin_hub1;
        case 2:
            return spr_pinkcoin_hub2;
        case 3:
            return spr_pinkcoin_hub3;
        case 4:
            return spr_pinkcoin_hub4;
        case 5:
            return spr_pinkcoin_hub5;
        case 6:
            return spr_pinkcoin_hub6;
        case 7:
            return spr_pinkcoin_hub7;
        case 8:
            return spr_pinkcoin_hub8;
        case 9:
            return spr_pinkcoin_hub9;
        case 10:
            return spr_pinkcoin_hub10;
        default:
            return spr_pinkcoin_hub5;
    }
	}
}

