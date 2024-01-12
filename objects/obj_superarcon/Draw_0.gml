draw_sprite_ext(spr_NSMBU_superacorn2, 0, (x + 8), (y + 8), 1, 1, rotacion, c_white, 1)
if (wings == 1)
    draw_sprite(sprite_wings, wings_anim, x, y)
if (paracaidas == 1)
    draw_sprite_ext(spr_paracaidas, global.apariencia, (x + 8), y, 1, 1, image_angle, c_white, 1)

