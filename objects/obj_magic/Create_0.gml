switch global.apariencia
{
    case 0:
        sprite_index = spr_SMB_magic
        break
    case 1:
        sprite_index = spr_SMB3_magic
        break
    case 2:
        sprite_index = spr_magic
        break
    case 3:
        sprite_index = spr_NSMBU_magic
        break
}

int = 0
anim_magic = 0
image_speed = 0.15
angle = 0
alarm[0] = 4
disappear_meta = 0
if instance_exists(obj_mario)
{
    if (global.bg_level == "underwater" || (global.modo_noche == 1 && global.bg_level == "sky") || (global.modo_noche == 1 && global.bg_level == "airship") || (instance_exists(obj_lava_water) && y > (obj_lava_water.y + 16) && global.bg_level == "forest" && global.modo_noche == 0))
        move_towards_point(obj_mario.x, (obj_mario.y + 16), 0.5)
    else
        move_towards_point(obj_mario.x, (obj_mario.y + 16), 1)
}
else if (global.bg_level == "underwater" || (global.modo_noche == 1 && global.bg_level == "sky") || (global.modo_noche == 1 && global.bg_level == "airship") || (instance_exists(obj_lava_water) && y > (obj_lava_water.y + 16) && global.bg_level == "forest" && global.modo_noche == 0))
    move_towards_point(obj_levelmanager.x, obj_levelmanager.y, 0.5)
else
    move_towards_point(obj_levelmanager.x, obj_levelmanager.y, 1)

