imdead = instance_create(x, y, obj_enemy_dead)
imdead.direct = direct
if (sprite_index == spr_yoshi_wait)
    imdead.sprite_index = spr_yoshi_runaway
else
    imdead.sprite_index = spr_yoshi_runaway_red
imdead.image_speed = 0.15
if (other.hspeed == 0 && direct == 1)
    imdead.hspeed = 1
else if (other.hspeed == 0 && direct == -1)
    imdead.hspeed = -1
instance_destroy()
