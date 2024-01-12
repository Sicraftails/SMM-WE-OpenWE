if (wings == 1 && paracaidas == 0)
{
    hspeed = (0.5 * direct)
    vspeed = -0.5
}
else if (paracaidas == 1)
    hspeed = -0.6
else if (paracaidas == 0)
{
    if (vspeed < 0 || collision_rectangle(bbox_left, (bbox_bottom - 1), bbox_right, (bbox_bottom + 1), obj_solidtop, 0, 0) || collision_rectangle(bbox_left, (bbox_bottom - 1), bbox_right, (bbox_bottom + 1), obj_physicssolid, 0, 0))
    {
        if (global.modo_noche == 1)
        {
            if ((!instance_exists(obj_mario)) || obj_mario.x < x)
                hspeed = (1 - (0.5 * swimming))
            else
                hspeed = (-((1 - (0.5 * swimming))))
        }
        else
            hspeed = (1 - (0.5 * swimming))
    }
    else
        alarm[10] = 2
}
