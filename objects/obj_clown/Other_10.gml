imdead = instance_create(x, y, obj_enemy_dead)
imdead.girar = 1
imdead.sprite_index = s_clown
imdead.image_speed = 0
imdead.image_index = 0
imdead.direct = direct
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
instance_destroy()
