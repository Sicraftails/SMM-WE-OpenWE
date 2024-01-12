if (wings == 0)
{
    if (hspeed == 0)
    {
        if (wake == 1)
            image_speed = 0.5
        else if (paracaidas == 1 || vspeed < 0 || collision_rectangle(bbox_left, (bbox_bottom - 1), bbox_right, (bbox_bottom + 1), obj_solidtop, 0, 0) || collision_rectangle(bbox_left, (bbox_bottom - 1), bbox_right, (bbox_bottom + 1), obj_physicssolid, 0, 0) || collision_rectangle(bbox_left, (bbox_bottom - 1), bbox_right, (bbox_bottom + 1), obj_slopeparent, 0, 0))
        {
            if (global.bg_level == "underwater" || (global.modo_noche == 1 && global.bg_level == "sky") || (global.modo_noche == 1 && global.bg_level == "airship") || (instance_exists(obj_lava_water) && y > (obj_lava_water.y + 16) && global.bg_level == "forest" && global.modo_noche == 0))
                hspeed = (0.3 * direct)
            else
                hspeed = (0.5 * direct)
        }
        else
            alarm[10] = 2
    }
}
else if (wings == 1 && paracaidas == 0)
{
    vspeed = 0.5
    if ((!instance_exists(obj_mario)) || obj_mario.x < x)
        direct = -1
    else
        direct = 1
}
if (global.apariencia == 3 && (wings == 1 || paracaidas == 1))
    sprite_index = spr_NSMBU_koopa_red_b_fly

