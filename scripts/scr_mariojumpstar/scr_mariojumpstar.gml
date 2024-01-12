function scr_mariojumpstar()
{
    if (global.jugador == 0)
    {
        switch global.powerup
        {
            case 1:
                return spr_SMB3_mario_big_jump_star;
            case 2:
                return spr_SMB3_mario_fire_jump_star;
            case -39:
                return spr_SMB3_mario_raccoon_jump_star;
            case -46:
                return spr_SMB3_mario_hammer_jump_star;
        }

    }
    else if (global.jugador == 1)
    {
        switch global.powerup
        {
            case 1:
                return spr_SMB3_luigi_big_jump_star;
            case 2:
                return spr_SMB3_luigi_fire_jump_star;
            case -39:
                return spr_SMB3_luigi_raccoon_jump_star;
            case -46:
                return spr_SMB3_mario_hammer_jump_star;
        }

    }
    else if (global.jugador == 2)
    {
        switch global.powerup
        {
            case 1:
                return spr_SMB3_toad_big_jump_star;
            case 2:
                return spr_SMB3_toad_fire_jump_star;
            case -39:
                return spr_SMB3_toad_raccoon_jump_star;
            case -46:
                return spr_SMB3_toad_hammer_jump_star;
        }

    }
    else if (global.jugador == 3)
    {
        switch global.powerup
        {
            case 1:
                return spr_SMB3_toadette_big_jump_star;
            case 2:
                return spr_SMB3_toadette_fire_jump_star;
            case -39:
                return spr_SMB3_toadette_raccoon_jump_star;
            case -46:
                return spr_SMB3_toadette_hammer_jump_star;
        }

    }
}

