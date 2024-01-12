switch global.apariencia
{
    case 0:
        sprite_index = spr_SMB3_sparkles_coin
        break
    case 1:
        sprite_index = spr_SMB3_sparkles_coin
        break
    case 3:
        sprite_index = spr_NSMBU_sparkles_coin
        break
}

if (global.apariencia == 3) {
//No animar
image_speed = 0;
image_index = 0;

//Scale
scale = 1;

//Tasa de encogimiento
shrink_rate = 0.025
} else {
//No animar
image_speed = 0;
image_index = 0;

//Scale
scale = 1;

//Tasa de encogimiento
shrink_rate = 0.025 }