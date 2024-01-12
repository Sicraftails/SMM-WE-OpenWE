imdead = instance_create(x, y, obj_enemy_dead)
imdead.girar = 1
if (global.bg_level == "castle" || global.bg_level == "ghost" || global.bg_level == "underground" || global.modo_noche == 1)
    var dark = 1
else
    dark = 0
switch global.apariencia
{
    case 0:
        if (dark == 1)
            imdead.sprite_index = spr_SMB_shell_buzzy_night_b
        else
            imdead.sprite_index = spr_SMB_shell_buzzy_b
        break
    case 1:
        if (dark == 1)
            imdead.sprite_index = spr_SMB3_shell_buzzy_night_b
        else
            imdead.sprite_index = spr_SMB3_shell_buzzy_b
        break
    case 2:
        imdead.sprite_index = spr_shell_buzzy_b
        break
    case 3:
        imdead.sprite_index = spr_NSMBU_shell_buzzy_b
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
