event_inherited()
if (modo_lava == 0)
{
    if (mouthholder != noone)
    {
        if (color == 0)
            sprite_index = spr_yoshi_fm_wait
        else if (color == 1)
            sprite_index = spr_yoshi_fm_wait_red
        else if (color == 2)
            sprite_index = spr_yoshi_fm_wait_blue
    }
    else if (color == 0)
        sprite_index = spr_yoshi_wait
    else if (color == 1)
        sprite_index = spr_yoshi_wait_red
    else if (color == 2)
        sprite_index = spr_yoshi_wait_blue
}
else if (mouthholder != noone)
{
    if (color == 0)
        sprite_index = spr_yoshi_fm
    else if (color == 1)
        sprite_index = spr_yoshi_fm_red
    else if (color == 2)
        sprite_index = spr_yoshi_fm_blue
}
else if (color == 0)
    sprite_index = spr_yoshi_runaway
else if (color == 1)
    sprite_index = spr_yoshi_runaway_red
else if (color == 2)
    sprite_index = spr_yoshi_runaway_blue
if (hspeed > 0)
    direct = 1
else if (hspeed < 0)
    direct = -1
hspeed = (max(0, (abs(hspeed) - 0.1)) * sign(hspeed))
if (abs(hspeed) < 0.1)
    hspeed = 0
if (instance_exists(obj_lava_water) && y > obj_lava_water.y && global.bg_level == "castle" && modo_lava == 0)
{
    with (instance_create(x, (y - 16), obj_smoke))
    {
        if (global.apariencia == 1)
            sprite_index = spr_SMB3_splash_lava
        else if (global.apariencia == 2)
            sprite_index = spr_splash_lava
        depth = -10
    }
    modo_lava = 1
}
if (instance_exists(obj_lava_water) && y > obj_lava_water.y && global.bg_level == "forest" && global.modo_noche == 1)
{
    with (instance_create(x, (y - 16), obj_smoke))
    {
        if (global.apariencia == 1)
            sprite_index = spr_SMB3_splash_lava_purple
        else if (global.apariencia == 2)
            sprite_index = spr_splash_lava_purple
        depth = -10
    }
    modo_lava = 1
}
if (instance_exists(obj_lava_water) && y > obj_lava_water.y && global.bg_level == "mountain" && global.modo_noche == 1)
{
    with (instance_create(x, (y - 16), obj_smoke))
    {
        if (global.apariencia == 1)
            sprite_index = spr_SMB3_splash_lava
        else if (global.apariencia == 2)
            sprite_index = spr_splash_lava
        depth = -10
    }
    modo_lava = 1
}
if (instance_exists(obj_lava_water) && y <= obj_lava_water.y && obj_lava_water.vspeed > 0 && (modo_lava == 1 || swimming == 1))
    y = obj_lava_water.y
if (y > (room_height + 16) || (vspeed > 0 && instance_exists(obj_lava_water) && y > (obj_lava_water.y + 32) && (global.bg_level == "castle" || (global.bg_level == "forest" && global.modo_noche == 1) || (global.bg_level == "mountain" && global.modo_noche == 1))))
    instance_destroy()
