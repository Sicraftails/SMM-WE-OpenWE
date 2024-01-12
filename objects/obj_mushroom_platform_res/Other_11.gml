with (instance_create((x - 8), (y - 8), obj_smoke))
{
    sprite_index = spr_effect_transform
    image_speed = 0.3
}
global.mushroom_platform = transform
color = transform
if instance_exists(obj_card_item)
{
    with (obj_card_item)
    {
        if (obj == obj_mushroom_platform_res)
        {
            if (other.color == 0)
                obj_draw = 90
            else if (other.color == 1)
                obj_draw = 91
            else if (other.color == 2)
                obj_draw = 92
        }
    }
}

