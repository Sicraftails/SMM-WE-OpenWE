if (instance_exists(obj_lava_water) && (bbox_bottom - 8) > (obj_lava_water.y - 12) && global.bg_level == "castle")
{
    instance_create(x, (obj_lava_water.y - 26), obj_splash_lava)
    alarm[1] = 1
}
else if (instance_exists(obj_lava_water) && (bbox_bottom - 8) > (obj_lava_water.y - 12) && global.bg_level == "forest" && global.modo_noche == 1)
{
    instance_create(x, (obj_lava_water.y - 26), obj_splash_posion)
    alarm[1] = 1
}


