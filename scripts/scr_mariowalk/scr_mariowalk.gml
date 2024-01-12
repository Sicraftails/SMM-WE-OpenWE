function scr_mariowalk() {
if (global.apariencia == 0)
{
    if (global.jugador == 0)
    {
        switch global.powerup
        {
            case 0:
                return spr_SMB_mario_small_walk;
            case 1:
                return spr_SMB_mario_big_walk;
            case 2:
                return spr_SMB_mario_fire_walk;
            case -50:
                return spr_SMB_mario_superball_walk;
            case -77:
                return spr_SMB_mario_mega_walk;
            case -78:
                return spr_SMB_mario_hen_walk;
            case -85:
                return spr_SMB_link_walk;
            case -80:
                return spr_SMB2_mario_big_walk;
        }

    }
    else if (global.jugador == 1)
    {
        switch global.powerup
        {
            case 0:
                return spr_SMB_luigi_small_walk;
            case 1:
                return spr_SMB_luigi_big_walk;
            case 2:
                return spr_SMB_luigi_fire_walk;
            case -50:
                return spr_SMB_luigi_superball_walk;
            case -77:
                return spr_SMB_luigi_mega_walk;
            case -78:
                return spr_SMB_luigi_hen_walk;
            case -85:
                return spr_SMB_link_walk;
            case -80:
                return spr_SMB2_luigi_big_walk;
        }

    }
    else if (global.jugador == 2)
    {
        switch global.powerup
        {
            case 0:
                return spr_SMB_toad_small_walk;
            case 1:
                return spr_SMB_toad_big_walk;
            case 2:
                return spr_SMB_toad_fire_walk;
            case -50:
                return spr_SMB_toad_superball_walk;
            case -77:
                return spr_SMB_toad_mega_walk;
            case -78:
                return spr_SMB_toad_hen_walk;
            case -85:
                return spr_SMB_link_walk;
            case -80:
                return spr_SMB2_toad_big_walk;
        }

    }
    else if (global.jugador == 3)
    {
        switch global.powerup
        {
            case 0:
                return spr_SMB_toadette_small_walk;
            case 1:
                return spr_SMB_toadette_big_walk;
            case 2:
                return spr_SMB_toadette_fire_walk;
            case -50:
                return spr_SMB_toadette_superball_walk;
            case -77:
                return spr_SMB_toadette_mega_walk;
            case -78:
                return spr_SMB_toadette_hen_walk;
            case -85:
                return spr_SMB_link_walk;
            case -80:
                return spr_SMB2_toadette_big_walk;
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
                return spr_SMB3_mario_small_walk;
            case 1:
                return spr_SMB3_mario_big_walk;
            case 2:
                return spr_SMB3_mario_fire_walk;
            case -39:
                return spr_SMB3_mario_raccoon_walk;
            case -29:
                return spr_SMB3_mario_frog_walk;
            case -46:
                return spr_SMB3_mario_hammer_walk;
        }

    }
    else if (global.jugador == 1)
    {
        switch global.powerup
        {
            case 0:
                return spr_SMB3_luigi_small_walk;
            case 1:
                return spr_SMB3_luigi_big_walk;
            case 2:
                return spr_SMB3_luigi_fire_walk;
            case -39:
                return spr_SMB3_luigi_raccoon_walk;
            case -29:
                return spr_SMB3_mario_frog_walk;
            case -46:
                return spr_SMB3_mario_hammer_walk;
        }

    }
    else if (global.jugador == 2)
    {
        switch global.powerup
        {
            case 0:
                return spr_SMB3_toad_small_walk;
            case 1:
                return spr_SMB3_toad_big_walk;
            case 2:
                return spr_SMB3_toad_fire_walk;
            case -39:
                return spr_SMB3_toad_raccoon_walk;
            case -29:
                return spr_SMB3_toad_frog_walk;
            case -46:
                return spr_SMB3_toad_hammer_walk;
        }

    }
    else if (global.jugador == 3)
    {
        switch global.powerup
        {
            case 0:
                return spr_SMB3_toadette_small_walk;
            case 1:
                return spr_SMB3_toadette_big_walk;
            case 2:
                return spr_SMB3_toadette_fire_walk;
            case -39:
                return spr_SMB3_toadette_raccoon_walk;
            case -29:
                return spr_SMB3_toadette_frog_walk;
            case -46:
                return spr_SMB3_toadette_hammer_walk;
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
                return spr_mario_small_walk;
            case 1:
                return spr_mario_big_walk;
            case 2:
                return spr_mario_fire_walk;
            case 3:
                return spr_mario_big_walk;
            case -82:
                return spr_mario_pballon_idle;
        }

    }
    else if (global.jugador == 1)
    {
        switch global.powerup
        {
            case 0:
                return spr_luigi_small_walk;
            case 1:
                return spr_luigi_big_walk;
            case 2:
                return spr_luigi_fire_walk;
            case 3:
                return spr_luigi_big_walk;
            case -82:
                return spr_luigi_pballon_idle;
        }

    }
    else if (global.jugador == 2)
    {
        switch global.powerup
        {
            case 0:
                return spr_toad_small_walk;
            case 1:
                return spr_toad_big_walk;
            case 2:
                return spr_toad_fire_walk;
            case 3:
                return spr_toad_big_walk;
            case -82:
                return spr_toad_pballon_idle;
        }

    }
    else if (global.jugador == 3)
    {
        switch global.powerup
        {
            case 0:
                return spr_toadette_small_walk;
            case 1:
                return spr_toadette_big_walk;
            case 2:
                return spr_toadette_fire_walk;
            case 3:
                return spr_toadette_big_walk;
            case -82:
                return spr_toadette_pballon_idle;
        }

    }
}
}
