imdead = instance_create(x, (y + 8), obj_enemy_dead)
imdead.girar = 1
switch sprite_index
{
    case spr_SMB_shell:
        imdead.sprite_index = spr_SMB_shell_deads
        break
    case spr_SMB_shell_red:
        imdead.sprite_index = spr_SMB_shell_red_deads
        break
    case spr_SMB_shell_b:
        imdead.sprite_index = sprite_index
        break
    case spr_SMB_shell_red_b:
        imdead.sprite_index = sprite_index
        break
    case spr_SMB_shell_buzzy_b:
        imdead.sprite_index = sprite_index
        break
    case spr_SMB_shell_buzzy_night_b:
        imdead.sprite_index = sprite_index
        break
    case spr_SMB_shell_buzzy:
        imdead.sprite_index = spr_SMB_shell_buzzy_deads
        imdead.image_index = 0
        imdead.image_speed = 0
        break
    case spr_SMB_shell_buzzy_night:
        imdead.sprite_index = spr_SMB_shell_buzzy_deads
        imdead.image_index = 1
        imdead.image_speed = 0
        break
    case spr_SMB_spiny_dead:
        imdead.sprite_index = spr_SMB_shell_spiny_deads
        break
    case spr_SMB_shell_empty:
        imdead.sprite_index = spr_SMB_shell_buzzy_empty_deads
        break
    case spr_SMB_shell_empty_night:
        imdead.sprite_index = spr_SMB_shell_buzzy_empty_night_deads
        break
    case spr_SMB_shell_empty_spiny:
        imdead.sprite_index = spr_SMB_shell_spiny_empty_deads
        break
    case spr_SMB3_shell:
        imdead.sprite_index = spr_SMB3_koopa_deads
        break
    case spr_SMB3_shell_red:
        imdead.sprite_index = spr_SMB3_koopa_red_deads
        break
    case spr_SMB3_shell_b:
        imdead.sprite_index = sprite_index
        break
    case spr_SMB3_shell_red_b:
        imdead.sprite_index = sprite_index
        break
    case spr_SMB3_spiny_dead:
        imdead.sprite_index = spr_SMB3_shell_spiny_deads
        break
    case spr_SMB3_shell_buzzy_b:
        imdead.sprite_index = sprite_index
        break
    case spr_SMB3_shell_buzzy_night_b:
        imdead.sprite_index = sprite_index
        break
    case spr_SMB3_shell_buzzy:
        imdead.sprite_index = spr_SMB3_shell_buzzy_deads
        imdead.image_index = 0
        imdead.image_speed = 0
        break
    case spr_SMB3_shell_buzzy_night:
        imdead.sprite_index = spr_SMB3_shell_buzzy_deads
        imdead.image_index = 1
        imdead.image_speed = 0
        break
    case spr_SMB3_shell_empty:
        imdead.sprite_index = spr_SMB3_shell_buzzy_empty_deads
        break
    case spr_SMB3_shell_empty_night:
        imdead.sprite_index = spr_SMB3_shell_buzzy_empty_night_deads
        break
    case spr_SMB3_shell_spiny_empty:
        imdead.sprite_index = spr_SMB3_shell_spiny_empty_deads
        break
    case spr_shell:
        imdead.sprite_index = spr_shell_deads
        break
    case spr_shell_red:
        imdead.sprite_index = spr_shell_red_deads
        break
    case spr_shell_b:
        imdead.sprite_index = sprite_index
        break
    case spr_shell_red_b:
        imdead.sprite_index = sprite_index
        break
    case spr_shell_buzzy:
        imdead.sprite_index = spr_shell_buzzy_deads
        break
    case spr_shell_buzzy_b:
        imdead.sprite_index = sprite_index
        break
    case spr_spiny_dead:
        imdead.sprite_index = spr_shell_spiny_deads
        break
    case spr_shell_buzzy_empty:
        imdead.sprite_index = spr_buzzy_empty_deads
        break
    case spr_shell_spiny_empty:
        imdead.sprite_index = spr_spiny_empty_deads
        break
    case spr_NSMBU_shell:
        imdead.sprite_index = spr_NSMBU_shell_deads
        break
    case spr_NSMBU_shell_red:
        imdead.sprite_index = spr_NSMBU_shell_red_deads
        break
    case spr_NSMBU_shell_b:
        imdead.sprite_index = sprite_index
        break
    case spr_NSMBU_shell_red_b:
        imdead.sprite_index = sprite_index
        break
    case spr_NSMBU_spiny_dead:
        imdead.sprite_index = spr_NSMBU_shell_spiny_deads
        break
    case spr_NSMBU_shell_buzzy:
        imdead.sprite_index = spr_NSMBU_shell_buzzy_deads
        break
    case spr_NSMBU_shell_buzzy_b:
        imdead.sprite_index = sprite_index
        break
    case spr_NSMBU_shell_buzzy_empty:
        imdead.sprite_index = spr_NSMBU_shell_buzzy_empty_deads
        break
    case spr_NSMBU_shell_spiny_empty:
        imdead.sprite_index = spr_NSMBU_shell_spiny_empty_deads
        break
    default:
        imdead.sprite_index = spr_shell_deads
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

