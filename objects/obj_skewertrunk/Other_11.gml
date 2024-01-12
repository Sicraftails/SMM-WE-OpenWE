if (vspeed >= 0 && y >= ystart)
{
    var semisolid = collision_rectangle(bbox_left, (bbox_bottom - 1), bbox_right, (bbox_bottom + vspeed), obj_solidtop, 0, 0)
    var physolid = collision_rectangle(bbox_left, (bbox_bottom - 1), bbox_right, (bbox_bottom + vspeed), obj_physicssolid, 0, 0)
    var brick = collision_rectangle(bbox_left, (bbox_bottom - 1), bbox_right, (bbox_bottom + vspeed), obj_flipblock, 0, 0)
    if ((semisolid && bbox_bottom < (semisolid.yprevious + 5) && semisolid.object_index != obj_flipblock) || (semisolid && bbox_bottom < (semisolid.yprevious + 5) && semisolid.object_index != obj_flipblock && brick))
        y = (semisolid.bbox_top - (sprite_get_bbox_bottom(sprite_index) - sprite_get_yoffset(sprite_index)))
    if (physolid && bbox_bottom < (physolid.yprevious + 5))
        y = (physolid.bbox_top - (sprite_get_bbox_bottom(sprite_index) - sprite_get_yoffset(sprite_index)))
}
var solidtop = collision_rectangle(bbox_left, (bbox_bottom - 1), bbox_right, (bbox_bottom + 1), obj_solidtop, 0, 0)
brick = collision_rectangle(bbox_left, (bbox_bottom - 1), bbox_right, (bbox_bottom + 1), obj_flipblock, 0, 0)
if (y >= ystart && ((solidtop && solidtop.object_index != obj_flipblock) || (solidtop && solidtop.object_index != obj_flipblock && brick && (!(collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, (bbox_bottom - 4), obj_solidtop, 0, 0)))) || (collision_rectangle(bbox_left, (bbox_bottom - 1), bbox_right, (bbox_bottom + 1), obj_physicssolid, 0, 0) && (!(collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, (bbox_bottom - 4), obj_physicssolid, 0, 0))))))
{
    gravity = 0
    if (vspeed > 0)
    {
        vspeed = 0
        event_user(5)
        if (global.apariencia == 3)
        {
            with (instance_create(x, bbox_bottom, obj_smoke))
            {
                sprite_index = spr_NSMBU_smoke_thwomp
                depth = -3
            }
        }
        else
        {
            instance_create((bbox_left - 8), (bbox_bottom - 8), obj_smoke)
            instance_create((bbox_right - 8), (bbox_bottom - 8), obj_smoke)
        }
        var col_one_top = collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_onewaygate_top, 0, 0)
        if col_one_top
        {
            with (col_one_top)
            {
                rot = 1
                event_user(0)
            }
        }
        alarm[2] = 60
        ready = 4
    }
}
else if (y > (room_height + 16) && y >= ystart)
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
else if (y >= (ystart + 128))
{
    if (global.apariencia == 3)
    {
        audio_stop_sound(snd_skewer2)
        audio_stop_sound(snd_skewer3)
        audio_play_sound(snd_skewer3, 0, false)
    }
    vspeed = 0
    y = (ystart + 128)
    alarm[2] = 60
    ready = 4
}
else if (vspeed > 5)
    vspeed = 5
else
    vspeed += 0.5


