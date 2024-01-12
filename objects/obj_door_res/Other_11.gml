if (transform != 0)
{
    if (transform == 1 && instance_number(obj_door_switch_res) < 4)
    {
        with (instance_create((x - 8), (y - 8), obj_smoke))
        {
            sprite_index = spr_effect_transform
            image_speed = 0.3
        }
        global.door = 1
        with (instance_create(x, y, obj_door_switch_res))
        {
            door_x = other.door_x
            door_y = other.door_y
        }
        if instance_exists(obj_card_item)
        {
            with (obj_card_item)
            {
                if (obj == obj_door_res)
                {
                    obj = obj_door_switch_res
                    obj_draw = 55
                }
            }
        }
        instance_destroy()
    }
    else if (transform == 2 && instance_number(obj_door_lock_res) < 4)
    {
        with (instance_create((x - 8), (y - 8), obj_smoke))
        {
            sprite_index = spr_effect_transform
            image_speed = 0.3
        }
        global.door = 2
        with (instance_create(x, y, obj_door_lock_res))
        {
            door_x = other.door_x
            door_y = other.door_y
        }
        if instance_exists(obj_card_item)
        {
            with (obj_card_item)
            {
                if (obj == obj_door_res)
                {
                    obj = obj_door_lock_res
                    obj_draw = 147
                }
            }
        }
        instance_destroy()
    }
}
