function scr_mariorunjump() {
if (global.apariencia == 1)
{
    if (global.jugador == 0)
    {
        switch global.powerup
        {
            case 0:
                return spr_SMB3_mario_small_runjump;
            case 1:
                return spr_SMB3_mario_big_runjump;
            case 2:
                return spr_SMB3_mario_fire_runjump;
            case -39:
                return spr_SMB3_mario_raccoon_runjump;
            case -46:
                return spr_SMB3_mario_hammer_runjump;
        }

    }
    else if (global.jugador == 1)
    {
        switch global.powerup
        {
            case 0:
                return spr_SMB3_luigi_small_runjump;
            case 1:
                return spr_SMB3_luigi_big_runjump;
            case 2:
                return spr_SMB3_luigi_fire_runjump;
            case -39:
                return spr_SMB3_luigi_raccoon_runjump;
            case -46:
                return spr_SMB3_mario_hammer_runjump;
        }

    }
    else if (global.jugador == 2)
    {
        switch global.powerup
        {
            case 0:
                return spr_SMB3_toad_small_runjump;
            case 1:
                return spr_SMB3_toad_big_runjump;
            case 2:
                return spr_SMB3_toad_fire_runjump;
            case -39:
                return spr_SMB3_toad_raccoon_runjump;
            case -46:
                return spr_SMB3_toad_hammer_runjump;
        }

    }
    else if (global.jugador == 3)
    {
        switch global.powerup
        {
            case 0:
                return spr_SMB3_toadette_small_runjump;
            case 1:
                return spr_SMB3_toadette_big_runjump;
            case 2:
                return spr_SMB3_toadette_fire_runjump;
            case -39:
                return spr_SMB3_toadette_raccoon_runjump;
            case -46:
                return spr_SMB3_toadette_hammer_runjump;
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
                return spr_mario_small_runjump;
            case 1:
                return spr_mario_big_runjump;
            case 2:
                return spr_mario_fire_runjump;
            case 3:
                return spr_mario_big_runjump;
            case -82:
                return spr_mario_pballon_idle;
        }

    }
    else if (global.jugador == 1)
    {
        switch global.powerup
        {
            case 0:
                return spr_luigi_small_runjump;
            case 1:
                return spr_luigi_big_runjump;
            case 2:
                return spr_luigi_fire_runjump;
            case 3:
                return spr_luigi_big_runjump;
            case -82:
                return spr_luigi_pballon_idle;
        }

    }
    else if (global.jugador == 2)
    {
        switch global.powerup
        {
            case 0:
                return spr_toad_small_runjump;
            case 1:
                return spr_toad_big_runjump;
            case 2:
                return spr_toad_fire_runjump;
            case 3:
                return spr_toad_big_runjump;
            case -82:
                return spr_toad_pballon_idle;
        }

    }
    else if (global.jugador == 3)
    {
        switch global.powerup
        {
            case 0:
                return spr_toadette_small_runjump;
            case 1:
                return spr_toadette_big_runjump;
            case 2:
                return spr_toadette_fire_runjump;
            case 3:
                return spr_toadette_big_runjump;
            case -82:
                return spr_toadette_pballon_idle;
        }

    }
}
}
