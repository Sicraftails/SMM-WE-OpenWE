girar = 0
rot_speed = 2
if (global.bg_level == "underwater" || (global.modo_noche == 1 && global.bg_level == "sky") || (global.modo_noche == 1 && global.bg_level == "airship") || (instance_exists(obj_lava_water) && (bbox_bottom - 8) > (obj_lava_water.y - 12) && ((global.bg_level == "forest" && global.modo_noche == 0) || global.bg_level == "beach")))
    swimming = 1
else
    swimming = 0
modo_lava = 0
if (sprite_index != spr_boomboom_dead && sprite_index != spr_NSMBU_boomboom_dead && sprite_index != spr_NSMBU_boomboom_dead_b && sprite_index != spr_blooper && sprite_index != spr_SMB3_drybones_deads)
{
    image_speed = 0
    image_index = 0
}
alarm[0] = 1
direct = 1
direct_y = 1
scale = 1
dead_boss = 0

