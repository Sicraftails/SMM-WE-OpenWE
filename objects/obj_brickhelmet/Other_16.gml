switch global.apariencia
{
    case 0:
        if (global.powerup == -77)
            sprite_index = s_brickhelmet_2
        else
            sprite_index = s_brickhelmet
        if (direct == 1)
            index = 0
        else
            index = 1
        break
    case 1:
        if (instance_exists(obj_mario) && obj_mario.sprite_index == scr_marioclimb())
        {
            sprite_index = s_brickhelmet_2
            index = 2
        }
        else if instance_exists(obj_spinner)
        {
            sprite_index = s_brickhelmet_2
            index = obj_spinner.image_index
        }
        else
        {
            sprite_index = s_brickhelmet
            index = 0
        }
        break
    case 2:
        if (instance_exists(obj_player_goal_smw) && obj_player_goal_smw.pose == 1)
        {
            sprite_index = s_brickhelmet
            index = 1
        }
        else if instance_exists(obj_yoshi2)
            sprite_index = s_brickhelmet_3
        else if (instance_exists(obj_mario) && obj_mario.sprite_index == scr_marioclimb())
        {
            sprite_index = s_brickhelmet
            index = 3
        }
        else if (instance_exists(obj_mario) && (obj_mario.stompstyle == 1 || obj_mario.caped > 0))
        {
            sprite_index = s_brickhelmet
            index = obj_mario.image_index
        }
        else if (instance_exists(obj_mario) && (obj_mario.isup == 1 || obj_mario.isuphold == 1) && obj_mario.state == 0)
            sprite_index = s_brickhelmet_2
        else
        {
            sprite_index = s_brickhelmet
            index = 0
        }
        break
    case 3:
        if (instance_exists(obj_mario) && obj_mario.airspin == 1)
        {
            sprite_index = s_brickhelmet_3
            index = obj_mario.image_index
        }
        else if (instance_exists(obj_mario) && obj_mario.stompstyle == 1)
        {
            sprite_index = s_brickhelmet_2
            index = obj_mario.image_index
        }
        else
        {
            sprite_index = s_brickhelmet
            index += 0.3
        }
        break
}

