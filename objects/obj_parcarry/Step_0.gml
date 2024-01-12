if held
{
    if ((!keyboard_check(global.lanzar_agarrar)) && ready == 1 && cloud == 0)
    {
        if instance_exists(obj_mario)
        {
            audio_play_sound(snd_SMB2_throw, 0, false)
            ystart = y
            with (obj_mario)
            {
                holding = 0
                event_user(7)
                isduckhold = 0
            }
            vspeed = 0.1
            gravity = 0.2
            if (global.bg_level == "underwater" || (global.modo_noche == 1 && global.bg_level == "sky") || (global.modo_noche == 1 && global.bg_level == "airship") || (instance_exists(obj_lava_water) && y > (obj_lava_water.y + 16) && global.bg_level == "forest" && global.modo_noche == 0))
                hspeed = ((1 + abs((obj_mario.hspeed - 0.3))) * sign(obj_mario.direct))
            else
                hspeed = ((3 + abs((obj_mario.hspeed - 0.3))) * sign(obj_mario.direct))
            held = 0
            keyboard_key_release(global.lanzar_agarrar)
            inmune = 1
            alarm[0] = 2
        }
    }
}
else
{
    if (hold == 0)
    {
        if (enemy == 1 && (obj == obj_banzaibill || obj == obj_bulletbill || obj == obj_bulletbull_red))
        {
            if (swimming == 1)
                image_angle -= (6 * sign(hspeed))
            else
                image_angle -= (13 * sign(hspeed))
        }
        else if (swimming == 1)
            image_angle -= (3 * sign(hspeed))
        else
            image_angle -= (6 * sign(hspeed))
    }
    if (enemy == 1 && inmune == 0)
    {
        if (obj == obj_bulletbill)
        {
            bill = 1
            if (swimming == 1)
            {
                gravity = 0.1
                if (vspeed > 0.4)
                    vspeed = 0.4
            }
            else
            {
                gravity = 0.2
                if (vspeed > 4)
                    vspeed = 4
            }
            if (y > (ystart + 24))
            {
                with (instance_create(x, (y - 8), obj_bulletbill))
                {
                    direct = other.direct
                    hspeed = direct
                }
                instance_destroy()
            }
        }
        else if (obj == obj_bulletbull_red)
        {
            bill = 1
            if (swimming == 1)
            {
                gravity = 0.1
                if (vspeed > 0.4)
                    vspeed = 0.4
            }
            else
            {
                gravity = 0.2
                if (vspeed > 4)
                    vspeed = 4
            }
            if (y > (ystart + 24))
            {
                mybullet = instance_create(x, (y - 8), obj_bulletbull_red)
                with (mybullet)
                {
                    direct = other.direct
                    hspeed = direct
                    if (direct < 0)
                        image_index = 1
                    else
                        image_index = 0
                }
                instance_destroy()
            }
        }
        else if (obj == obj_cannonball)
        {
            bill = 1
            if (swimming == 1)
            {
                gravity = 0.1
                if (vspeed > 0.4)
                    vspeed = 0.4
            }
            else
            {
                gravity = 0.2
                if (vspeed > 4)
                    vspeed = 4
            }
            if (y > (ystart + 24))
            {
                mybullet = instance_create(x, y, obj_cannonball)
                with (mybullet)
                    hspeed = other.direct
                instance_destroy()
            }
        }
        else if (obj == obj_cannonball_red)
        {
            bill = 1
            if (swimming == 1)
            {
                gravity = 0.1
                if (vspeed > 0.4)
                    vspeed = 0.4
            }
            else
            {
                gravity = 0.2
                if (vspeed > 4)
                    vspeed = 4
            }
            if (y > (ystart + 24))
            {
                mybullet = instance_create(x, y, obj_cannonball_red)
                with (mybullet)
                    hspeed = (2 * other.direct)
                instance_destroy()
            }
        }
        else if (obj == obj_banzaibill)
        {
            bill = 1
            if (swimming == 1)
            {
                gravity = 0.1
                if (vspeed > 0.4)
                    vspeed = 0.4
            }
            else
            {
                gravity = 0.2
                if (vspeed > 4)
                    vspeed = 4
            }
            if (y > (ystart + 74))
            {
                with (instance_create(x, y, obj_banzaibill))
                {
                    if (other.direct == 1)
                    {
                        direct = -1
                        rotacion = 180
                        direct_t = 3
                    }
                    else
                    {
                        direct = 1
                        rotacion = 0
                        direct_t = 1
                    }
                }
                instance_destroy()
            }
        }
        else
        {
            event_user(3)
            event_user(4)
            if (cont == 0 && gravity == 0)
                cont = 1
            if (cont > 0)
            {
                if (cont > 8)
                    event_user(5)
                else
                    cont += 0.6
            }
        }
    }
    else if (swimming == 1)
    {
        gravity = 0.1
        if (vspeed > 0.4)
            vspeed = 0.4
    }
    else
    {
        gravity = 0.2
        if (vspeed > 4)
            vspeed = 4
    }
}

