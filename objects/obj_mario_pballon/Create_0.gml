if instance_exists(obj_mario)
    obj_mario.visible = false
switch global.jugador
{
    case 0:
        sprite_index = spr_mario_pballon
        break
    case 1:
        sprite_index = spr_luigi_pballon
        break
    case 2:
        sprite_index = spr_toad_pballon
        break
    case 3:
        sprite_index = spr_toadette_pballon
        break
}

image_speed = 0
image_index = 0
friction = 0.01
direction = 90
image_angle = 90
angle = 90
inf = 0
ready = 0
time = 10
moving = 0
mov = 0
max_speed = 1
xx = 0
xDiff_h = 0
yDiff_h = 0
fallow = -4

