audio_play_sound(snd_SMB_link_throw, 0, false)
with (obj_mario)
    event_user(7)
bouncy = 1
if (collision_rectangle(bbox_left, bbox_top, bbox_right, (bbox_bottom - 8), obj_solid, 0, 0) || collision_rectangle(bbox_left, bbox_top, bbox_right, (bbox_bottom - 8), obj_bullebill_base, 0, 0) || collision_rectangle(bbox_left, bbox_top, bbox_right, (bbox_bottom - 8), obj_physicssolid, 0, 0))
    y += 16
if keyboard_check(global.abajo)
{
    if (collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_solid, 0, 0) || collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_bullebill_base, 0, 0) || collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_physicssolid, 0, 0))
    {
        inwall = 1
        hspeed = 0
    }
    if (obj_mario.hspeed == 0)
        hspeed = (1 * obj_mario.direct)
    else
        hspeed = (obj_mario.hspeed / 2)
}
else if ((!(collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_solid, 0, 0))) && (!(collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_bullebill_base, 0, 0))) && (!(collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_physicssolid, 0, 0))))
    hspeed = (((2 - swimming) + abs(obj_mario.hspeed)) * sign(obj_mario.direct))
else
    inwall = 1
inmune = 1
alarm[3] = 15


