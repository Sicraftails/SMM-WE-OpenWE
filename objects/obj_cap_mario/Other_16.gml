if (obj_mario.modo_vuelo == 1)
    exit
if (instance_exists(obj_mario_transform2) && ready_cap == 1)
{
    image_speed = 0
    exit
}
else if (obj_mario.state == 3 || obj_mario.turning == 1)
{
    sprite_index = spr_cap_climb
    if (obj_mario.speed == 0 || obj_mario.turning == 1)
        image_speed = 0
    else
        image_speed = 0.15
}
else if (obj_mario.stompstyle == 1 || obj_mario.caped == 1)
{
    if (obj_mario.vspeed > 0)
        sprite_index = spr_cap_spinjump_fall
    else
        sprite_index = spr_cap_spinjump
    image_speed = 0
    image_index = obj_mario.image_index
}
else if (obj_mario.sprite_index == scr_mariorunjump())
{
    sprite_index = spr_cap_run
    image_speed = abs((obj_mario.hspeed / 10))
}
else if ((obj_mario.sprite_index == scr_marioswim() || obj_mario.sprite_index == scr_marioswimhold()) && obj_mario.state == 2 && obj_mario.isswim == 1 && obj_mario.vspeed < 0)
{
    sprite_index = spr_cap_run
    image_speed = 0.12
}
else if ((obj_mario.sprite_index == scr_mariohold() || global.yoshi > 0) && obj_mario.pmeter > 5 && obj_mario.stompstyle == 0 && obj_mario.vspeed != 0)
{
    sprite_index = spr_cap_run
    image_speed = abs((obj_mario.hspeed / 10))
}
else if (obj_mario.state == 2)
{
    if (obj_mario.vspeed > 0)
    {
        if (sprite_index != spr_cap_fall)
        {
            sprite_index = spr_cap_stay_fall
            image_speed = abs((obj_mario.vspeed / 8))
        }
        else
            image_speed = 0.4
    }
    else if (sprite_index != s_cap_stay)
    {
        sprite_index = s_cap_start_stay
        image_speed = 0.1
    }
    else
    {
        image_speed = 0
        image_index = 0
    }
}
else if (obj_mario.state == 1 && obj_mario.hspeed != 0)
{
    if (sprite_index == spr_cap_fall || sprite_index == spr_cap_spinjump_fall)
    {
        sprite_index = s_cap_start_stay
        image_speed = 0.1
    }
    else if (sprite_index != spr_cap_run)
    {
        sprite_index = s_cap_stay_start
        image_speed = 0.1
    }
    else
        image_speed = abs((obj_mario.hspeed / 10))
}
else if (obj_mario.state == 0 && obj_mario.hspeed == 0 && (sprite_index == spr_cap_run || sprite_index == spr_cap_spinjump || sprite_index == spr_cap_fall || sprite_index == spr_cap_spinjump_fall))
{
    image_index = 0
    image_speed = 0.1
    sprite_index = s_cap_start_stay
}
else if (sprite_index != s_cap_stay_start && sprite_index != s_cap_start_stay)
{
    if (sprite_index != s_cap_stay)
    {
        sprite_index = s_cap_start_stay
        image_speed = 0.1
    }
    else
    {
        image_speed = 0
        image_index = 0
    }
}
else
    image_speed = 0.1
ready_cap = 1
