switch global.apariencia
{
    case 0:
        sprite_index = spr_SMB_spiny_ball
        break
    case 1:
        sprite_index = spr_SMB3_spiny_ball
        break
    case 2:
        sprite_index = spr_spiny_ball
        break
    case 3:
        sprite_index = spr_NSMBU_spiny_ball
        break
}

image_speed = 0.08
if (spiny == 0)
{
    alarm[1] = 60
    spiny = 1
}
else
{
    alarm[2] = 60
    spiny = 0
}

