imdead = instance_create(x, y, obj_enemy_dead)
imdead.girar = 1
imdead.direct = direct
switch global.apariencia
{
    case 0:
        imdead.sprite_index = spr_SMB_sledgebro
        break
    case 1:
        imdead.sprite_index = spr_SMB3_sledgebro
        break
    case 2:
        imdead.sprite_index = spr_sledgebro
        break
    case 3:
        imdead.sprite_index = spr_NSMBU_sledgebro
        imdead.image_index = 7
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

