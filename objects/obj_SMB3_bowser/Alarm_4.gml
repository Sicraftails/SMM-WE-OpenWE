groundpount = 1
if (collision_rectangle(bbox_left, (bbox_top - 4), bbox_right, bbox_top, obj_solid, 1, 0) || collision_rectangle(bbox_left, (bbox_top - 4), bbox_right, bbox_top, obj_physicssolid, 1, 0) || collision_rectangle(bbox_left, (bbox_top - 4), bbox_right, bbox_top, obj_solidphy, 1, 0) || collision_rectangle(bbox_left, (bbox_top - 4), bbox_right, bbox_top, obj_bullebill_base, 1, 0) || collision_rectangle(bbox_left, (bbox_top - 4), bbox_right, bbox_top, obj_bullebill_base, 1, 0))
    vspeed = -0.5
else
    vspeed = -5
stop_bowser = 0
if (instance_exists(obj_mario) && obj_mario.x > (x - 24) && obj_mario.x < (x + 24))
    exit
if (instance_exists(obj_mario) && obj_mario.x < x)
    hspeed = -5
else
    hspeed = 5

