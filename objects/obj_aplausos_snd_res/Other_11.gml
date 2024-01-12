with (instance_create(x, y, obj_smoke))
{
    sprite_index = spr_effect_transform
    image_speed = 0.3
}
global.serpentina = 0
instance_create(x, y, obj_serpentina_snd_res)
if instance_exists(obj_card_item)
{
    with (obj_card_item)
    {
        if (obj == obj_aplausos_snd_res)
        {
            obj = obj_serpentina_snd_res
            obj_draw = 4
        }
    }
}
instance_destroy()
