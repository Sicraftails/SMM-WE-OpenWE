if (hspeed >= 0 && x > xstart)
{
    var ssolid = collision_rectangle((bbox_right + 1), bbox_top, (bbox_right + hspeed), bbox_bottom, obj_solid, 0, 0)
    var solidphy = collision_rectangle((bbox_right + 1), bbox_top, (bbox_right + hspeed), bbox_bottom, obj_physicssolid, 0, 0)
    var bullet = collision_rectangle((bbox_right + 1), bbox_top, (bbox_right + hspeed), bbox_bottom, obj_bullebill_base, 0, 0)
    var oneway = collision_rectangle((bbox_right + 1), bbox_top, (bbox_right + hspeed), bbox_bottom, obj_onewaygate_left, 0, 0)
    var brick = collision_rectangle((bbox_right + 1), bbox_top, (bbox_right + hspeed), bbox_bottom, obj_flipblock, 0, 0)
    if ((ssolid && bbox_right < (ssolid.xprevious + 5) && ssolid.object_index != obj_flipblock) || (ssolid && bbox_right < (ssolid.xprevious + 5) && ssolid.object_index != obj_flipblock && brick))
        x = (ssolid.bbox_left - 16)
    if (solidphy && bbox_right < (solidphy.xprevious + 5))
        x = (solidphy.bbox_left - 16)
    if (bullet && bbox_right < (bullet.xprevious + 5))
        x = (bullet.bbox_left - 16)
    if (oneway && bbox_right < (oneway.xprevious + 5))
        x = (oneway.bbox_left - 16)
}
var solidtop = collision_rectangle((bbox_right + 1), bbox_top, (bbox_right + 1), bbox_bottom, obj_solid, 0, 0)
brick = collision_rectangle((bbox_right + 1), bbox_top, (bbox_right + 1), bbox_bottom, obj_flipblock, 0, 0)
if (x > xstart && ((solidtop && solidtop.object_index != obj_flipblock) || (solidtop && solidtop.object_index != obj_flipblock && brick) || collision_rectangle((bbox_right + 1), bbox_top, (bbox_right + 1), bbox_bottom, obj_physicssolid, 0, 0) || collision_rectangle((bbox_right + 1), bbox_top, (bbox_right + 1), bbox_bottom, obj_bullebill_base, 0, 0) || collision_rectangle((bbox_right + 1), bbox_top, (bbox_right + 1), bbox_bottom, obj_onewaygate_left, 0, 0)))
{
    hspeed = 0
    event_user(5)
    if (global.apariencia == 3)
    {
        with (instance_create((x + 16), y, obj_smoke))
        {
            sprite_index = spr_NSMBU_smoke_thwomp
            depth = -3
            image_angle = 90
        }
    }
    else
    {
        instance_create((bbox_right - 8), (bbox_top + 8), obj_smoke)
        instance_create((bbox_right - 8), (bbox_bottom - 8), obj_smoke)
    }
    var col_one_left = collision_rectangle(bbox_right, (bbox_top + 1), (bbox_right + 1), (bbox_bottom - 4), obj_onewaygate_left, 0, 0)
    if col_one_left
    {
        with (col_one_left)
        {
            rot = 1
            event_user(0)
        }
    }
    alarm[2] = 60
    ready = 4
}
else if ((x < (camera_get_view_x(view_get_camera(0))) + 16) && x <= xstart)
{
    if (global.apariencia == 3)
    {
        audio_stop_sound(snd_skewer2)
        audio_stop_sound(snd_skewer3)
        audio_play_sound(snd_skewer3, 0, false)
    }
    hspeed = 0
    alarm[2] = 60
    ready = 4
}
else if (x >= (xstart + 128))
{
    if (global.apariencia == 3)
    {
        audio_stop_sound(snd_skewer2)
        audio_stop_sound(snd_skewer3)
        audio_play_sound(snd_skewer3, 0, false)
    }
    hspeed = 0
    x = (xstart + 128)
    alarm[2] = 60
    ready = 4
}
else if (hspeed > 5)
    hspeed = 5
else
    hspeed += 0.5


