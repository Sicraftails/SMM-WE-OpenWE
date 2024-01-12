imdead = instance_create(x, (y + 16), obj_enemy_dead)
imdead.direct = 1
imdead.direct_y = -1
switch global.apariencia
{
    case 3:
        imdead.sprite_index = spr_NSMBU_blooper
        break
    default:
        imdead.sprite_index = sprite_index
}

if (global.apariencia == 3)
    imdead.image_speed = 0.2
else
    imdead.image_speed = 0.05
hspeed = 0
instance_destroy()

