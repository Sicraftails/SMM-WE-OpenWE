if (held == 1)
{
    with (obj_mario)
    {
        holding = 0
        isduckhold = 0
    }
}
if ((global.bg_level == "snow") && (snowball == 1))
{
    with (instance_create(x, y, obj_smoke))
    {
        sprite_index = spr_SMB2_snow_ball_effect
        image_speed = 0.25
    }
}
else
{
    imdead = instance_create(x, y, obj_enemy_dead)
    imdead.sprite_index = sprite_index
    imdead.image_index = image_index
    imdead.girar = 1
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
}
instance_destroy()

