imdead = instance_create(x, y, obj_enemy_dead)
imdead.direct = direct
imdead.direct_y = -1
imdead.sprite_index = sprite_index
if (dead_h == 0)
{
    if (other.hspeed == 0 && direct == 1)
        imdead.hspeed = 1
    else if (other.hspeed == 0 && direct == -1)
        imdead.hspeed = -1
}
instance_destroy()

