imdead = instance_create(x, y, obj_enemy_dead)
imdead.girar = 1
imdead.direct = direct
imdead.sprite_index = sprite_index
imdead.image_index = image_index
if (dead_h == 0)
    imdead.hspeed = random_range(-1, 1)
else
{
    imdead.hspeed = 0
    with (instance_create(imdead.x, (imdead.y - 5), obj_smoke))
        sprite_index = spr_spinthump
}
instance_destroy()

