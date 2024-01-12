imdead = instance_create((x + 8), (y + 8), obj_enemy_dead)
imdead.girar = 1
imdead.direct = direct
imdead.image_index = global.apariencia
if (sprite_index == spr_galoomba_hold2)
    imdead.sprite_index = spr_galoomba2_deads
else
    imdead.sprite_index = spr_galoomba_deads
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

