imdead = instance_create(x, y, obj_enemy_dead)
imdead.direct = (-direct)
imdead.sprite_index = spr_NSMBU_boomboom_dead2
imdead.vspeed = (-(3.2 - (1.5 * swimming)))
imdead.dead_boss = 1
imdead.image_speed = 0.5
if (dead_h == 0)
{
    if (other.hspeed == 0 && direct == 1)
        imdead.hspeed = -1
    else if (other.hspeed == 0 && direct == -1)
        imdead.hspeed = 1
}
instance_destroy()

