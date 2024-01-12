function scr_mario_drybones() //gml_Script_scr_mario_drybones
{
    if (global.apariencia == 0)
    {
        if (global.jugador == 0)
        {
            switch global.powerup
            {
                case 0:
                    return spr_SMB_mario_small_drybones;
                case 1:
                    return spr_SMB_mario_big_drybones;
                case 2:
                    return spr_SMB_mario_fire_drybones;
                case -50:
                    return spr_SMB_mario_superball_drybones;
                case -77:
                    return spr_SMB_mario_mega_drybones;
                case -78:
                    return spr_SMB_mario_hen_drybones;
                case -85:
                    return spr_SMB_link_drybones;
				case -80:
                    return spr_SMB2_mario_big_drybones;
            }

        }
        else if (global.jugador == 1)
        {
            switch global.powerup
            {
                case 0:
                    return spr_SMB_luigi_small_drybones;
                case 1:
                    return spr_SMB_luigi_big_drybones;
                case 2:
                    return spr_SMB_luigi_fire_drybones;
                case -50:
                    return spr_SMB_luigi_superball_drybones;
                case -77:
                    return spr_SMB_luigi_mega_drybones;
                case -78:
                    return spr_SMB_luigi_hen_drybones;
                case -85:
                    return spr_SMB_link_drybones;
				case -80:
                    return spr_SMB2_luigi_big_drybones;
            }

        }
        else if (global.jugador == 2)
        {
            switch global.powerup
            {
                case 0:
                    return spr_SMB_toad_small_drybones;
                case 1:
                    return spr_SMB_toad_big_drybones;
                case 2:
                    return spr_SMB_toad_fire_drybones;
                case -50:
                    return spr_SMB_toad_superball_drybones;
                case -77:
                    return spr_SMB_toad_mega_drybones;
                case -78:
                    return spr_SMB_toad_hen_drybones;
                case -85:
                    return spr_SMB_link_drybones;
				case -80:
                    return spr_SMB2_toad_big_drybones;
            }

        }
        else if (global.jugador == 3)
        {
            switch global.powerup
            {
                case 0:
                    return spr_SMB_toadette_small_drybones;
                case 1:
                    return spr_SMB_toadette_big_drybones;
                case 2:
                    return spr_SMB_toadette_fire_drybones;
                case -50:
                    return spr_SMB_toadette_superball_drybones;
                case -77:
                    return spr_SMB_toadette_mega_drybones;
                case -78:
                    return spr_SMB_toadette_hen_drybones;
                case -85:
                    return spr_SMB_link_drybones;
				case -80:
                    return spr_SMB2_toadette_big_drybones;
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
                    return spr_SMB3_mario_small_drybones;
                case 1:
                    return spr_SMB3_mario_big_drybones;
                case 2:
                    return spr_SMB3_mario_fire_drybones;
                case -39:
                    return spr_SMB3_mario_raccoon_drybones;
                case -29:
                    return spr_SMB3_mario_frog_drybones;
                case -46:
                    return spr_SMB3_mario_hammer_drybones;
            }

        }
        else if (global.jugador == 1)
        {
            switch global.powerup
            {
                case 0:
                    return spr_SMB3_luigi_small_drybones;
                case 1:
                    return spr_SMB3_luigi_big_drybones;
                case 2:
                    return spr_SMB3_luigi_fire_drybones;
                case -39:
                    return spr_SMB3_luigi_raccoon_drybones;
                case -29:
                    return spr_SMB3_mario_frog_drybones;
                case -46:
                    return spr_SMB3_mario_hammer_drybones;
            }

        }
        else if (global.jugador == 2)
        {
            switch global.powerup
            {
                case 0:
                    return spr_SMB3_toad_small_drybones;
                case 1:
                    return spr_SMB3_toad_big_drybones;
                case 2:
                    return spr_SMB3_toad_fire_drybones;
                case -39:
                    return spr_SMB3_toad_raccoon_drybones;
                case -29:
                    return spr_SMB3_toad_frog_drybones;
                case -46:
                    return spr_SMB3_toad_hammer_drybones;
            }

        }
        else if (global.jugador == 3)
        {
            switch global.powerup
            {
                case 0:
                    return spr_SMB3_toadette_small_drybones;
                case 1:
                    return spr_SMB3_toadette_big_drybones;
                case 2:
                    return spr_SMB3_toadette_fire_drybones;
                case -39:
                    return spr_SMB3_toadette_raccoon_drybones;
                case -29:
                    return spr_SMB3_toadette_frog_drybones;
                case -46:
                    return spr_SMB3_toadette_hammer_drybones;
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
                    return spr_mario_small_drybones;
                case 1:
                    return spr_mario_big_drybones;
                case 2:
                    return spr_mario_fire_drybones;
                case 3:
                    return spr_mario_big_drybones;
            }

        }
        else if (global.jugador == 1)
        {
            switch global.powerup
            {
                case 0:
                    return spr_luigi_small_drybones;
                case 1:
                    return spr_luigi_big_drybones;
                case 2:
                    return spr_luigi_fire_drybones;
                case 3:
                    return spr_luigi_big_drybones;
            }

        }
        else if (global.jugador == 2)
        {
            switch global.powerup
            {
                case 0:
                    return spr_toad_small_drybones;
                case 1:
                    return spr_toad_big_drybones;
                case 2:
                    return spr_toad_fire_drybones;
                case 3:
                    return spr_toad_big_drybones;
            }

        }
        else if (global.jugador == 3)
        {
            switch global.powerup
            {
                case 0:
                    return spr_toadette_small_drybones;
                case 1:
                    return spr_toadette_big_drybones;
                case 2:
                    return spr_toadette_fire_drybones;
                case 3:
                    return spr_toadette_big_drybones;
            }

        }
    }
    else if (global.apariencia == 3)
    {
        switch global.powerup
        {
            case 0:
                return spr_NSMBU_mario_small_drybones;
            case 1:
                return spr_NSMBU_mario_big_drybones;
            case 2:
                return spr_NSMBU_mario_fire_drybones;
            case -30:
                return spr_NSMBU_mario_helice_drybones;
            case -38:
                return spr_NSMBU_mario_penguin_drybones;
            case -43:
                return spr_NSMBU_mario_arcon_drybones;
        }

    }
}

