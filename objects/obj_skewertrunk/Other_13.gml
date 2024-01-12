if (vspeed <= 0 && y <= ystart)
{
    var semisolid = collision_rectangle(bbox_left, (bbox_top + vspeed), bbox_right, (bbox_top - 1), obj_solidtop, 0, 0)
    var physolid = collision_rectangle(bbox_left, (bbox_top + vspeed), bbox_right, (bbox_top - 1), obj_physicssolid, 0, 0)
    var bullet = collision_rectangle(bbox_left, (bbox_top + vspeed), bbox_right, (bbox_top - 1), obj_bullebill_base, 0, 0)
    var oneway = collision_rectangle(bbox_left, (bbox_top + vspeed), bbox_right, (bbox_top - 1), obj_onewaygate_bottom, 0, 0)
    var brick = collision_rectangle(bbox_left, (bbox_top + vspeed), bbox_right, (bbox_top - 1), obj_flipblock, 0, 0)
    if ((semisolid && bbox_top > (semisolid.yprevious - 5) && semisolid.object_index != obj_flipblock) || (semisolid && bbox_top > (semisolid.yprevious - 5) && semisolid.object_index != obj_flipblock && brick))
        y = (semisolid.bbox_bottom + 16)
    if (physolid && bbox_top > (physolid.yprevious - 5))
        y = (physolid.bbox_bottom + 16)
    if (bullet && bbox_top > (bullet.yprevious - 5))
        y = (bullet.bbox_bottom + 16)
    if (oneway && bbox_top > (oneway.yprevious - 5))
        y = (oneway.bbox_bottom + 16)
}
var solidtop = collision_rectangle(bbox_left, (bbox_top - 1), bbox_right, (bbox_top + 1), obj_solid, 0, 0)
brick = collision_rectangle(bbox_left, (bbox_bottom - 1), bbox_right, (bbox_bottom + 1), obj_flipblock, 0, 0)
if (y <= ystart && ((solidtop && solidtop.object_index != obj_flipblock) || (solidtop && solidtop.object_index != obj_flipblock && brick) || collision_rectangle(bbox_left, (bbox_top - 1), bbox_right, (bbox_top + 1), obj_physicssolid, 0, 0) || collision_rectangle(bbox_left, (bbox_top - 1), bbox_right, (bbox_top + 1), obj_bullebill_base, 0, 0) || collision_rectangle(bbox_left, (bbox_top - 1), bbox_right, (bbox_top + 1), obj_onewaygate_bottom, 0, 0)))
{
    gravity = 0
    if (vspeed < 0)
    {
        vspeed = 0
        event_user(5)
        if (global.apariencia == 3)
        {
            with (instance_create(x, bbox_top, obj_smoke))
            {
                sprite_index = spr_NSMBU_smoke_thwomp
                depth = -3
            }
        }
        else
        {
            instance_create((bbox_left - 8), (bbox_top - 8), obj_smoke)
            instance_create((bbox_right - 8), (bbox_top - 8), obj_smoke)
        }
        var col_one_bottom = collision_rectangle((bbox_left + 1), ((bbox_top + vspeed) - 1), (bbox_right - 1), (bbox_top - 1), obj_onewaygate_bottom, 1, 0)
        if col_one_bottom
        {
            with (col_one_bottom)
            {
                rot = 1
                event_user(0)
            }
        }
        alarm[2] = 60
        ready = 4
    }
}
else if (y < -16 && y <= ystart)
{
    if (global.apariencia == 3)
    {
        audio_stop_sound(snd_skewer2)
        audio_stop_sound(snd_skewer3)
        audio_play_sound(snd_skewer3, 0, false)
    }
    vspeed = 0
    alarm[2] = 60
    ready = 4
}
else if (y <= (ystart - 128))
{
    if (global.apariencia == 3)
    {
        audio_stop_sound(snd_skewer2)
        audio_stop_sound(snd_skewer3)
        audio_play_sound(snd_skewer3, 0, false)
    }
    vspeed = 0
    y = (ystart - 128)
    alarm[2] = 60
    ready = 4
}
else if (vspeed < -5)
    vspeed = -5
else
    vspeed -= 0.5


