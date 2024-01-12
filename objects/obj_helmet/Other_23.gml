if instance_exists(fallow)
{
    if (fallow == obj_player_goal_smw && fallow.pose == 1)
        visible = false
    if (global.apariencia == 0)
    {
        if instance_exists(obj_kuriboshoe)
        {
            var off = obj_kuriboshoe.offset
            if (global.powerup == 0 || global.powerup == -85)
                pos_y = (9 - off)
            else if (global.powerup == -77)
                pos_y = (-14 - off)
            else
                pos_y = (7 - off)
        }
        else if instance_exists(obj_kuribo_drybones)
        {
            off = obj_kuribo_drybones.offset
            if (global.powerup == 0 || global.powerup == -85)
                pos_y = (10 - off)
            else
                pos_y = (7 - off)
        }
        else if (global.powerup == 0 || global.powerup == -85)
            pos_y = 16
        else if (global.powerup == -78)
            pos_y = 0
        else if (global.powerup == -77)
            pos_y = 0
        else
            pos_y = 2
    }
    else if (global.apariencia == 1)
    {
        if instance_exists(obj_kuriboshoe)
        {
            off = obj_kuriboshoe.offset
            if (global.powerup == 0)
                pos_y = (9 - off)
            else
                pos_y = (8 - off)
        }
        else if instance_exists(obj_kuribo_drybones)
        {
            off = obj_kuribo_drybones.offset
            if (global.powerup == 0)
                pos_y = (9 - off)
            else
                pos_y = (5 - off)
        }
        else if (global.powerup == 0)
            pos_y = 17
        else
            pos_y = 8
    }
    else if (global.apariencia == 2)
    {
        if instance_exists(obj_kuribo_drybones)
        {
            if (fallow.hspeed == 0)
                off = obj_kuribo_drybones.offset
            else
                off = (obj_kuribo_drybones.offset - 2)
            if (global.powerup == 0)
                pos_y = (9 - off)
            else
                pos_y = (7 - off)
        }
        else if instance_exists(obj_yoshi2)
        {
            if (global.powerup == 0)
                pos_y = 3
            else
                pos_y = -1
        }
        else if (global.powerup == 0)
        {
            if (fallow.sprite_index == scr_marioduck())
                pos_y = 21
            else
                pos_y = 15
        }
        else if (fallow.sprite_index == scr_marioduck())
            pos_y = 20
        else
            pos_y = 9
    }
}
