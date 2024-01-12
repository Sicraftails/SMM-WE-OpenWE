var anim;
if (image_speed == 0)
    anim = image_index
else
    anim = obj_levelmanager.banim
draw_sprite_custom_origin(sprite_index, anim, x, y, 8, 16, s_scalex, s_scaley, 0, c_white, 1);
