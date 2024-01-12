var solidtop, solidpow, solidmuncher, solidpinchos, col_one_top, col_one_bottom;
if (vspeed >= 0)
{
    solidtop = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + vspeed), obj_solidtop, 0, 0)
    solidpow = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + vspeed), obj_block_pow_hold, 0, 0)
    solidmuncher = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + vspeed), obj_muncher, 0, 0)
    solidpinchos = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + vspeed), obj_pinchos, 0, 0)
    if (solidtop && bbox_bottom < (solidtop.yprevious + 5))
        y = (solidtop.y + floor(((y - bbox_bottom) - 0.9)))
    if (solidmuncher && bbox_bottom < (solidmuncher.yprevious + 5) && obj_levelmanager.editor == 0)
        y = (solidmuncher.y + floor(((y - bbox_bottom) - 0.9)))
    if (solidpinchos && bbox_bottom < (solidpinchos.yprevious + 5) && obj_levelmanager.editor == 0)
        y = (solidpinchos.y + floor(((y - bbox_bottom) - 0.9)))
    if (solidpow && bbox_bottom < (solidpow.yprevious + 5) && obj_levelmanager.editor == 0)
        y = (solidpow.y + floor(((y - bbox_bottom) - 0.9)))
    if (vspeed > 4)
        vspeed = 4
}
if ((collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_solidtop, 0, 0) && (!collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, (bbox_bottom - 4), obj_solidtop, 0, 0))) || (collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_block_pow_hold, 0, 0) && (!collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, (bbox_bottom - 4), obj_block_pow_hold, 0, 0))) || (collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_muncher, 0, 0) && (!collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, (bbox_bottom - 4), obj_muncher, 0, 0))) || (collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_pinchos, 0, 0) && (!collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, (bbox_bottom - 4), obj_pinchos, 0, 0))))
{
    gravity = 0
    if (vspeed > 0)
    {
        vspeed = 0
        col_one_top = collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_onewaygate_top, 0, 0)
        if col_one_top
        {
            if (!audio_is_playing(snd_oneway))
                audio_play_sound(snd_oneway, 0, false)
            with (col_one_top)
                rot = 1
        }
        if (state == 4)
            alarm[10] = 1
        if (state != 5 && state != 6)
            state = 1
    }
}
else if (paracaidas == 1)
{
    gravity = 0.1
    if (vspeed > 0.4)
        vspeed = 0.4
}
else if (!swimming)
{
    gravity = 0.2
    if (vspeed > 4)
        vspeed = 4
}
else if (swimming == 1)
{
    gravity = 0.1
    if (vspeed > 0.4)
        vspeed = 0.4
}
if (vspeed < 0 && (collision_rectangle((bbox_left + 1), ((bbox_top + vspeed) - 1), (bbox_right - 1), (bbox_top - 1), obj_solid, 1, 0) || collision_rectangle((bbox_left + 1), ((bbox_top + vspeed) - 1), (bbox_right - 1), (bbox_top - 1), obj_onewaygate_bottom, 1, 0) || collision_rectangle((bbox_left + 1), (bbox_top - 1), (bbox_right - 1), bbox_top, obj_pinchos, 1, 0)))
{
    col_one_bottom = collision_rectangle((bbox_left + 1), ((bbox_top + vspeed) - 1), (bbox_right - 1), (bbox_top - 1), obj_onewaygate_bottom, 1, 0)
    if col_one_bottom
    {
        with (col_one_bottom)
        {
            rot = 1
            event_user(0)
        }
    }
    while collision_rectangle((bbox_left + 1), bbox_top, (bbox_right - 1), bbox_top, obj_solid, 1, 0)
        y++
    vspeed = 0
}
if (instance_exists(obj_lava_water) && (bbox_bottom - 8) > (obj_lava_water.y - 12) && (global.bg_level == "castle" || (global.bg_level == "forest" && global.modo_noche == 1)))
{
    if (key == 1)
    {
        with (instance_create((x - 8), (y - 8), obj_key_appear))
            vspeed = -4
    }
    audio_stop_sound(snd_bowser_dead)
    audio_play_sound(snd_bowser_dead, 0, false)
    with (instance_create(x, y, obj_bowser_dead))
        direct = other.direct
    instance_destroy()
}
else if ((bbox_top - 16) > room_height && global.bg_level != "castle" && global.bg_level != "forest" && global.bg_level != "beach")
{
    if (key == 1)
    {
        with (instance_create((x - 8), (y - 8), obj_key_appear))
            vspeed = -4
    }
    audio_stop_sound(snd_bowser_dead)
    audio_play_sound(snd_bowser_dead, 0, false)
    if instance_exists(obj_levelmanager)
    {
        with (obj_levelmanager)
        {
            dead_bowser = 1
            alarm[11] = 120
        }
    }
    instance_destroy()
}
event_user(14)

