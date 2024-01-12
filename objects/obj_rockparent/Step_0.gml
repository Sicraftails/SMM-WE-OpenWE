var col_mario = collision_rectangle(bbox_left, (bbox_top - 6), bbox_right, bbox_top, obj_mario, 1, 0)
if instance_exists(obj_mario)
{
    if (col_mario && global.powerup == -77 && global.yoshi == 0 && obj_mario.can_break_block == 1)
    {
        alarm[0] = 1
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
var shell_left = collision_rectangle(((bbox_left - 9) - hspeed), (bbox_top + 4), bbox_left, bbox_bottom, obj_shell_held, 0, 0)
var shell_right = collision_rectangle(bbox_right, (bbox_top + 4), ((bbox_right + 9) + hspeed), bbox_bottom, obj_shell_held, 0, 0)
var spike_left = collision_rectangle(((bbox_left - 9) - hspeed), bbox_top, bbox_left, bbox_bottom, obj_spike_ball_b, 0, 0)
var spike_right = collision_rectangle(bbox_right, bbox_top, ((bbox_right + 9) + hspeed), bbox_bottom, obj_spike_ball_b, 0, 0)
if ((shell_left && shell_left.sprite_height > 19 && shell_left.hspeed > 0) || (shell_right && shell_right.sprite_height > 19 && shell_right.hspeed < 0) || (spike_left && spike_left.hspeed > 0) || (spike_right && spike_right.hspeed < 0))
    alarm[0] = 1


