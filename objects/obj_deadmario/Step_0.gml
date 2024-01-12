if (anim_dead2 == 1)
{
    if (image_index >= 23.5)
    {
        image_speed = 0
        image_index = 23
    }
    else
        image_speed = 0.5
}
if (global.bg_level == "underwater" || (global.modo_noche == 1 && global.bg_level == "sky") || (global.modo_noche == 1 && global.bg_level == "airship") || (instance_exists(obj_lava_water) && y > (obj_lava_water.y + 16) && global.bg_level == "forest" && global.modo_noche == 0))
{
    if (vspeed > 2)
    {
        vspeed = 2
        gravity = 0
    }
}
else if (vspeed > 4)
{
    vspeed = 4
    gravity = 0
}
event_user(0)

