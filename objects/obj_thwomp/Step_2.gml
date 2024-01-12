if instance_exists(obj_mario)
{
    switch direct_t
    {
        case 1:
            sprite_index = s_thwomp
            if (ready == 0)
            {
                if (obj_mario.x > (bbox_left - 48) && obj_mario.x < (bbox_left - 32) && obj_mario.y > (bbox_top - 1))
                {
                    image_index = 1
                    direct = 1
                }
                else if (obj_mario.x < (bbox_right + 48) && obj_mario.x > (bbox_right + 32) && obj_mario.y > (bbox_top - 1))
                {
                    image_index = 1
                    direct = -1
                }
                else
                {
                    image_index = 0
                    direct = 1
                }
            }
            else if (ready == 1)
            {
                image_index = 2
                direct = 1
            }
            break
        case 2:
            sprite_index = s_thwomp_h
            if (ready == 0)
            {
                if (obj_mario.x > (bbox_left - 150) && obj_mario.x < (bbox_left + 4) && obj_mario.y > (bbox_top - 40) && obj_mario.y < (bbox_bottom - 7))
                {
                    image_index = 1
                    direct = 1
                }
                else
                {
                    image_index = 0
                    direct = 1
                }
            }
            else if (ready == 1)
            {
                image_index = 2
                direct = 1
            }
            break
        case 3:
            sprite_index = s_thwomp_h
            if (ready == 0)
            {
                if (obj_mario.x < (bbox_right + 150) && obj_mario.x > (bbox_right - 4) && obj_mario.y > (bbox_top - 40) && obj_mario.y < (bbox_bottom - 7))
                {
                    image_index = 1
                    direct = -1
                }
                else
                {
                    image_index = 0
                    direct = -1
                }
            }
            else if (ready == 1)
            {
                image_index = 2
                direct = -1
            }
            break
    }

}

