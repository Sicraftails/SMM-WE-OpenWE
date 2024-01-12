imdead = instance_create(x, y, obj_enemy_dead)
imdead.sprite_index = sprite_index
imdead.image_speed = 0
imdead.image_index = image_index
imdead.image_angle = direction
imdead.hspeed = 0.6
imdead.vspeed = 0.1
imdead.alarm[0] = -1
instance_destroy()

