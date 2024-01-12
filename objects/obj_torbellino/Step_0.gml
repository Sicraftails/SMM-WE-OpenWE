if (global.bg_level == "underwater" || (global.bg_level == "sky" && global.modo_noche == 1) || (global.bg_level == "airship" && global.modo_noche == 1) || (instance_exists(obj_lava_water) && y > (obj_lava_water.y + 16) && ((global.bg_level == "forest" && global.modo_noche == 0) || global.bg_level == "beach")))
    swimming = 1
else
    swimming = 0
if (bortice != obj_lighting)
{
    if instance_exists(bortice)
    {
        bortice.x = x
        bortice.y = y
    }
}
event_user(6)
event_user(3)
event_user(4)

