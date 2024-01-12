imdead = instance_create(x, (y + 3), obj_enemy_dead)
imdead.girar = 1
imdead.direct = direct
switch global.apariencia
{
    case 0:
        imdead.sprite_index = spr_SMB_hammerbro_deads
        break
    case 1:
        imdead.sprite_index = spr_SMB3_hammerbro_deads
        break
    case 2:
        imdead.sprite_index = spr_hammerbro_deads
        break
    case 3:
        imdead.sprite_index = s_hammerbro
        break
}

if (global.apariencia == 3)
    imdead.image_index = 9
else
{
    switch object_index
    {
        case obj_firebro:
            imdead.image_index = 1
            break
        case obj_icebro:
            imdead.image_index = 2
            break
        case obj_boomerangbro:
            imdead.image_index = 3
            break
        default:
            imdead.image_index = 0
    }

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


