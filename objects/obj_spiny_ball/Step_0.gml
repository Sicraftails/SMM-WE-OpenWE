var col_one_top;
if (go == 1)
{
    y = (ystart + (sin((timer * 0.04375)) * 3))
    timer++
}
hspeed = (max(0, (abs(hspeed) - 0.1)) * sign(hspeed))
if (abs(hspeed) < 0.1)
    hspeed = 0
vspeed = (max(0, (abs(vspeed) - 0.1)) * sign(vspeed))
if (abs(vspeed) < 0.1)
    vspeed = 0
if (go == 0 && speed == 0)
{
    ystart = y
    go = 1
}
if (global.bg_level == "underwater" || (instance_exists(obj_lava_water) && (bbox_bottom - 8) > obj_lava_water.y && ((global.bg_level == "forest" && global.modo_noche == 0) || global.bg_level == "beach")))
    swimming = 1
else
    swimming = 0
if (swimming == 0)
{
    with (instance_create(x, y, obj_spiny))
        direct = other.direct
    instance_destroy()
}
if ((collision_rectangle(bbox_left, (bbox_bottom - 1), bbox_right, (bbox_bottom + 1), obj_solidtop, 0, 0) && (!collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, (bbox_bottom - 4), obj_solidtop, 0, 0))) || (collision_rectangle(bbox_left, (bbox_bottom - 1), bbox_right, (bbox_bottom + 1), obj_physicssolid, 0, 0) && (!collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, (bbox_bottom - 4), obj_physicssolid, 0, 0))))
{
    gravity = 0
    if (vspeed > 0)
    {
        vspeed = 0
        col_one_top = collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_onewaygate_top, 0, 0)
        if col_one_top
        {
            with (col_one_top)
            {
                rot = 1
                event_user(0)
            }
        }
    }
}

