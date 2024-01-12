if (transform == 4)
{
    if (warp == 0 && size == 0)
    {
        audio_stop_sound(scr_snd_pipes())
        audio_play_sound(scr_snd_pipes(), 0, false)
        t_x_pos = (x + 32)
        t_y_pos = y
        warp = 1
        event_user(6)
    }
}
else
{
    with (instance_create((x - 8), (y - 8), obj_smoke))
    {
        sprite_index = spr_effect_transform
        image_speed = 0.3
    }
    global.tuberia = transform
    color = transform
    if (warp == 2)
        event_user(5)
    if instance_exists(obj_card_item)
    {
        with (obj_card_item)
        {
            if (obj == obj_tuberia_res)
            {
                switch other.color
                {
                    case 0:
                        obj_draw = 134
                        break
                    case 1:
                        obj_draw = 135
                        break
                    case 2:
                        obj_draw = 136
                        break
                    case 3:
                        obj_draw = 137
                        break
                }

            }
        }
    }
}
