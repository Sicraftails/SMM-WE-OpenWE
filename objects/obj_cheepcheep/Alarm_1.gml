with (instance_create(((x - 4) + random(round(16))), ((y - 4) + random(round(16))), obj_smoke))
{
    switch global.apariencia
    {
        case 2:
            sprite_index = spr_fire_rest
            break
        case 3:
            sprite_index = spr_NSMBU_fire_rest
            break
        default:
            sprite_index = spr_SMB3_fire_rest
    }

    image_speed = 0.15
    depth = (other.depth - 1)
}
alarm[1] = 4

