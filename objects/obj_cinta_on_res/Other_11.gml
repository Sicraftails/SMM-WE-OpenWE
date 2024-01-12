with (instance_create(x, y, obj_smoke))
{
    sprite_index = spr_effect_transform
    image_speed = 0.3
}
if (color == 0)
{
    global.cintas = 1
    color = 1
}
else
{
    global.cintas = 0
    color = 0
}
if instance_exists(obj_card_item)
{
    with (obj_card_item)
    {
        if (obj == obj_cinta_on_res)
        {
            if (other.color == 0)
                obj_draw = 42
            else
                obj_draw = 40
        }
    }
}

