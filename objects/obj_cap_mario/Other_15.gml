var offset;
if instance_exists(obj_mario)
{
    if instance_exists(obj_yoshi2)
    {
        if (obj_mario.isduck == 1)
        {
            if (obj_mario.state == 2 && obj_mario.vspeed > 0)
                pos_y = 0
            else
                pos_y = -2
        }
        else if (obj_yoshi2.licking == 1 && obj_yoshi2.jumping == 0)
            pos_y = -6
        else if (obj_mario.state == 2 && obj_mario.vspeed > 0)
            pos_y = -8
        else if (sprite_index == spr_cap_run)
            pos_y = -11
        else
            pos_y = -10
    }
    else if instance_exists(obj_kuribo_drybones)
    {
        offset = obj_kuribo_drybones.offset
        if (obj_mario.isduck == 1)
        {
            if (obj_mario.state == 2 && obj_mario.vspeed > 0)
                pos_y = 0
            else
                pos_y = (-((2 - offset)))
        }
        else if (obj_mario.state == 2 && obj_mario.vspeed > 0)
            pos_y = 0
        else
            pos_y = (-2 - offset)
    }
    else if (obj_mario.isduck == 1)
    {
        if (obj_mario.state == 2 && obj_mario.vspeed > 0)
            pos_y = 4
        else
            pos_y = 0
    }
    else if (obj_mario.isduckhold == 1)
    {
        if (obj_mario.state == 2 && obj_mario.vspeed > 0)
            pos_y = 2
        else
            pos_y = 0
    }
    else
        pos_y = 0
}
else if instance_exists(obj_player_goal_smw)
{
    if instance_exists(obj_yoshi2)
    {
        if (obj_player_goal_smw.vspeed > 0)
            pos_y = -8
        else if (sprite_index == spr_cap_run)
            pos_y = -11
        else
            pos_y = -10
    }
    else if instance_exists(obj_kuribo_drybones)
        pos_y = (-2 - obj_kuribo_drybones.offset)
    else
        pos_y = 0
}
if (global.jugador == 1)
    pos_y -= 1


