if (other.hardness < 99)
{
    if instance_exists(obj_mario)
        scr_musicalscale(obj_mario.id, other, 1)
    with (instance_create((x + 8), (y - 2), obj_smoke))
        sprite_index = spr_spinthump
    with (other.id)
        event_user(0)
}
else if (other.hardness >= 99)
    event_user(0)

