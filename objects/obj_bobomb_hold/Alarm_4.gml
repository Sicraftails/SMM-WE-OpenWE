with (instance_create((x - (6 * direct)), (y - 6), obj_smoke))
{
    sprite_index = spr_NSMBU_smoke_bobomb
    depth = (other.depth + 1)
    image_speed = 0.6
}
alarm[4] = 15
