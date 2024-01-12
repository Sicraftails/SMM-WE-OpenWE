/// @description Dibujar efecto

//Set blend mode
gpu_set_blendmode(bm_add);

//Dibujar el sprite
draw_sprite_ext(sprite_index, 0, x, y, scale, scale, 0, image_blend, alpha);

gpu_set_blendmode(bm_normal);