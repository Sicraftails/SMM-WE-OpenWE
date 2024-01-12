function scr_marioshoot() {
if (global.apariencia == 0)
{
    switch global.jugador
    {
        case 0:
            if (global.powerup == -50)
                return spr_SMB_mario_superball_shoot;
            else
                return spr_SMB_mario_fire_shoot;
            break
        case 1:
            if (global.powerup == -50)
                return spr_SMB_luigi_superball_shoot;
            else
                return spr_SMB_luigi_fire_shoot;
            break
        case 2:
            if (global.powerup == -50)
                return spr_SMB_toad_superball_shoot;
            else
                return spr_SMB_toad_fire_shoot;
            break
        case 3:
            if (global.powerup == -50)
                return spr_SMB_toadette_superball_shoot;
            else
                return spr_SMB_toadette_fire_shoot;
            break
    }

}
else if (global.apariencia == 1)
{
    switch global.jugador
    {
        case 0:
            if (global.powerup == -46)
                return spr_SMB3_mario_hammer_shoot;
            else
                return spr_SMB3_mario_fire_shoot;
            break
        case 1:
            if (global.powerup == -46)
                return spr_SMB3_mario_hammer_shoot;
            else
                return spr_SMB3_luigi_fire_shoot;
            break
        case 2:
            if (global.powerup == -46)
                return spr_SMB3_toad_hammer_shoot;
            else
                return spr_SMB3_toad_fire_shoot;
            break
        case 3:
            if (global.powerup == -46)
                return spr_SMB3_toadette_hammer_shoot;
            else
                return spr_SMB3_toadette_fire_shoot;
            break
    }

}
else if (global.apariencia == 2)
{
    switch global.jugador
    {
        case 0:
            return spr_mario_fire_shoot;
        case 1:
            return spr_luigi_fire_shoot;
        case 2:
            return spr_toad_fire_shoot;
        case 3:
            return spr_toadette_fire_shoot;
    }

}
else if (global.apariencia == 3)
{
    if (instance_exists(obj_mario) && obj_mario.isswim == 1)
    {
        if (global.powerup == -38)
            return spr_NSMBU_mario_penguin_swim_shoot;
        else
            return spr_NSMBU_mario_fire_swim_shoot;
    }
    else if (global.powerup == -38)
        return spr_NSMBU_mario_penguin_shoot;
    else
        return spr_NSMBU_mario_fire_shoot;
}

}
