var dark;
if (global.bg_level == "castle" || global.bg_level == "ghost" || global.bg_level == "underground" || global.modo_noche == 1)
    dark = 1
else
    dark = 0
switch global.apariencia
{
    case 0:
        if (dark == 1)
            sprite_index = spr_SMB_cannon_night
        else
            sprite_index = spr_SMB_cannon
        break
    case 1:
        if (dark == 1)
            sprite_index = spr_SMB3_cannon_night
        else
            sprite_index = spr_SMB3_cannon
        break
    case 3:
        sprite_index = spr_NSMBU_cannon
        break
}

direct = 0
u = 0
d = 0
l = 0
r = 0
alarm[0] = 90
calcular = 0
alarm[1] = 10
image_speed = 0
image_index = (direct / 45)
sprite_anim = spr_NSMBU_cannon_anim
anim_shoot = 0

