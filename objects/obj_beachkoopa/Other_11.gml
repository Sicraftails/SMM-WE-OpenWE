with (instance_create(x, y, obj_stomped))
{
    if (other.object_index == obj_beachkoopa_red)
        sprite_index = spr_koopa_sq_red
    else
        sprite_index = spr_koopa_sq
}
if (key == 1 && obj_levelmanager.editor == 0)
{
    with (instance_create((x - 8), (y - 8), obj_key_appear))
        vspeed = -4
}
instance_destroy()

