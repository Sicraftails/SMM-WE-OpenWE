if (hspeed == 0)
{
    if (global.bg_level == "underwater" || (global.modo_noche == 1 && global.bg_level == "sky") || (global.modo_noche == 1 && global.bg_level == "airship") || (instance_exists(obj_lava_water) && y > (obj_lava_water.y + 16) && global.bg_level == "forest" && global.modo_noche == 0))
        hspeed = (0.3 * direct)
    else
        hspeed = (0.5 * direct)
}
if (wings == 1 && inup == 0)
{
    if (global.bg_level == "castle" || global.bg_level == "ghost" || global.bg_level == "underground" || global.modo_noche == 1)
        var dark = 1
    else
        dark = 0
    switch global.apariencia
    {
        case 0:
            sprite_index = spr_SMB_buzzybeetle_b_wings
            image_speed = 0
            if (dark == 1)
                image_index = 1
            else
                image_index = 0
            break
        case 1:
            sprite_index = spr_SMB3_buzzybeetle_b_wings
            image_speed = 0
            if (dark == 1)
                image_index = 1
            else
                image_index = 0
            break
        case 2:
            sprite_index = spr_buzzybeetle_b_wings
            break
        case 3:
            sprite_index = spr_NSMBU_buzzybeetle_b_wings
            image_speed = 0.3
            break
    }

    if (mytopid == obj_lighting)
    {
        mytopid = instance_create((x - 16), (y - 10), obj_solidtop)
        mytopid.image_xscale = 2
    }
    stomp = 6
}
