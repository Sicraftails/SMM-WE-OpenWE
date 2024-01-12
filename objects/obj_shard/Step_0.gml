if outside_view()
{
    instance_destroy()
    exit
}
if (global.bg_level == "underwater" || (global.modo_noche == 1 && global.bg_level == "sky") || (global.modo_noche == 1 && global.bg_level == "airship") || (instance_exists(obj_lava_water) && y > (obj_lava_water.y + 16) && global.bg_level == "forest" && global.modo_noche == 0))
{
    if (dir == 0)
        image_angle += 3
    else
        image_angle -= 3
    gravity = 0.1
    if (vspeed > 1.5)
        vspeed = 1.5
    hspeed = (0.5 * sign(hspeed))
}
else
{
    if (dir == 0)
        image_angle += 6
    else
        image_angle -= 6
    gravity = 0.2
    if (vspeed > 3)
        vspeed = 3
    hspeed = (1 * sign(hspeed))
}
