///Turn at slopes
if (hspeed > 0
and collision_point(bbox_right,bbox_bottom,obj_slopeparent,1,0))
or (hspeed < 0
and collision_point(bbox_left,bbox_bottom,obj_slopeparent,1,0))
    hspeed = -hspeed