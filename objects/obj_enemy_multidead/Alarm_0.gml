imdead = instance_create(x, y, obj_enemy_dead)
imdead.sprite_index = sprite_index
imdead.direct = direct
imdead.vspeed = spd
count--
if (count > 0)
    alarm[0] = 3
else
    instance_destroy()

