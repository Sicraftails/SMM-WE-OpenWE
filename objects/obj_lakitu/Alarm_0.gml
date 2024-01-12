switch global.apariencia
{
    case 0:
        image_index = 1
        break
    case 1:
        sprite_index = spr_SMB3_lakitu_throw
        image_speed = 0.1
        break
    case 2:
        sprite_index = spr_lakitu_throw
        image_speed = 0.1
        break
    case 3:
        sprite_index = spr_NSMBU_lakitu_throw
        image_index = 0
        image_speed = 0.5
        break
}

throw_anim = 1
if (global.apariencia == 3)
    alarm[1] = 10
else
    alarm[1] = 30

