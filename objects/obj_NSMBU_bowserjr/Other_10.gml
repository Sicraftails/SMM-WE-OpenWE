imdead = instance_create(x, (y + 8), obj_enemy_dead)
imdead.direct = direct
imdead.dead_boss = 1
imdead.image_speed = 0.5
imdead.sprite_index = spr_NSMBU_bowserjr_dead
if (key == 1)
{
    with (instance_create((x - 8), (y - 8), obj_key_appear))
        vspeed = -4
    key = 0
}
if (wings == 1)
{
    with (instance_create((x - (9 * direct)), (y + 9), obj_wings_dead))
        direct = 1
}
if (dead_h == 0)
{
    if (direct == 1)
        imdead.hspeed = -1
    else
        imdead.hspeed = 1
}
else
{
    imdead.hspeed = 0
    with (instance_create(imdead.x, (imdead.y - 5), obj_smoke))
        sprite_index = spr_spinthump
}
instance_destroy()
