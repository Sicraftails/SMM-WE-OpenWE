function scr_mariorun() {
if (global.apariencia == 1)
{
    if (global.jugador == 0)
    {
        switch global.powerup
        {
            case 0:
                return spr_SMB3_mario_small_run;
            case 1:
                return spr_SMB3_mario_big_run;
            case 2:
                return spr_SMB3_mario_fire_run;
            case -39:
                return spr_SMB3_mario_raccoon_run;
            case -29:
                return spr_SMB3_mario_frog_hold_run;
            case -46:
                return spr_SMB3_mario_hammer_run;
        }

    }
    else if (global.jugador == 1)
    {
        switch global.powerup
        {
            case 0:
                return spr_SMB3_luigi_small_run;
            case 1:
                return spr_SMB3_luigi_big_run;
            case 2:
                return spr_SMB3_luigi_fire_run;
            case -39:
                return spr_SMB3_luigi_raccoon_run;
            case -29:
                return spr_SMB3_mario_frog_hold_run;
            case -46:
                return spr_SMB3_mario_hammer_run;
        }

    }
    else if (global.jugador == 2)
    {
        switch global.powerup
        {
            case 0:
                return spr_SMB3_toad_small_run;
            case 1:
                return spr_SMB3_toad_big_run;
            case 2:
                return spr_SMB3_toad_fire_run;
            case -39:
                return spr_SMB3_toad_raccoon_run;
            case -29:
                return spr_SMB3_toad_frog_hold_run;
            case -46:
                return spr_SMB3_toad_hammer_run;
        }

    }
    else if (global.jugador == 3)
    {
        switch global.powerup
        {
            case 0:
                return spr_SMB3_toadette_small_run;
            case 1:
                return spr_SMB3_toadette_big_run;
            case 2:
                return spr_SMB3_toadette_fire_run;
            case -39:
                return spr_SMB3_toadette_raccoon_run;
            case -29:
                return spr_SMB3_toadette_frog_hold_run;
            case -46:
                return spr_SMB3_toadette_hammer_run;
        }

    }
}
else if (global.apariencia == 2)
{
    if (global.jugador == 0)
    {
        switch global.powerup
        {
            case 0:
                return spr_mario_small_run;
            case 1:
                return spr_mario_big_run;
            case 2:
                return spr_mario_fire_run;
            case 3:
                return spr_mario_big_run;
            case -82:
                return spr_mario_pballon_idle;
        }

    }
    else if (global.jugador == 1)
    {
        switch global.powerup
        {
            case 0:
                return spr_luigi_small_run;
            case 1:
                return spr_luigi_big_run;
            case 2:
                return spr_luigi_fire_run;
            case 3:
                return spr_luigi_big_run;
            case -82:
                return spr_luigi_pballon_idle;
        }

    }
    else if (global.jugador == 2)
    {
        switch global.powerup
        {
            case 0:
                return spr_toad_small_run;
            case 1:
                return spr_toad_big_run;
            case 2:
                return spr_toad_fire_run;
            case 3:
                return spr_toad_big_run;
            case -82:
                return spr_toad_pballon_idle;
        }

    }
    else if (global.jugador == 3)
    {
        switch global.powerup
        {
            case 0:
                return spr_toadette_small_run;
            case 1:
                return spr_toadette_big_run;
            case 2:
                return spr_toadette_fire_run;
            case 3:
                return spr_toadette_big_run;
            case -82:
                return spr_toadette_pballon_idle;
        }

    }
}


}
