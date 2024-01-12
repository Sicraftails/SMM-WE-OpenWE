function scr_NSMBU_airspin1() //gml_Script_scr_NSMBU_airspin1
{
	/*if global.jugador = 0{*/
    switch global.powerup
    {
        case 0:
            return spr_NSMBU_mario_small_airspin1;
        case 1:
            return spr_NSMBU_mario_big_airspin1;
        case 2:
            return spr_NSMBU_mario_fire_airspin1;
        case -30:
            return spr_NSMBU_mario_helice_airspin1;
        case -43:
            return spr_NSMBU_mario_arcon_airspin;
        case -38:
            return spr_NSMBU_mario_penguin_airspin;
    }
	/*}
	else{
    switch global.powerup
    {
        case 0:
            return spr_NSMBU_toad_small_airspin;
        case 1:
            return spr_NSMBU_mario_big_airspin1;
        case 2:
            return spr_NSMBU_mario_fire_airspin1;
        case -30:
            return spr_NSMBU_mario_helice_airspin1;
        case -43:
            return spr_NSMBU_mario_arcon_airspin;
        case -38:
            return spr_NSMBU_mario_penguin_airspin;
    }
	}*/
}

