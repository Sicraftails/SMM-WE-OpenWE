imdead = instance_create(x, (y + 8), obj_enemy_dead)
imdead.girar = 1
if (global.bg_level == "castle" || global.bg_level == "ghost" || global.bg_level == "underground" || global.modo_noche == 1)
    imdead.image_index = 1
else
    imdead.image_index = 0
switch global.apariencia
{
    case 0:
        imdead.sprite_index = spr_SMB_shell_buzzy_deads
        imdead.image_speed = 0
        break
    case 1:
        imdead.sprite_index = spr_SMB3_shell_buzzy_deads
        imdead.image_speed = 0
        break
    case 2:
        imdead.sprite_index = spr_shell_buzzy_deads
        break
    case 3:
        imdead.sprite_index = spr_NSMBU_shell_buzzy_deads
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
