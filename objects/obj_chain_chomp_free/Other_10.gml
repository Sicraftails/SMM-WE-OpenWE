imdead = instance_create(x, y, obj_enemy_dead)
imdead.girar = 1
imdead.sprite_index = sprite_index
imdead.image_speed = 0
imdead.image_index = image_index
imdead.direct = direct
imdead.gravity = 0.16
for (var i = 1; i < 5; i++)
{
    imdead1 = instance_create(oldx[(i * closeness)], oldy[(i * closeness)], obj_enemy_dead)
    imdead1.girar = 1
    imdead1.sprite_index = s_chain
    imdead1.image_speed = 0
    imdead1.image_index = dark
    imdead1.direct = direct
    imdead1.gravity = 0.16
    imdead.hspeed = choose(1, -1)
    imdead1.hspeed = -1
}
instance_destroy()
