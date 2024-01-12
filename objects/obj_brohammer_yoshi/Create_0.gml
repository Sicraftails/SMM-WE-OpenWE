if (global.bg_level == "underwater" || (global.bg_level == "sky" && global.modo_noche == 1) || (global.bg_level == "airship" && global.modo_noche == 1) || (instance_exists(obj_lava_water) && y > (obj_lava_water.y + 14) && global.bg_level == "forest" && global.modo_noche == 0))
{
    vspeed = -1
    gravity = 0.05
}
else
{
    vspeed = -2
    gravity = 0.125
}
big = 0
direct = 1

