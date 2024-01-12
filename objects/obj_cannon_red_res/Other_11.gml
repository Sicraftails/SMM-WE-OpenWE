with (instance_create(x, y, obj_smoke))
{
    sprite_index = spr_effect_transform
    image_speed = 0.3
}
global.cannon = 0
with (instance_create(x, y, obj_cannon_res))
{
    direct = other.direct
    d = other.d
    u = other.u
    l = other.l
    r = other.r
}
if instance_exists(obj_card_item)
{
    with (obj_card_item)
    {
        if (obj == obj_cannon_red_res)
        {
            obj = obj_cannon_res
            if (global.bg_level == "castle" || global.bg_level == "ghost" || global.bg_level == "underground" || global.modo_noche == 1)
                obj_draw = 156
            else
                obj_draw = 155
        }
    }
}
instance_destroy()
