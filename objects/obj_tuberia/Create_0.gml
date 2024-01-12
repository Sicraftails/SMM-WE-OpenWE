var dark;
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

image_speed = 0
image_index = 0
color = 0
rotacion = 0
direct = 1
size = 0
direct_t = 0
index = 0
holding = 0
helmet = 0
m_posx = x
m_posy = y
warp = 0
w_x_pos = (x + 32)
w_y_pos = y
w_direct = 0
w_size = 0
w_rotacion = 0
w_s_scalex = 1
w_color = 0
w_xscale = 1
w_yscale = 1
w_posx = x
w_posy = y

