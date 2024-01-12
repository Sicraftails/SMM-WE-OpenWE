with (instance_create((x - (8 * sign(hspeed))), y, obj_smoke))
    sprite_index = spr_NSMBU_fireparticle
if (hspeed == 1)
    alarm[0] = 10
else
    alarm[0] = 20

