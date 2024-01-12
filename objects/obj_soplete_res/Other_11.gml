with (instance_create(x, y, obj_smoke))
{
    sprite_index = spr_effect_transform
    image_speed = 0.3
}
if (sprout == 0)
    sprout = 1
else
    sprout = 0
global.soplete = sprout
if instance_exists(obj_card_item)
{
    with (obj_card_item)
    {
        if (obj == obj_soplete_res)
        {
            if (other.sprout == 1)
                obj_draw = 43
            else
                obj_draw = 166
        }
    }
}
