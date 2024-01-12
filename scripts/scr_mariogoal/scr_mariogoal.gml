function scr_mariogoal() {
if (global.apariencia == 0)
{
    if (global.jugador == 0)
    {
        switch global.powerup
        {
            case 0:
                return spr_SMB_mario_small_climb;
            case 1:
                return spr_SMB_mario_big_climb;
            case 2:
                return spr_SMB_mario_fire_climb;
            case -50:
                return spr_SMB_mario_superball_climb;
            case -77:
                return spr_SMB_mario_mega_climb;
            case -78:
                return spr_SMB_mario_hen_climb;
            case -85:
                return spr_SMB_link_climb;
        }

    }
    else if (global.jugador == 1)
    {
        switch global.powerup
        {
            case 0:
                return spr_SMB_luigi_small_climb;
            case 1:
                return spr_SMB_luigi_big_climb;
            case 2:
                return spr_SMB_luigi_fire_climb;
            case -50:
                return spr_SMB_luigi_superball_climb;
            case -77:
                return spr_SMB_luigi_mega_climb;
            case -78:
                return spr_SMB_luigi_hen_climb;
            case -85:
                return spr_SMB_link_climb;
        }

    }
    else if (global.jugador == 2)
    {
        switch global.powerup
        {
            case 0:
                return spr_SMB_toad_small_climb;
            case 1:
                return spr_SMB_toad_big_climb;
            case 2:
                return spr_SMB_toad_fire_climb;
            case -50:
                return spr_SMB_toad_superball_climb;
            case -77:
                return spr_SMB_toad_mega_climb;
            case -78:
                return spr_SMB_toad_hen_climb;
            case -85:
                return spr_SMB_link_climb;
        }

    }
    else if (global.jugador == 3)
    {
        switch global.powerup
        {
            case 0:
                return spr_SMB_toadette_small_climb;
            case 1:
                return spr_SMB_toadette_big_climb;
            case 2:
                return spr_SMB_toadette_fire_climb;
            case -50:
                return spr_SMB_toadette_superball_climb;
            case -77:
                return spr_SMB_toadette_mega_climb;
            case -78:
                return spr_SMB_toadette_hen_climb;
            case -85:
                return spr_SMB_link_climb;
        }

    }
}
else if (global.jugador == 0)
{
    switch global.powerup
    {
        case 0:
            return spr_mario_small_goal;
        case 1:
            return spr_mario_big_goal;
        case 2:
            return spr_mario_fire_goal;
        case 3:
            return spr_mario_big_goal;
        case -82:
            return spr_mario_pballon_idle;
    }

}
else if (global.jugador == 1)
{
    switch global.powerup
    {
        case 0:
            return spr_luigi_small_goal;
        case 1:
            return spr_luigi_big_goal;
        case 2:
            return spr_luigi_fire_goal;
        case 3:
            return spr_luigi_big_goal;
        case -82:
            return spr_luigi_pballon_idle;
    }

}
else if (global.jugador == 2)
{
    switch global.powerup
    {
        case 0:
            return spr_toad_small_goal;
        case 1:
            return spr_toad_big_goal;
        case 2:
            return spr_toad_fire_goal;
        case 3:
            return spr_toad_big_goal;
        case -82:
            return spr_toad_pballon_idle;
    }

}
else if (global.jugador == 3)
{
    switch global.powerup
    {
        case 0:
            return spr_toadette_small_goal;
        case 1:
            return spr_toadette_big_goal;
        case 2:
            return spr_toadette_fire_goal;
        case 3:
            return spr_toadette_big_goal;
        case -82:
            return spr_toadette_pballon_idle;
    }

}

}
