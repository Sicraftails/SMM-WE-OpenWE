num_tile_ancho = 16
num_tile_alto = 16
num_ancho = ceil((room_width / num_tile_ancho))
num_alto = ceil((room_height / num_tile_alto))
for (i = 0; i < num_ancho; i++)
    draw_sprite_ext(sprite_index, image_index, (i * num_tile_ancho), (room_height - 16), 1, 1, 0, c_white, image_alpha)

