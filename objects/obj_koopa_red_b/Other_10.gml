imdead = instance_create(x, y, obj_enemy_dead)
imdead.girar = 1
switch global.apariencia
{
    case 0:
        imdead.sprite_index = spr_SMB_shell_red_b
        break
    case 1:
        imdead.sprite_index = spr_SMB3_shell_red_b
        break
    case 2:
        imdead.sprite_index = spr_shell_red_b
        break
    case 3:
        imdead.sprite_index = spr_NSMBU_shell_red_b
        break
}

if (key == 1 && obj_levelmanager.editor == 0)
{
    with (instance_create((x - 8), (y - 8), obj_key_appear))
        vspeed = -4
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

