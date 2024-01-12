imheld = instance_create(x, (y - 2), obj_bobomb_hold)
if ((!(collision_rectangle(bbox_left, (bbox_top - 1), bbox_right, bbox_top, obj_solid, 1, 0))) && (!(collision_rectangle(bbox_left, (bbox_top - 1), bbox_right, bbox_top, obj_physicssolid, 1, 0))) && (!(collision_rectangle(bbox_left, (bbox_top - 1), bbox_right, bbox_top, obj_solidphy, 1, 0))) && (!(collision_rectangle(bbox_left, (bbox_top - 1), bbox_right, bbox_top, obj_bullebill_base, 1, 0))))
{
    if (swimming == 1)
        imheld.vspeed = -1.8
    else
        imheld.vspeed = -3
}
imheld.direct = direct
instance_destroy()
