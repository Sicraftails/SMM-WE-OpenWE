switch global.apariencia
{
    case 0:
        sprite_index = spr_SMB_hammer
        break
    case 1:
        sprite_index = spr_SMB3_hammer
        break
    case 2:
        sprite_index = spr_hammer
        break
    case 3:
        sprite_index = spr_NSMBU_hammer
        break
}

if (global.bg_level == "underwater" || (global.bg_level == "sky" && global.modo_noche == 1) || (global.bg_level == "airship" && global.modo_noche == 1) || (instance_exists(obj_lava_water) && y > (obj_lava_water.y + 14) && global.bg_level == "forest" && global.modo_noche == 0))
{
    vspeed = -2
    gravity = 0.05
}
else
{
    vspeed = -3
    gravity = 0.125
}
direct = 1
modo_lava = 0

