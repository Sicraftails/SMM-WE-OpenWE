function scr_mariodrop() {
if (global.apariencia == 0)
{
    if (global.jugador == 0)
    {
        switch global.powerup
        {
            case 0:
                return spr_SMB_mario_small_jump_drop;
            case 1:
                return spr_SMB_mario_big_jump_drop;
            case 2:
                return spr_SMB_mario_fire_jump_drop;
            case -50:
                return spr_SMB_mario_superball_jump_drop;
            case -77:
                return spr_SMB_mario_mega_jump_drop;
            case -78:
                return spr_SMB_mario_hen_jump_drop;
            case -85:
                return spr_SMB_link_jump_drop;
            case -80:
                return spr_SMB2_mario_big_jump_drop;
        }

    }
    else if (global.jugador == 1)
    {
        switch global.powerup
        {
            case 0:
                return spr_SMB_luigi_small_jump_drop;
            case 1:
                return spr_SMB_luigi_big_jump_drop;
            case 2:
                return spr_SMB_luigi_fire_jump_drop;
            case -50:
                return spr_SMB_luigi_superball_jump_drop;
            case -77:
                return spr_SMB_luigi_mega_jump_drop;
            case -78:
                return spr_SMB_luigi_hen_jump_drop;
            case -85:
                return spr_SMB_link_jump_drop;
            case -80:
                return spr_SMB2_luigi_big_jump_drop;
        }

    }
    else if (global.jugador == 2)
    {
        switch global.powerup
        {
            case 0:
                return spr_SMB_toad_small_jump_drop;
            case 1:
                return spr_SMB_toad_big_jump_drop;
            case 2:
                return spr_SMB_toad_fire_jump_drop;
            case -50:
                return spr_SMB_toad_superball_jump_drop;
            case -77:
                return spr_SMB_toad_mega_jump_drop;
            case -78:
                return spr_SMB_toad_hen_jump_drop;
            case -85:
                return spr_SMB_link_jump_drop;
            case -80:
                return spr_SMB2_toad_big_jump_drop;
        }

    }
    else if (global.jugador == 3)
    {
        switch global.powerup
        {
            case 0:
                return spr_SMB_toadette_small_jump_drop;
            case 1:
                return spr_SMB_toadette_big_jump_drop;
            case 2:
                return spr_SMB_toadette_fire_jump_drop;
            case -50:
                return spr_SMB_toadette_superball_jump_drop;
            case -77:
                return spr_SMB_toadette_mega_jump_drop;
            case -78:
                return spr_SMB_toadette_hen_jump_drop;
            case -85:
                return spr_SMB_link_jump_drop;
            case -80:
                return spr_SMB2_toadette_big_jump_drop;
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
                return spr_SMB3_mario_small_jump_drop;
            case 1:
                return spr_SMB3_mario_big_jump_drop;
            case 2:
                return spr_SMB3_mario_fire_jump_drop;
            case -39:
                return spr_SMB3_mario_raccoon_jump_drop;
            case -29:
                return spr_SMB3_mario_frog_jump_drop;
            case -46:
                return spr_SMB3_mario_hammer_jump_drop;
        }

    }
    else if (global.jugador == 1)
    {
        switch global.powerup
        {
            case 0:
                return spr_SMB3_luigi_small_jump_drop;
            case 1:
                return spr_SMB3_luigi_big_jump_drop;
            case 2:
                return spr_SMB3_luigi_fire_jump_drop;
            case -39:
                return spr_SMB3_luigi_raccoon_jump_drop;
            case -29:
                return spr_SMB3_mario_frog_jump_drop;
            case -46:
                return spr_SMB3_mario_hammer_jump_drop;
        }

    }
    else if (global.jugador == 2)
    {
        switch global.powerup
        {
            case 0:
                return spr_SMB3_toad_small_jump_drop;
            case 1:
                return spr_SMB3_toad_big_jump_drop;
            case 2:
                return spr_SMB3_toad_fire_jump_drop;
            case -39:
                return spr_SMB3_toad_raccoon_jump_drop;
            case -29:
                return spr_SMB3_toad_frog_jump_drop;
            case -46:
                return spr_SMB3_toad_hammer_jump_drop;
        }

    }
    else if (global.jugador == 3)
    {
        switch global.powerup
        {
            case 0:
                return spr_SMB3_toadette_small_jump_drop;
            case 1:
                return spr_SMB3_toadette_big_jump_drop;
            case 2:
                return spr_SMB3_toadette_fire_jump_drop;
            case -39:
                return spr_SMB3_toadette_raccoon_jump_drop;
            case -29:
                return spr_SMB3_toadette_frog_jump_drop;
            case -46:
                return spr_SMB3_toadette_hammer_jump_drop;
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
                return spr_mario_small_fall;
            case 1:
                return spr_mario_big_fall;
            case 2:
                return spr_mario_fire_fall;
            case 3:
                return spr_mario_big_fall;
            case -82:
                return spr_mario_pballon_idle;
        }

    }
    else if (global.jugador == 1)
    {
        switch global.powerup
        {
            case 0:
                return spr_luigi_small_jump_drop;
            case 1:
                return spr_luigi_big_jump_drop;
            case 2:
                return spr_luigi_fire_jump_drop;
            case 3:
                return spr_luigi_big_jump_drop;
            case -82:
                return spr_luigi_pballon_idle;
        }

    }
    else if (global.jugador == 2)
    {
        switch global.powerup
        {
            case 0:
                return spr_toad_small_jump_drop;
            case 1:
                return spr_toad_big_jump_drop;
            case 2:
                return spr_toad_fire_jump_drop;
            case 3:
                return spr_toad_big_jump_drop;
            case -82:
                return spr_toad_pballon_idle;
        }

    }
    else if (global.jugador == 3)
    {
        switch global.powerup
        {
            case 0:
                return spr_toadette_small_jump_drop;
            case 1:
                return spr_toadette_big_jump_drop;
            case 2:
                return spr_toadette_fire_jump_drop;
            case 3:
                return spr_toadette_big_jump_drop;
            case -82:
                return spr_toadette_pballon_idle;
        }

    }
}
else if (global.apariencia == 4)
{
    if (global.jugador == 0)
    {
        switch global.powerup
        {
            case 1:
                return spr_SMB2_mario_big_jump_drop;
        }

    }
    else if (global.jugador == 1)
    {
        switch global.powerup
        {
            case 1:
                return spr_SMB2_luigi_big_jump_drop;
        }

    }
    else if (global.jugador == 2)
    {
        switch global.powerup
        {
            case 1:
                return spr_SMB2_toad_big_jump_drop;
        }

    }
    else if (global.jugador == 3)
    {
        switch global.powerup
        {
            case 1:
                return spr_SMB2_toadette_big_jump_drop;
        }

    }
}


}
