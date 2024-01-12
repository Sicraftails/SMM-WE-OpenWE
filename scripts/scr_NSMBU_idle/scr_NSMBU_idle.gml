function scr_NSMBU_idle(argument0) //gml_Script_scr_NSMBU_idle
{
	/*
	if global.jugador = 0{
	*/
    if (argument0 == 1)
    {
        switch global.powerup
        {
            case 0:
                return spr_NSMBU_mario_small_swim_idle;
            case 1:
                return spr_NSMBU_mario_big_swim_idle;
            case 2:
                return spr_NSMBU_mario_fire_swim_idle;
            case -30:
                return spr_NSMBU_mario_helice_swim_idle;
            case -43:
                return spr_NSMBU_mario_arcon_swim_idle;
            case -38:
                return spr_NSMBU_mario_penguin_idle;
        }

    }
    else
    {
        switch global.powerup
        {
            case 0:
                return spr_NSMBU_mario_small_idle;
            case 1:
                return spr_NSMBU_mario_big_idle;
            case 2:
                return spr_NSMBU_mario_fire_idle;
            case -30:
                return spr_NSMBU_mario_helice_idle;
            case -43:
                return spr_NSMBU_mario_arcon_idle;
            case -38:
                return spr_NSMBU_mario_penguin_idle;
        }

    }
	/*
	}
	*/
	/*
	else{
    if (argument0 == 1)
    {
        switch global.powerup
        {
            case 0:
                return spr_NSMBU_mario_small_swim_idle;
            case 1:
                return spr_NSMBU_mario_big_swim_idle;
            case 2:
                return spr_NSMBU_mario_fire_swim_idle;
            case -30:
                return spr_NSMBU_mario_helice_swim_idle;
            case -43:
                return spr_NSMBU_mario_arcon_swim_idle;
            case -38:
                return spr_NSMBU_mario_penguin_idle;
        }

    }
    else
    {
        switch global.powerup
        {
            case 0:
                return spr_NSMBU_toad_small_idle;
            case 1:
                return spr_NSMBU_mario_big_idle;
            case 2:
                return spr_NSMBU_mario_fire_idle;
            case -30:
                return spr_NSMBU_mario_helice_idle;
            case -43:
                return spr_NSMBU_mario_arcon_idle;
            case -38:
                return spr_NSMBU_mario_penguin_idle;
        }

    }
	}
	*/
}

