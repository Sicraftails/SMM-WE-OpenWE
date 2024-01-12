var dark;
event_inherited()
if (global.bg_level == "castle" || global.bg_level == "ghost" || global.bg_level == "underground" || global.modo_noche == 1)
    dark = 1
else
    dark = 0
switch global.apariencia
{
    case 0:
        sprite = spr_SMB_pipes
        part = spr_SMB_pipes_part
        break
    case 1:
        if (dark == 1)
        {
            sprite = spr_SMB3_pipes_night
            part = spr_SMB3_pipes_part_night
        }
        else
        {
            sprite = spr_SMB3_pipes
            part = spr_SMB3_pipes_part
        }
        break
    case 2:
        sprite = spr_pipes
        part = spr_pipes_part
        break
    case 3:
        sprite = spr_NSMBU_pipes
        part = spr_NSMBU_pipes_part
        break
}

grid_selected = spr_grid_selected_32x32
color = global.tuberia
right = 0
left = 0
R = 0
rotacion = 0
poder_girar = 0
size = 0
crecer = 0
draw_p = 0
plant = 0
exception = 1
alarm[2] = 2
warp = 0
id_pipe = -4
t_x_pos = (x + 32)
t_y_pos = y
t_size = 0
t_rotacion = 0
t_direct_t = 0
t_s_scalex = 1
t_color = 0
t_xscale = 1
t_yscale = 1
alarm[1] = 1

