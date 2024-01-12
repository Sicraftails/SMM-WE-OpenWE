with (instance_create(x, y, obj_smoke))
{
    sprite_index = spr_effect_transform
    image_speed = 0.3
}
global.bulletbill_base = 0
with (instance_create(x, y, obj_bullebill_base_res))
{
    sprout = other.sprout
    size_y = other.size_y
}
if instance_exists(obj_card_item)
{
    with (obj_card_item)
    {
        if (obj == obj_bullebill_base_red_res)
        {
            obj = obj_bullebill_base_res
            if (global.bg_level == "castle" || global.bg_level == "ghost" || global.bg_level == "underground" || global.modo_noche == 1)
                obj_draw = 6
            else
                obj_draw = 5
        }
    }
}
instance_destroy()
