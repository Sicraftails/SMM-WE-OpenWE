/// @description Default enemy death script
imdead = instance_create(x, y, obj_enemy_dead)
imdead.sprite_index = sprite_index
imdead.image_index = image_index
imdead.direct = direct
if (other.hspeed == 0)
{
    if ((other.bbox_left + (other.bbox_right / 2)) < (bbox_left + (bbox_right / 2)))
        imdead.hspeed = 1
    else if ((other.bbox_left + (other.bbox_right / 2)) > (bbox_left + (bbox_right / 2)))
        imdead.hspeed = -1
}
else if (other.hspeed > 0)
    imdead.hspeed = 1
else if (other.hspeed < 0)
    imdead.hspeed = -1
instance_destroy()
