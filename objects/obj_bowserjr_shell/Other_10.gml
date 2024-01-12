imdead = instance_create(x, (y + 8), obj_enemy_dead)
imdead.direct = direct
imdead.dead_boss = 1
if (global.apariencia != 3)
{
    imdead.girar = 1
    imdead.image_speed = 0.15
}
else
    imdead.image_speed = 0.5
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
switch global.apariencia
{
    case 0:
        imdead.sprite_index = spr_SMB_bowserjr_dead
        break
    case 1:
        imdead.sprite_index = spr_SMB3_bowserjr_dead
        break
    case 2:
        imdead.sprite_index = spr_bowserjr_dead
        break
    case 3:
        imdead.sprite_index = spr_NSMBU_bowserjr_dead
        break
}

if (dead_h == 0)
{
    if (other.hspeed == 0)
    {
        if ((other.bbox_left + (bbox_right / 2)) < (bbox_left + (bbox_right / 2)))
            imdead.hspeed = 1
        else if ((other.bbox_left + (bbox_right / 2)) > (bbox_left + (bbox_right / 2)))
            imdead.hspeed = -1
    }
    else if (other.hspeed > 0)
        imdead.hspeed = 1
    else if (other.hspeed < 0)
        imdead.hspeed = -1
}
else
{
    imdead.hspeed = 0
    with (instance_create(imdead.x, (imdead.y - 5), obj_smoke))
        sprite_index = spr_spinthump
}
instance_destroy()

