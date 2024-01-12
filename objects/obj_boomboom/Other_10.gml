if (key == 1)
{
    with (instance_create((x - 8), (y - 8), obj_key_appear))
        vspeed = -4
}
imdead = instance_create(x, y, obj_enemy_dead)
imdead.direct = direct
imdead.sprite_index = s_boomboom_dead
if (global.apariencia == 3)
    imdead.image_speed = 0.5
else
    imdead.image_speed = 0.15
if (dead_h == 0)
{
    if (other.hspeed == 0 && direct == 1)
        imdead.hspeed = 1
    else if (other.hspeed == 0 && direct == -1)
        imdead.hspeed = -1
}
instance_destroy()

