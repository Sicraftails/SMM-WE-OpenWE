var col_mario_left, col_mario_right;
col_mario_left = collision_rectangle(bbox_left, bbox_top, (bbox_left + 3), bbox_bottom, obj_mario, 0, 0)
col_mario_right = collision_rectangle((bbox_right - 3), bbox_top, bbox_right, bbox_bottom, obj_mario, 0, 0)
if (instance_exists(obj_mario) && col_mario_left && obj_mario.hspeed > 0)
    x--
else if (instance_exists(obj_mario) && col_mario_right && obj_mario.hspeed < 0)
    x++

