if (inmario == 1)
{
    if instance_exists(obj_mario)
    {
        switch global.jugador
        {
            case 0:
                v_duck_small = (obj_mario.y + 12)
                break
            case 1:
                v_duck_small = (obj_mario.y + 12)
                break
            case 2:
                v_duck_small = (obj_mario.y + 12)
                break
            case 3:
                v_duck_small = (obj_mario.y + 12)
                break
        }

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

