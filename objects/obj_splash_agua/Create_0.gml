switch global.apariencia
{
    case 1:
        sprite_index = spr_SMB3_splash
        break
    case 3:
        sprite_index = spr_NSMBU_splash_agua
        break
}

if (global.apariencia == 3)
    image_speed = 0.5
else
    image_speed = 0.2

