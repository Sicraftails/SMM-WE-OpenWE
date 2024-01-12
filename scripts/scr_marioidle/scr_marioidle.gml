function scr_marioidle() //gml_Script_scr_marioidle
{
    if (global.apariencia == 0)
    {
        if (global.jugador == 0)
        {
            switch global.powerup
            {
                case 0:
                    return spr_SMB_mario_small_idle;
                case 1:
                    return spr_SMB_mario_big_idle;
                case 2:
                    return spr_SMB_mario_fire_idle;
                case -50:
                    return spr_SMB_mario_superball_idle;
                case -77:
                    return spr_SMB_mario_mega_idle;
                case -78:
                    return spr_SMB_mario_hen_idle;
				case -80:
                    return spr_SMB2_mario_big_idle;
                case -85:
                    return spr_SMB_link_idle;
            }

        }
        else if (global.jugador == 1)
        {
            switch global.powerup
            {
                case 0:
                    return spr_SMB_luigi_small_idle;
                case 1:
                    return spr_SMB_luigi_big_idle;
                case 2:
                    return spr_SMB_luigi_fire_idle;
                case -50:
                    return spr_SMB_luigi_superball_idle;
                case -77:
                    return spr_SMB_luigi_mega_idle;
                case -78:
                    return spr_SMB_luigi_hen_idle;
				case -80:
                    return spr_SMB2_luigi_big_idle;
                case -85:
                    return spr_SMB_link_idle;
            }

        }
        else if (global.jugador == 2)
        {
            switch global.powerup
            {
                case 0:
                    return spr_SMB_toad_small_idle;
                case 1:
                    return spr_SMB_toad_big_idle;
                case 2:
                    return spr_SMB_toad_fire_idle;
                case -50:
                    return spr_SMB_toad_superball_idle;
                case -77:
                    return spr_SMB_toad_mega_idle;
                case -78:
                    return spr_SMB_toad_hen_idle;
				case -80:
                    return spr_SMB2_toad_big_idle;
                case -85:
                    return spr_SMB_link_idle;
            }

        }
        else if (global.jugador == 3)
        {
            switch global.powerup
            {
                case 0:
                    return spr_SMB_toadette_small_idle;
                case 1:
                    return spr_SMB_toadette_big_idle;
                case 2:
                    return spr_SMB_toadette_fire_idle;
                case -50:
                    return spr_SMB_toadette_superball_idle;
                case -77:
                    return spr_SMB_toadette_mega_idle;
                case -78:
                    return spr_SMB_toadette_hen_idle;
				case -80:
                    return spr_SMB2_toadette_big_idle;
                case -85:
                    return spr_SMB_link_idle;
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
                    return spr_SMB3_mario_small_idle;
                case 1:
                    return spr_SMB3_mario_big_idle;
                case 2:
                    return spr_SMB3_mario_fire_idle;
                case -39:
                    return spr_SMB3_mario_raccoon_idle;
                case -29:
                    return spr_SMB3_mario_frog_idle;
                case -46:
                    return spr_SMB3_mario_hammer_idle;
            }

        }
        else if (global.jugador == 1)
        {
            switch global.powerup
            {
                case 0:
                    return spr_SMB3_luigi_small_idle;
                case 1:
                    return spr_SMB3_luigi_big_idle;
                case 2:
                    return spr_SMB3_luigi_fire_idle;
                case -39:
                    return spr_SMB3_luigi_raccoom_idle;
                case -29:
                    return spr_SMB3_mario_frog_idle;
                case -46:
                    return spr_SMB3_mario_hammer_idle;
            }

        }
        else if (global.jugador == 2)
        {
            switch global.powerup
            {
                case 0:
                    return spr_SMB3_toad_small_idle;
                case 1:
                    return spr_SMB3_toad_big_idle;
                case 2:
                    return spr_SMB3_toad_fire_idle;
                case -39:
                    return spr_SMB3_toad_raccoom_idle;
                case -29:
                    return spr_SMB3_toad_frog_idle;
                case -46:
                    return spr_SMB3_toad_hammer_idle;
            }

        }
        else if (global.jugador == 3)
        {
            switch global.powerup
            {
                case 0:
                    return spr_SMB3_toadette_small_idle;
                case 1:
                    return spr_SMB3_toadette_big_idle;
                case 2:
                    return spr_SMB3_toadette_fire_idle;
                case -39:
                    return spr_SMB3_toadette_raccoom_idle;
                case -29:
                    return spr_SMB3_toadette_frog_idle;
                case -46:
                    return spr_SMB3_toadette_hammer_idle;
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
                    return spr_mario_small_idle;
                case 1:
                    return spr_mario_big_idle;
                case 2:
                    return spr_mario_fire_idle;
                case 3:
                    return spr_mario_big_idle;
                case -82:
                    return spr_mario_pballon_idle;
            }

        }
        else if (global.jugador == 1)
        {
            switch global.powerup
            {
                case 0:
                    return spr_luigi_small_idle;
                case 1:
                    return spr_luigi_big_idle;
                case 2:
                    return spr_luigi_fire_idle;
                case 3:
                    return spr_luigi_big_idle;
                case -82:
                    return spr_luigi_pballon_idle;
            }

        }
        else if (global.jugador == 2)
        {
            switch global.powerup
            {
                case 0:
                    return spr_toad_small_idle;
                case 1:
                    return spr_toad_big_idle;
                case 2:
                    return spr_toad_fire_idle;
                case 3:
                    return spr_toad_big_idle;
                case -82:
                    return spr_toad_pballon_idle;
            }

        }
        else if (global.jugador == 3)
        {
            switch global.powerup
            {
                case 0:
                    return spr_toadette_small_idle;
                case 1:
                    return spr_toadette_big_idle;
                case 2:
                    return spr_toadette_fire_idle;
                case 3:
                    return spr_toadette_big_idle;
                case -82:
                    return spr_toadette_pballon_idle;
            }

        }
    }
    else if (global.apariencia == 3)
    {
        switch global.powerup
        {
            case 0:
                return spr_NSMBU_mario_small_ground_idle;
            case 1:
                return spr_NSMBU_mario_big_ground_idle;
            case 2:
                return spr_NSMBU_mario_big_ground_idle;
            case -30:
                return spr_NSMBU_mario_helice_ground_idle;
            case -43:
                return spr_NSMBU_mario_arcon_idle;
            case -38:
                return spr_NSMBU_mario_penguin_idle;
        }

    }
}

