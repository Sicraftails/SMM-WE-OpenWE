event_inherited()
image_speed = 0
image_index = global.apariencia
sprite = -4
index = 0
if (global.apariencia == 3)
    sprite_break = spr_frozenblock_break
else
    sprite_break = spr_icicle_break
pos_y = 2
direct = 1
enemy = -4
shake = 0
vel = 0
enable_gravity = 1
rotacion = 0
breaker = 0
mytop = instance_create(x, y, obj_solidphy)
mytop.image_xscale = (sprite_width / 16)
alarm[7] = 2
