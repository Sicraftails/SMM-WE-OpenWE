if instance_exists(obj_mario)
{
    if (global.powerup == -29 || global.powerup == -38 || global.powerup == -43 || global.powerup == -30)
    {
        obj_mario.helmet = 0
        event_user(5)
        return;
    }
    if (global.jugador == 0)
        event_user(8)
    else if (global.jugador == 1)
        event_user(9)
    else if (global.jugador > 1)
        event_user(10)
    if (global.apariencia == 0 && obj_mario.state == 3)
    {
        if (global.powerup == -77)
            x = (obj_mario.x - (12 * direct))
        else
            x = (obj_mario.x - (6 * direct))
    }
    else
        x = obj_mario.x
    y = (obj_mario.y + pos_y)
    if (instance_exists(obj_kuriboshoe) || instance_exists(obj_kuribo_drybones))
        depth = -12
    else
        depth = -9
    if (instance_exists(obj_kuribo_drybones) && obj_kuribo_drybones.invincible == 1)
        image_alpha = 0
    else if (obj_mario.invincible == 1 && (!instance_exists(obj_invincibility)))
        image_alpha = obj_mario.image_alpha
    else
        image_alpha = 1
    if (obj_mario.stompstyle == 1)
        direct = 1
    else if instance_exists(obj_yoshi2)
        direct = obj_yoshi2.direct
    else
        direct = obj_mario.direct
    if ((!instance_exists(obj_mario_transform2)) && obj_mario.state != 3)
        event_user(7)
    if (obj_mario.state == 3)
    {
        rotacion = 0
        rotacion = 0
        rot = 1
        up = 0
    }
    if (abs(obj_mario.hspeed) <= 1.3)
        repeat_coins = 30
    else if (abs(obj_mario.hspeed) > 1.3 && abs(obj_mario.hspeed) < 2.3)
        repeat_coins = 15
    else
        repeat_coins = 6
    event_user(6)
}
else
{
    event_user(12)
    if (fallow != obj_lighting && instance_exists(fallow))
    {
        event_user(13)
        if (fallow == obj_player_goal_smb1 && fallow.sprite_index == scr_marioclimb())
        {
            if (global.powerup == -77)
                x = (fallow.x - (12 * fallow.direct))
            else
                x = (fallow.x - (6 * fallow.direct))
        }
        else
            x = fallow.x
        y = (fallow.y + pos_y)
        if (fallow.object_index == obj_player_warp)
            depth = 12
        else if (instance_exists(obj_kuriboshoe) || instance_exists(obj_kuribo_drybones))
            depth = -12
        else
            depth = -9
        image_alpha = 1
        direct = fallow.direct
        event_user(7)
        event_user(6)
    }
}
