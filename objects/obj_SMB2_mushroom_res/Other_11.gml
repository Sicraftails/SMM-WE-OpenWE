with (instance_create(x, y, obj_smoke))
{
    sprite_index = spr_effect_transform
    image_speed = 0.3
}
global.smb2mush = 0
instance_create(x, (y), obj_mushroom_res)
if instance_exists(obj_card_item)
{
    with (obj_card_item)
    {
        if (obj == obj_SMB2_mushroom_res)
        {
            obj = obj_mushroom_res
            obj_draw = 96
        }
    }
}
instance_destroy()
