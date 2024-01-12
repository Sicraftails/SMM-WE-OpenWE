with (instance_create(x, y, obj_smoke))
{
    sprite_index = spr_effect_transform
    image_speed = 0.3
}
global.cheepcheep = 1
with (instance_create(x, y, obj_cheepcheep2_res))
    wings = other.wings
if instance_exists(obj_card_item)
{
    with (obj_card_item)
    {
        if (obj == obj_cheepcheep_res)
        {
            obj = obj_cheepcheep2_res
            obj_draw = 39
        }
    }
}
instance_destroy()
