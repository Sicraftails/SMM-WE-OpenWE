switch global.apariencia
{
    case 0:
        imdead = instance_create((x + 8), (y + 4), obj_enemy_dead)
        imdead.sprite_index = spr_SMB_pplant_deads
        break
    case 1:
        imdead = instance_create((x + 8), (y + 4), obj_enemy_dead)
        imdead.sprite_index = spr_SMB3_pplant_deads
        break
    case 2:
        imdead = instance_create((x + 8), y, obj_enemy_dead)
        imdead.sprite_index = spr_jumppiranha_deads
        break
    case 3:
        imdead = instance_create((x + 8), y, obj_enemy_dead)
        imdead.sprite_index = spr_NSMBU_pplant_deads
        break
}

imdead.girar = 1
imdead.image_xscale = direct
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

