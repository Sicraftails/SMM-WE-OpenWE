with (instance_create(x, y, obj_smoke))
{
    sprite_index = spr_effect_transform
    image_speed = 0.3
}
global.risas = 1
instance_create(x, y, obj_bebe_snd_res)
if instance_exists(obj_card_item)
{
    with (obj_card_item)
    {
        if (obj == obj_risas_snd_res)
        {
            obj = obj_bebe_snd_res
            obj_draw = 3
        }
    }
}
instance_destroy()
