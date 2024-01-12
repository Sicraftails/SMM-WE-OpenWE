if (inmario == 1)
{
    if instance_exists(obj_mario)
    {
        v_duck_small = (obj_mario.y + 12)
        if (keyboard_check(global.abajo) && (!keyboard_check(global.arriba)) && global.apariencia == 2)
        {
            if (obj_mario.holding == 2)
            {
                obj_mario.sprite_index = scr_marioduckhold()
                if instance_exists(obj_helmet)
                {
                    if (global.powerup == 0)
                        obj_helmet.y = (v_duck_small - 2)
                    else
                        obj_helmet.y = (v_duck_small - 5)
                }
            }
            else
            {
                obj_mario.sprite_index = scr_marioduck()
                if instance_exists(obj_helmet)
                {
                    if (global.powerup == 0)
                        obj_helmet.y = v_duck_small
                    else
                        obj_helmet.y = (v_duck_small - 1)
                }
            }
        }
    }
}
if (rot == 1)
{
    if (up == 0)
    {
        if (rotacion > (rot_angle - 16))
            rotacion -= 2
        else
            up = 1
    }
    if (up == 1)
    {
        if (rotacion < (rot_angle + 16))
            rotacion += 2
        else
            up = 2
    }
    else if (up == 2)
    {
        if (rotacion > rot_angle)
            rotacion -= 2
        else
        {
            up = 0
            rot = 0
        }
    }
}
else
    rotacion = rot_angle
event_inherited()
