if held
{
    if instance_exists(obj_mario)
    {
        if (ready == 0)
        {
            if (cloud == 0)
            {
                if (((global.powerup == 0) && (y <= ((obj_mario.y - altura) + 20))) || ((global.powerup != 0) && (y <= ((obj_mario.y - altura) + 16))))
                {
                    y = obj_mario.y
                    ready = 1
                }
                else
                    y -= 2
                x = obj_mario.x
                direct = obj_mario.direct
            }
            else
            {
                if (y <= (ystart - 16))
                    y = (ystart - 16)
                else
                    y -= 2
                x = xstart
            }
        }
        else
        {
            if ((global.bg_level == "underwater") || (((global.bg_level == "castle") && (global.modo_noche == 1)) || (instance_exists(obj_lava_water) && ((y >= (obj_lava_water.y + 16)) && ((global.bg_level == "forest") && (global.modo_noche == 0))))))
            {
                obj_mario.vspeed = -1
                if (keyboard_check(global.abajo) && (!collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top, obj_bumper, 1, 0)))
                {
                    obj_mario.vspeed = 0.5
                    if (vspeed > 0.5)
                        vspeed = 0.5
                }
            }
            obj_mario.holding = 1
            visible = true
            direct = obj_mario.direct
            x = obj_mario.x
            if (global.jugador == 1)
            {
                if (obj_mario.isduck == 1)
                {
                    if (global.powerup == 0)
                        y = ((obj_mario.y - altura) + 18)
                    else
                        y = ((obj_mario.y - altura) + 14)
                }
                else if (global.powerup == 0)
                    y = ((obj_mario.y - altura) + 14)
                else
                    y = ((obj_mario.y - altura) + 6)
            }
            else if (obj_mario.isduck == 1)
            {
                if (global.powerup == 0)
                    y = ((obj_mario.y - altura) + 20)
                else
                    y = ((obj_mario.y - altura) + 16)
            }
            else if (global.powerup == 0)
                y = ((obj_mario.y - altura) + 16)
            else
                y = ((obj_mario.y - altura) + 8)
        }
    }
}

