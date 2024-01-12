with (instance_create(x, y, obj_smoke))
{
    sprite_index = spr_effect_transform
    image_speed = 0.3
}
global.gato = 1
instance_create(x, y, obj_chisporreteo_snd_res)
if instance_exists(obj_card_item)
{
    with (obj_card_item)
    {
        if (obj == obj_golpe_gato_snd_res)
        {
            obj = obj_chisporreteo_snd_res
            obj_draw = 17
        }
    }
}
instance_destroy()
