with (instance_create(x, y, obj_smoke))
{
    sprite_index = spr_effect_transform
    image_speed = 0.3
}
global.bobomb = 0
with (instance_create(x, y, obj_bobomb_res))
{
    wings = other.wings
    paracaidas = other.paracaidas
}
if instance_exists(obj_card_item)
{
    with (obj_card_item)
    {
        if (obj == obj_bobomb_ready_res)
        {
            obj = obj_bobomb_res
            if (global.bg_level == "castle" || global.bg_level == "ghost" || global.bg_level == "underground" || global.modo_noche == 1)
                obj_draw = 26
            else
                obj_draw = 25
        }
    }
}
instance_destroy()
