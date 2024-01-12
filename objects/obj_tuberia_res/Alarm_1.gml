var plant;
if (warp == 1)
    event_user(6)
else if (warp == 2 && (room == rm_guardabot_play || room == rm_title))
{
    with (instance_create(x, y, obj_tuberia))
    {
        sprite = other.sprite
        part = other.part
        size = other.size
        direct = other.s_scalex
        direct_t = other.direct_t
        rotacion = other.rotacion
        index = other.color
        image_xscale = other.image_xscale
        image_yscale = other.image_yscale
        warp = other.warp
        w_direct = other.t_direct_t
        switch other.t_direct_t
        {
            case 0:
                w_posx = (other.t_x_pos + 16)
                w_posy = other.t_y_pos
                break
            case 1:
                w_posx = (other.t_x_pos + (16 + (other.t_size * 16)))
                w_posy = other.t_y_pos
                break
            case 2:
                w_posx = (other.t_x_pos + 16)
                w_posy = (other.t_y_pos + (16 + (other.t_size * 16)))
                break
            case 3:
                w_posx = (other.t_x_pos + 16)
                w_posy = other.t_y_pos
                break
        }

        switch other.direct_t
        {
            case 0:
                m_posx = (x + 16)
                m_posy = y
                break
            case 1:
                m_posx = (x + (16 + (other.t_size * 16)))
                m_posy = y
                break
            case 2:
                m_posx = (x + 16)
                m_posy = (y + (16 + (other.t_size * 16)))
                break
            case 3:
                m_posx = (x + 16)
                m_posy = y
                break
        }

        if (other.plant == 1)
        {
            switch other.direct_t
            {
                case 0:
                    plant = instance_create((x + 16), (y + 16), obj_piranhaplant)
                    break
                case 1:
                    plant = instance_create((x + (16 + (other.size * 16))), (y + 16), obj_piranhaplant)
                    break
                case 2:
                    plant = instance_create((x + 16), (y + (16 + (other.size * 16))), obj_piranhaplant)
                    break
                case 3:
                    plant = instance_create((x + 16), (y + 16), obj_piranhaplant)
                    break
            }

            plant.direct_t = other.direct_t
            plant.rotacion = other.rotacion
        }
    }
    instance_destroy()
}

