var anim,sprited;
if (image_speed == 0)
    anim = image_index
else
    anim = obj_levelmanager.banim

draw_sprite_custom_origin(sprite_index, anim, round(x), y, 8, 16, s_scalex, s_scaley, 0, c_white, 1);
/*draw_sprite_stretched(sprite_index,anim,round(x)-(ystart-y)/4,y-(ystart-y)/4,16+(ystart-y)/2,16+(ystart-y)/2)*/