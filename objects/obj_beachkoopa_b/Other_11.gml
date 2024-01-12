with (instance_create(x, y, obj_stomped))
{
    sprite_index = spr_koopa_sq_b
    if (other.object_index == obj_beachkoopa_red_b)
        image_index = 1
}
if (key == 1 && obj_levelmanager.editor == 0)
{
    with (instance_create((x - 8), (y - 8), obj_key_appear))
        vspeed = -4
}
instance_destroy()

