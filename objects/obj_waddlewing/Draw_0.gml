draw_sprite_ext(sprite_index, image_index, round(x), y, direct, image_yscale, image_angle, c_white, 1)
if (wings == 1)
{
    switch global.apariencia
    {
        case 0:
            draw_sprite_ext(spr_SMB_wings_16x16, anim, round(x), y, direct, 1, image_angle, c_white, 1)
            break
        case 1:
            draw_sprite_ext(spr_SMB3_wings2, anim, round(x), y, direct, 1, image_angle, c_white, 1)
            break
        case 2:
            draw_sprite_ext(spr_wings2, anim, round(x), y, direct, 1, image_angle, c_white, 1)
            break
        case 3:
            draw_sprite_ext(spr_NSMBU_wings_enemigos, anim, (x - (9 * direct)), (y - 25), direct, 1, 0, c_white, 1)
            break
    }

}
/*
draw_text(x,y,string(gravity))
draw_text(x+5,y,string(hspeed))
draw_set_color(c_black)
draw_text(x+5,y,string(walljump))
/**/