with (instance_create(x, y, obj_smoke))
{
    sprite_index = spr_effect_transform
    image_speed = 0.3
}
global.pblock = 0
instance_create(x, y, obj_pblock_res)
if instance_exists(obj_card_item)
{
    with (obj_card_item)
    {
        if (obj == obj_pblock2_res)
        {
            obj = obj_pblock_res
            obj_draw = 154
        }
    }
}
instance_destroy()
