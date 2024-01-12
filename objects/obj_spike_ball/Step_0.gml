if (ready > 0)
{
    spikeball = collision_rectangle(bbox_left, bbox_bottom, bbox_right, ((bbox_bottom + 1) + vspeed), obj_pswitch, 1, 0)
    if (spikeball && spikeball.held == 0 && spikeball.inup == 0 && spikeball.inmune == 0 && bbox_bottom < spikeball.bbox_top && vspeed >= 0)
    {
        with (spikeball)
            event_user(7)
    }
    if (global.bg_level == "underwater" || (instance_exists(obj_lava_water) && (y + 8) >= (obj_lava_water.y - 12)) || (global.modo_noche == 1 && global.bg_level == "sky") || (global.modo_noche == 1 && global.bg_level == "airship") || (instance_exists(obj_lava_water) && y > (obj_lava_water.y + 4) && ((global.bg_level == "forest" && global.modo_noche == 0) || global.bg_level == "beach")))
        swimming = 1
    else
        swimming = 0
    if (global.modo_noche == 1)
    {
        if ((!instance_exists(obj_mario)) || obj_mario.x < x)
        {
            hspeed -= 0.0224
            if (swimming == 1)
            {
                if (hspeed < -1)
                    hspeed = -1
            }
            else if (hspeed < -1.2)
                hspeed = -1.2
        }
        else
        {
            hspeed += 0.0324
            if (swimming == 1)
            {
                if (hspeed > 1)
                    hspeed = 1
            }
            else if (hspeed > 1.2)
                hspeed = 1.2
        }
    }
    if ((ready == 1 && global.apariencia > 1) || (ready == 1 && fisica == 1))
        event_inherited()
    else if (ready == 1 && global.apariencia < 2)
        event_user(3)
    if (paracaidas == 0)
    {
        if (spike_alone == 0)
        {
            if (ready == 1)
                angle -= (5 * sign(hspeed))
        }
        else if (instance_exists(obj_mario) && obj_mario.x > x)
            angle -= 5
        else
            angle += 5
        if (spike_alone_a == 1)
        {
            if (hspeed > 1.2)
            {
                hspeed = 1.2
                spike_alone_a = 0
            }
            else
                hspeed += 0.125
        }
        else if (spike_alone_a == 2)
        {
            if (hspeed < -1.2)
            {
                hspeed = -1.2
                spike_alone_a = 0
            }
            else
                hspeed -= 0.125
        }
    }
    if (swimming == 1)
    {
        if (hspeed > 1)
        {
            hspeed -= 0.08
            if (hspeed <= 1)
                hspeed = 1
        }
        else if (hspeed < -1)
        {
            hspeed += 0.08
            if (hspeed >= -1)
                hspeed = -1
        }
    }
    else if (hspeed > 2)
    {
        hspeed -= 0.08
        if (hspeed <= 1.2)
            hspeed = 1.2
    }
    else if (hspeed < -1.2)
    {
        hspeed += 0.08
        if (hspeed >= -1.2)
            hspeed = -1.2
    }
    if (modo_lava == 0 && instance_exists(obj_lava_water) && (bbox_bottom - 8) >= (obj_lava_water.y - 12) && global.bg_level == "forest" && global.modo_noche == 0)
    {
        modo_lava = 2
        if (global.apariencia != 0)
            instance_create(x, (obj_lava_water.y - 26), obj_splash_agua)
    }
    else if ((modo_lava == 0 && instance_exists(obj_lava_water) && (bbox_bottom - 8) >= (obj_lava_water.y - 12) && global.bg_level == "castle") || (modo_lava == 0 && instance_exists(obj_lava_water) && (bbox_bottom - 8) >= (obj_lava_water.y - 12) && global.bg_level == "forest" && global.modo_noche == 1))
    {
        modo_lava = 1
        if (global.apariencia != 0)
        {
            if (global.bg_level == "castle")
                instance_create(x, (obj_lava_water.y - 26), obj_splash_lava)
            else
                instance_create(x, (obj_lava_water.y - 26), obj_splash_posion)
        }
    }
    else if ((bbox_top - 16) > room_height)
        instance_destroy()
    if (instance_exists(obj_lava_water) && (bbox_bottom - 8) <= (obj_lava_water.y - 12) && obj_lava_water.vspeed > 0 && (modo_lava == 1 || swimming == 1))
        y = (obj_lava_water.y - 20)
    if (paracaidas == 1)
    {
        if (x > (xstart + 16))
        {
            if (hspeed < -0.5)
                hspeed = -0.5
            else
                hspeed -= 0.015
        }
        else if (x < (xstart - 16))
        {
            if (hspeed > 0.5)
                hspeed = 0.5
            else
                hspeed += 0.015
        }
        if (gravity == 0)
        {
            instance_create(x, y, obj_paracaidas_go)
            paracaidas = 0
            ready = 1
            fisica = 1
            alarm[0] = 10
        }
    }
}
