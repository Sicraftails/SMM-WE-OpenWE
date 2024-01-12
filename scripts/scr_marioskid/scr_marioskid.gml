function scr_marioskid()
{
    if (global.apariencia == 0)
    {
        if (global.jugador == 0)
        {
            switch global.powerup
            {
                case 0:
                    return spr_SMB_mario_small_skid;
                case 1:
                    return spr_SMB_mario_big_skid;
                case 2:
                    return spr_SMB_mario_fire_skid;
                case -50:
                    return spr_SMB_mario_superball_skid;
                case -77:
                    return spr_SMB_mario_mega_skid;
                case -78:
                    return spr_SMB_mario_hen_skid;
                case -85:
                    return spr_SMB_link_skid;
            }

        }
        else if (global.jugador == 1)
        {
            switch global.powerup
            {
                case 0:
                    return spr_SMB_luigi_small_skid;
                case 1:
                    return spr_SMB_luigi_big_skid;
                case 2:
                    return spr_SMB_luigi_fire_skid;
                case -50:
                    return spr_SMB_luigi_superball_skid;
                case -77:
                    return spr_SMB_luigi_mega_skid;
                case -78:
                    return spr_SMB_luigi_hen_skid;
                case -85:
                    return spr_SMB_link_skid;
            }

        }
        else if (global.jugador == 2)
        {
            switch global.powerup
            {
                case 0:
                    return spr_SMB_toad_small_skid;
                case 1:
                    return spr_SMB_toad_big_skid;
                case 2:
                    return spr_SMB_toad_fire_skid;
                case -50:
                    return spr_SMB_toad_superball_skid;
                case -77:
                    return spr_SMB_toad_mega_skid;
                case -78:
                    return spr_SMB_toad_hen_skid;
                case -85:
                    return spr_SMB_link_skid;
            }

        }
        else if (global.jugador == 3)
        {
            switch global.powerup
            {
                case 0:
                    return spr_SMB_toadette_small_skid;
                case 1:
                    return spr_SMB_toadette_big_skid;
                case 2:
                    return spr_SMB_toadette_fire_skid;
                case -50:
                    return spr_SMB_toadette_superball_skid;
                case -77:
                    return spr_SMB_toadette_mega_skid;
                case -78:
                    return spr_SMB_toadette_hen_skid;
                case -85:
                    return spr_SMB_link_skid;
            }

        }
    }
else if (global.apariencia == 1)
{
    if (global.jugador == 0)
    {
        switch global.powerup
        {
            case 0:
                return spr_SMB3_mario_small_skid;
            case 1:
                return spr_SMB3_mario_big_skid;
            case 2:
                return spr_SMB3_mario_fire_skid;
            case -39:
                return spr_SMB3_mario_raccoon_skid;
            case -46:
                return spr_SMB3_mario_hammer_skid;
        }

    }
    else if (global.jugador == 1)
    {
        switch global.powerup
        {
            case 0:
                return spr_SMB3_luigi_small_skid;
            case 1:
                return spr_SMB3_luigi_big_skid;
            case 2:
                return spr_SMB3_luigi_fire_skid;
            case -39:
                return spr_SMB3_luigi_raccoon_skid;
            case -46:
                return spr_SMB3_mario_hammer_skid;
        }

    }
    else if (global.jugador == 2)
    {
        switch global.powerup
        {
            case 0:
                return spr_SMB3_toad_small_skid;
            case 1:
                return spr_SMB3_toad_big_skid;
            case 2:
                return spr_SMB3_toad_fire_skid;
            case -39:
                return spr_SMB3_toad_raccoon_skid;
            case -46:
                return spr_SMB3_toad_hammer_skid;
        }

    }
    else if (global.jugador == 3)
    {
        switch global.powerup
        {
            case 0:
                return spr_SMB3_toadette_small_skid;
            case 1:
                return spr_SMB3_toadette_big_skid;
            case 2:
                return spr_SMB3_toadette_fire_skid;
            case -39:
                return spr_SMB3_toadette_raccoon_skid;
            case -46:
                return spr_SMB3_toadette_hammer_skid;
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
                return spr_mario_small_skid;
            case 1:
                return spr_mario_big_skid;
            case 2:
                return spr_mario_fire_skid;
            case 3:
                return spr_mario_big_skid;
            case -82:
                return spr_mario_pballon_idle;
        }

    }
    else if (global.jugador == 1)
    {
        switch global.powerup
        {
            case 0:
                return spr_luigi_small_skid;
            case 1:
                return spr_luigi_big_skid;
            case 2:
                return spr_luigi_fire_skid;
            case 3:
                return spr_luigi_big_skid;
            case -82:
                return spr_luigi_pballon_idle;
        }

    }
    else if (global.jugador == 2)
    {
        switch global.powerup
        {
            case 0:
                return spr_toad_small_skid;
            case 1:
                return spr_toad_big_skid;
            case 2:
                return spr_toad_fire_skid;
            case 3:
                return spr_toad_big_skid;
            case -82:
                return spr_toad_pballon_idle;
        }

    }
    else if (global.jugador == 3)
    {
        switch global.powerup
        {
            case 0:
                return spr_toadette_small_skid;
            case 1:
                return spr_toadette_big_skid;
            case 2:
                return spr_toadette_fire_skid;
            case 3:
                return spr_toadette_big_skid;
            case -82:
                return spr_toadette_pballon_idle;
        }

    }
}
}
