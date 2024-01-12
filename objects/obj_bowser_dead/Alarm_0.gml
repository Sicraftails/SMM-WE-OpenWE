if instance_exists(obj_lava_water)
{
    if (global.bg_level == "forest")
        instance_create(x, (obj_lava_water.y - 26), obj_splash_posion)
    else
        instance_create(x, (obj_lava_water.y - 26), obj_splash_lava)
}
alarm[0] = 20

