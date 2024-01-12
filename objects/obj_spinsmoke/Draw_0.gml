draw_sprite(sprite_index, -1, round(x), round(y))
if (starstop == 0)
{
    draw_sprite(spr_star_explosion, 0, ((round(x) + starx) + 8), ((round(y) + stary) + 8))
    draw_sprite(spr_star_explosion, 0, ((round(x) + starx) + 8), ((round(y) - stary) + 8))
    draw_sprite(spr_star_explosion, 0, ((round(x) - starx) + 8), ((round(y) + stary) + 8))
    draw_sprite(spr_star_explosion, 0, ((round(x) - starx) + 8), ((round(y) - stary) + 8))
}

