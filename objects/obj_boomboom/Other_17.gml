imdead = instance_create(x, y, obj_enemy_dead)
imdead.direct = direct
imdead.sprite_index = sprite_index
imdead.image_speed = 0.15
if (dead_h == 0)
{
    if (other.hspeed == 0 && direct == 1)
        imdead.hspeed = 1
    else if (other.hspeed == 0 && direct == -1)
        imdead.hspeed = -1
}
instance_destroy()

