var col_mario, col_estalactita, shell_left, shell_right, held, cap, cap2;
col_mario = collision_rectangle(bbox_left, (bbox_top - 6), bbox_right, bbox_top, obj_mario, 1, 0)
if instance_exists(obj_mario)
{
    if (col_mario && global.powerup == -77 && global.yoshi == 0 && obj_mario.can_break_block == 1 && object_index != obj_onoffblock && object_index != obj_noteblock)
    {
        alarm[2] = 1
        with (obj_mario)
        {
            jumpnow = 2
            state = 2
            alarm[4] = 15
            if (isswim == 1)
                vspeed = -2
            else
                vspeed = -4
            y--
        }
    }
}
col_estalactita = collision_rectangle(bbox_left, (bbox_top - 6), bbox_right, bbox_top, obj_icicle, 1, 0)
if (col_estalactita && ready == 0 && col_estalactita.vspeed > 0)
{
    ready = 1
    vspeed = -2
    if (object_index == obj_noteblock || object_index == obj_musicblock || object_index == obj_noteblock_s)
        alarm[0] = 7
    else
        alarm[0] = 4
    event_user(0)
    with (col_estalactita)
        event_user(0)
}
if (object_index == obj_block || object_index == obj_block_multicoin || object_index == obj_flipblock)
{
    var shell_left = collision_rectangle(((bbox_left - 9) - hspeed), (bbox_top + 4), bbox_left, bbox_bottom, obj_shell_held, 0, 0)
    var shell_right = collision_rectangle(bbox_right, (bbox_top + 4), ((bbox_right + 9) + hspeed), bbox_bottom, obj_shell_held, 0, 0)
    var spike_left = collision_rectangle(((bbox_left - 9) - hspeed), bbox_top, bbox_left, bbox_bottom, obj_spike_ball_b, 0, 0)
    var spike_right = collision_rectangle(bbox_right, bbox_top, ((bbox_right + 9) + hspeed), bbox_bottom, obj_spike_ball_b, 0, 0)
    if ((shell_left && shell_left.sprite_height > 19 && shell_left.hspeed > 0) || (shell_right && shell_right.sprite_height > 19 && shell_right.hspeed < 0) || (spike_left && spike_left.hspeed > 0) || (spike_right && spike_right.hspeed < 0))
        alarm[2] = 1
}
held = collision_rectangle((bbox_left + 1), bbox_bottom, (bbox_right - 1), (bbox_bottom + 4), obj_holdparent, 0, 0)
if (held && ready == 0 && held.vspeed < 0 && held.bbox_top > (bbox_bottom + held.vspeed))
{
    ready = 1
    vspeed = -2
    alarm[0] = 4
    event_user(0)
}
cap = collision_rectangle(bbox_right, (bbox_top + 1), (bbox_right + 1), (bbox_bottom - 4), obj_cap_mario, 0, 0)
cap2 = collision_rectangle(bbox_left, (bbox_top + 1), (bbox_left - 1), (bbox_bottom - 4), obj_cap_mario, 0, 0)
if (instance_exists(obj_mario) && ready == 0 && (obj_mario.caped == 1 || obj_mario.stompstyle == 1) && ((cap2 && cap2.x < bbox_left) || (cap && cap.x > bbox_right)))
{
    ready = 1
    vspeed = -2
    alarm[0] = 4
    event_user(0)
}
if (speed == 0)
    depth = 9
else
    depth = -2
