if instance_exists(obj_mario)
{
    if (collision_rectangle(bbox_left, (bbox_top - 5), bbox_right, (bbox_top + 4), obj_mario, 0, 0) && obj_mario.bbox_bottom < (yprevious + 5) && obj_mario.state < 2 && caer == 0)
    {
        rot = 1
        alarm[0] = 60
        caer = 1
    }
    if (instance_exists(obj_mario) && obj_mario.x > (x - 48) && obj_mario.x < (x + 48) && y < obj_mario.y && y > (obj_mario.y - 176) && caer == 0)
        rot = 1
    if (instance_exists(obj_mario) && (obj_mario.x < (x - 48) || obj_mario.x > (x + 48) || y > obj_mario.y || y < (obj_mario.y - 176)) && caer == 0)
    {
        rot = 0
        rotacion = 0
        up = 0
    }
    if (instance_exists(obj_mario) && obj_mario.x > (x - 32) && obj_mario.x < (x + 32) && y < obj_mario.y && y > (obj_mario.y - 176) && caer == 0)
    {
        rot = 1
        alarm[0] = 60
        caer = 1
    }
}
if (global.bg_level == "underwater" || (global.bg_level == "sky" && global.modo_noche == 1) || (global.bg_level == "airship" && global.modo_noche == 1) || (instance_exists(obj_lava_water) && y > (obj_lava_water.y + 16) && global.bg_level == "forest" && global.modo_noche == 0))
    v_speed = 1
else
    v_speed = 2
if (vspeed > v_speed)
    vspeed = v_speed
if (rot == 1)
{
    if (up == 0)
    {
        if (rotacion > -5)
            rotacion -= 1
        else
            up = 1
    }
    else if (up == 1)
    {
        if (rotacion < 5)
            rotacion += 1
        else
            up = 0
    }
}
if (crecer == 1)
{
    if (image_xscale < 1)
    {
        image_xscale += 0.05
        image_yscale += 0.05
    }
    else
    {
        image_xscale = 1
        image_yscale = 1
        crecer = 0
    }
}
if (bbox_top > (room_height + 64) && obj_levelmanager.editor == 0 && delito == 0)
{
    delito = 1
    hspeed = 0
    vspeed = 0
    gravity = 0
    alarm[1] = 180
}

