sprite = spr_platform_blue
switch global.apariencia
{
    case 0:
        sprite_wings = spr_SMB_wings
        break
    case 1:
        sprite_wings = spr_SMB3_wings
        break
    case 2:
        sprite_wings = spr_wings
        break
    case 3:
        sprite_wings = spr_NSMBU_wings
        break
}

index = 0
size_x = 4
image_speed = 0
ready = 0
wings = 0
anim = 0
timer = 0
alarm[0] = 1

