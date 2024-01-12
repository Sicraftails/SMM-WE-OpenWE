imdead = instance_create(x, y, obj_enemy_dead)
imdead.direct = 1
imdead.sprite_index = sprite_index
imdead.image_speed = 0
imdead.image_index = image_index
imdead.image_angle = rotacion
imdead.direct_y = direct
imdead.hspeed = 0.6
imdead.vspeed = 0
imdead.alarm[0] = -1
instance_destroy()

