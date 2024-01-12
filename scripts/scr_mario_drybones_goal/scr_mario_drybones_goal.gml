function scr_mario_drybones_goal()
{
    if (global.jugador == 0)
    {
        switch global.powerup
        {
            case 0:
                return spr_mario_small_drybones_goal;
            case 1:
                return spr_mario_big_drybones_goal;
            case 2:
                return spr_mario_fire_drybones_goal;
            case 3:
                return spr_mario_big_drybones_goal;
        }

    }
    else if (global.jugador == 1)
    {
        switch global.powerup
        {
            case 0:
                return spr_luigi_small_drybones_goal;
            case 1:
                return spr_luigi_big_drybones_goal;
            case 2:
                return spr_luigi_fire_drybones_goal;
            case 3:
                return spr_luigi_big_drybones_goal;
        }

    }
    else if (global.jugador == 2)
    {
        switch global.powerup
        {
            case 0:
                return spr_toad_small_drybones_goal;
            case 1:
                return spr_toad_big_drybones_goal;
            case 2:
                return spr_toad_fire_drybones_goal;
            case 3:
                return spr_toad_big_drybones_goal;
        }

    }
    else if (global.jugador == 3)
    {
        switch global.powerup
        {
            case 0:
                return spr_toadette_small_drybones_goal;
            case 1:
                return spr_toadette_big_drybones_goal;
            case 2:
                return spr_toadette_fire_drybones_goal;
            case 3:
                return spr_toadette_big_drybones_goal;
        }

    }
}

