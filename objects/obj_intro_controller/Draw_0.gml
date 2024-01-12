if (date == 1)
{
    draw_set_font(global.font_google)
    draw_set_color(c_white)
    draw_set_alpha(alpha)
    draw_sprite_ext(spr_calendar, 0, 16, 16, 1, 1, 0, c_white, alpha)
    draw_text(34, 13, string_hash_to_newline((day)))
    draw_set_alpha(1)
}
draw_sprite(spr_letters_super, 0, (x + 96), (y + 36))
draw_sprite(spr_letters, 0, (x + 96), (y + 57))
draw_sprite(spr_letters, 1, (x + 119), (y + 57))
draw_sprite(spr_letters, 2, (x + 138), (y + 57))
draw_sprite(spr_letters, 3, (x + 157), (y + 57))
draw_sprite(spr_letters, 4, (x + 165), (y + 57))
draw_sprite(spr_letters, 0, (x + 195), (y + 57))
draw_sprite(spr_letters, 1, (x + 218), (y + 57))
draw_sprite(spr_letters, 5, (x + 237), (y + 57))
draw_sprite(spr_letters, 6, (x + 256), (y + 57))
draw_sprite(spr_letters, 2, (x + 273), (y + 57))
draw_sprite(spr_we, 0, (x + 214), (y + 90))


