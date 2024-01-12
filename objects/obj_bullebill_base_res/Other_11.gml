with (instance_create(x, y, obj_smoke))
{
    sprite_index = spr_effect_transform
    image_speed = 0.3
}
global.bulletbill_base = 1
with (instance_create(x, y, obj_bullebill_base_red_res))
{
    sprout = other.sprout
    size_y = other.size_y
}
if instance_exists(obj_card_item)
{
    with (obj_card_item)
    {
        if (obj == obj_bullebill_base_res)
        {
            obj = obj_bullebill_base_red_res
            obj_draw = 7
        }
    }
}
instance_destroy()
