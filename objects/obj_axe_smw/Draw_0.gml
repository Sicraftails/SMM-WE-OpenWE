if (global.condiciones == 0 || (global.condiciones == 1 && global.condiciones_clear == 1))
    draw_self()
else
    draw_sprite(spr_axe_disabled, global.apariencia, x, y)
draw_sprite(spr_axe_support, global.apariencia, (x - 16), y)
if (cadena == 0)
    draw_sprite(spr_cadena, global.apariencia, (x - 48), y)

