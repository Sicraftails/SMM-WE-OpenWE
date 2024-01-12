with (instance_create(x, y, obj_smoke))
{
    sprite_index = spr_effect_transform
    image_speed = 0.3
}
global.pblock = 1
instance_create(x, y, obj_pblock2_res)
if instance_exists(obj_card_item)
{
    with (obj_card_item)
    {
        if (obj == obj_pblock_res)
        {
            obj = obj_pblock2_res
            obj_draw = 182
        }
    }
}
instance_destroy()
