instance_activate_object(id_pipe)
if instance_exists(id_pipe)
{
    id_pipe.t_x_pos = x
    id_pipe.t_y_pos = y
    id_pipe.t_size = size
    id_pipe.t_rotacion = rotacion
    id_pipe.t_direct_t = direct_t
    id_pipe.t_s_scalex = s_scalex
    id_pipe.t_color = color
    id_pipe.t_xscale = image_xscale
    id_pipe.t_yscale = image_yscale
    t_x_pos = id_pipe.x
    t_y_pos = id_pipe.y
    t_direct_t = id_pipe.direct_t
    t_size = id_pipe.size
    t_rotacion = id_pipe.rotacion
    t_s_scalex = id_pipe.s_scalex
    t_color = id_pipe.color
    t_xscale = id_pipe.image_xscale
    t_yscale = id_pipe.image_yscale
}

