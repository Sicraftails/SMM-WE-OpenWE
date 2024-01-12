var anim;
if (global.apariencia == 3)
    anim = (obj_levelmanager.banim - 0.05)
else
    anim = obj_levelmanager.banim
draw_sprite_ext(sprite_index, anim, round(x), y, 1, 1, 0, c_white, image_alpha)

