if (global.powerup == 0)
    mask_index = spr_smallmask
else
    mask_index = spr_bigmask
if (global.bg_level == "underwater" || (instance_exists(obj_lava_water) && y > (obj_lava_water.y + 16)))
    swim = 1
else
    swim = 0
anim += (0.065 + (abs(hspeed) / 7.5))
if (ready == 2 || ready == 3)
{
    if (bbox_top > room_height)
    {
        y = (room_height - 64)
        visible = false
    }
    if (global.bg_level == "underwater" || (global.modo_noche == 1 && global.bg_level == "sky") || (instance_exists(obj_lava_water) && y > (obj_lava_water.y + 16) && global.bg_level == "forest" && global.modo_noche == 0))
        swimming = 1
    else
        swimming = 0
    event_user(3)
    event_user(4)
    if (ready_move == 1)
    {
        if (swim == 1)
        {
            hspeed += 0.1
            if (hspeed > 0.6)
                hspeed = 0.6
        }
        else
        {
            hspeed += 0.08
            if (hspeed > 1.5)
                hspeed = 1.5
        }
    }
    if (ready == 2)
    {
        if (hspeed < 0)
        {
            ready = 3
            event_user(15)
            hspeed = 0
        }
    }
}
if (out_view == 1)
{
    hspeed = 0
    vspeed = 0
    gravity = 0
}
if (collision_rectangle((bbox_left + 2), bbox_bottom, (bbox_right - 2), (bbox_bottom + vspeed), obj_solidtop, 0, 0) || collision_rectangle((bbox_left + 2), bbox_bottom, (bbox_right - 2), (bbox_bottom + vspeed), obj_physicssolid, 0, 0))
    in_solid = 1
if (global.star_flash == 1)
{
        if (cp_cont == 0)
        {
            flashAlpha -= 0.05
            if (flashAlpha < 0.6)
            {
                cp_cont = 1
                if (cp < 1)
                    cp++
                else
                    cp = 0
            }
        }
        else
        {
            flashAlpha += 0.05
            if (flashAlpha > 0.8)
                cp_cont = 0
        }
blend_star = color[cp]
	}
event_user(13)

