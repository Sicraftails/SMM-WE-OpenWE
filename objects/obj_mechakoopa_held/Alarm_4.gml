if instance_exists(obj_player_warp)
    alarm[4] = 240
else
{
    with (instance_create(x, y, obj_mechakoopa))
        direct = other.image_xscale
    instance_destroy()
}

