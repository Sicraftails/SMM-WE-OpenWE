with (instance_create(x, (y - 16), obj_smoke))
{
    switch global.apariencia
    {
        case 3:
            sprite_index = spr_NSMBU_snow_ball_effect
            break
        case 2:
            sprite_index = spr_snow_ball_effect
            break
        default:
            sprite_index = spr_SMB3_snow_ball_effect
    }

    image_speed = 0.25
    scale = 2
}
instance_destroy()


