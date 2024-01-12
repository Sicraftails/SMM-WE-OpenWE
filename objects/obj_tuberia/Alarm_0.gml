with (instance_create(w_x_pos, w_y_pos, obj_tuberia))
{
    warp = 2
    size = other.w_size
    direct = other.w_s_scalex
    direct_t = other.w_direct
    rotacion = other.w_rotacion
    index = other.w_color
    image_xscale = other.w_xscale
    image_yscale = other.w_yscale
    w_posx = other.m_posx
    w_posy = other.m_posy
    w_direct = other.direct_t
    switch direct_t
    {
        case 0:
            m_posx = (x + 16)
            m_posy = y
            break
        case 1:
            m_posx = (x + (16 + (size * 16)))
            m_posy = y
            break
        case 2:
            m_posx = (x + 16)
            m_posy = (y + (16 + (size * 16)))
            break
        case 3:
            m_posx = (x + 16)
            m_posy = y
            break
    }

}

