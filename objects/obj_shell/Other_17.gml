imheld = instance_create(x, (y - 2), obj_shell)
imheld.sprite_index = sprite_index
imheld.flip = 1
if ((!(collision_rectangle(bbox_left, (bbox_top - 1), bbox_right, bbox_top, obj_solid, 1, 0))) && (!(collision_rectangle(bbox_left, (bbox_top - 1), bbox_right, bbox_top, obj_physicssolid, 1, 0))) && (!(collision_rectangle(bbox_left, (bbox_top - 1), bbox_right, bbox_top, obj_solidphy, 1, 0))) && (!(collision_rectangle(bbox_left, (bbox_top - 1), bbox_right, bbox_top, obj_bullebill_base, 1, 0))))
{
    if (swimming == 1)
        imheld.vspeed = -1.8
    else
        imheld.vspeed = -3
}
if ((other.bbox_left + (other.bbox_right / 2)) <= (bbox_left + (bbox_right / 2)))
    imheld.hspeed = 0.5
else if ((other.bbox_left + (other.bbox_right / 2)) > (bbox_left + (bbox_right / 2)))
    imheld.hspeed = -0.5
if (global.apariencia == 2)
{
    if (koopainside != 0)
    {
        imheld.koopainside = koopainside
        imheld.alarm[3] = 540
        imheld.alarm[4] = 600
    }
}
else
{
    imheld.koopainside = koopainside
    imheld.alarm[3] = 540
    imheld.alarm[4] = 600
}
instance_destroy()
