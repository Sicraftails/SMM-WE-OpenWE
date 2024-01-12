if (hspeed > 0)
{
    if ((collision_rectangle(bbox_right, bbox_top, (bbox_right + (hspeed * 2)), bbox_bottom, obj_enemyparent, 0, 1) 
	|| collision_rectangle(bbox_right, bbox_top, (bbox_right + (hspeed * 2)), bbox_bottom, obj_enemyparent_held, 0, 1)) 
	&& (!(collision_rectangle(bbox_right, bbox_top, (bbox_right + (hspeed * 2)), bbox_bottom, obj_floruga_body, 0, 1))))
        hspeed = (-hspeed)
}
else if (hspeed < 0)
{
    if ((collision_rectangle((bbox_left - (hspeed * 2)), bbox_top, bbox_left, bbox_bottom, obj_enemyparent, 0, 1) 
	|| collision_rectangle((bbox_left - (hspeed * 2)), bbox_top, bbox_left, bbox_bottom, obj_enemyparent_held, 0, 1)) 
	&& (!(collision_rectangle((bbox_left - (hspeed * 2)), bbox_top, bbox_left, bbox_bottom, obj_floruga_body, 0, 1))))
        hspeed = (-hspeed)
}
