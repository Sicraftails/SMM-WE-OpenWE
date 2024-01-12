function scr_mario_shoe() //gml_Script_scr_mario_shoe
{
    if (global.apariencia == 0)
    {
        if (global.jugador == 0)
        {
            switch global.powerup
            {
                case 0:
                    return spr_SMB_mario_small_shoe;
                case 1:
                    return spr_SMB_mario_big_shoe;
                case 2:
                    return spr_SMB_mario_fire_shoe;
                case -50:
                    return spr_SMB_mario_superball_shoe;
                case -77:
                    return spr_SMB_mario_mega_shoe;
                case -78:
                    return spr_SMB_mario_hen_shoe;
                case -85:
                    return spr_SMB_link_shoe;
				case -80:
                    return spr_SMB2_mario_big_shoe;
            }

        }
        else if (global.jugador == 1)
        {
            switch global.powerup
            {
                case 0:
                    return spr_SMB_luigi_small_shoe;
                case 1:
                    return spr_SMB_luigi_big_shoe;
                case 2:
                    return spr_SMB_luigi_fire_shoe;
                case -50:
                    return spr_SMB_luigi_superball_shoe;
                case -77:
                    return spr_SMB_luigi_mega_shoe;
                case -78:
                    return spr_SMB_luigi_hen_shoe;
                case -85:
                    return spr_SMB_link_shoe;
				case -80:
                    return spr_SMB2_luigi_big_shoe;
            }

        }
        else if (global.jugador == 2)
        {
            switch global.powerup
            {
                case 0:
                    return spr_SMB_toad_small_shoe;
                case 1:
                    return spr_SMB_toad_big_shoe;
                case 2:
                    return spr_SMB_toad_fire_shoe;
                case -50:
                    return spr_SMB_toad_superball_shoe;
                case -77:
                    return spr_SMB_toad_mega_shoe;
                case -78:
                    return spr_SMB_toad_hen_shoe;
                case -85:
                    return spr_SMB_link_shoe;
				case -80:
                    return spr_SMB2_toad_big_shoe;
            }

        }
        else if (global.jugador == 3)
        {
            switch global.powerup
            {
                case 0:
                    return spr_SMB_toadette_small_shoe;
                case 1:
                    return spr_SMB_toadette_big_shoe;
                case 2:
                    return spr_SMB_toadette_fire_shoe;
                case -50:
                    return spr_SMB_toadette_superball_shoe;
                case -77:
                    return spr_SMB_toadette_mega_shoe;
                case -78:
                    return spr_SMB_toadette_hen_shoe;
                case -85:
                    return spr_SMB_link_shoe;
				case -80:
                    return spr_SMB2_toadette_big_shoe;
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
                    return spr_SMB3_mario_small_shoe;
                case 1:
                    return spr_SMB3_mario_big_shoe;
                case 2:
                    return spr_SMB3_mario_fire_shoe;
                case -39:
                    return spr_SMB3_mario_raccoon_shoe;
                case -29:
                    return spr_SMB3_mario_frog_shoe;
                case -46:
                    return spr_SMB3_mario_hammer_shoe;
            }

        }
        else if (global.jugador == 1)
        {
            switch global.powerup
            {
                case 0:
                    return spr_SMB3_luigi_small_shoe;
                case 1:
                    return spr_SMB3_luigi_big_shoe;
                case 2:
                    return spr_SMB3_luigi_fire_shoe;
                case -39:
                    return spr_SMB3_luigi_raccoon_shoe;
                case -29:
                    return spr_SMB3_mario_frog_shoe;
                case -46:
                    return spr_SMB3_mario_hammer_shoe;
            }

        }
        else if (global.jugador == 2)
        {
            switch global.powerup
            {
                case 0:
                    return spr_SMB3_toad_small_shoe;
                case 1:
                    return spr_SMB3_toad_big_shoe;
                case 2:
                    return spr_SMB3_toad_fire_shoe;
                case -39:
                    return spr_SMB3_toad_raccoon_shoe;
                case -29:
                    return spr_SMB3_toad_frog_shoe;
                case -46:
                    return spr_SMB3_toad_hammer_shoe;
            }

        }
        else if (global.jugador == 3)
        {
            switch global.powerup
            {
                case 0:
                    return spr_SMB3_toadette_small_shoe;
                case 1:
                    return spr_SMB3_toadette_big_shoe;
                case 2:
                    return spr_SMB3_toadette_fire_shoe;
                case -39:
                    return spr_SMB3_toadette_raccoon_shoe;
                case -29:
                    return spr_SMB3_toadette_frog_shoe;
                case -46:
                    return spr_SMB3_toadette_hammer_shoe;
            }

        }
    }
}

