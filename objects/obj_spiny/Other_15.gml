imheld = instance_create(x, (y - 2), obj_shell)
switch global.apariencia
{
    case 0:
        imheld.sprite_index = spr_SMB_spiny_dead
        break
    case 1:
        imheld.sprite_index = spr_SMB3_spiny_dead
        break
    case 2:
        imheld.sprite_index = spr_spiny_dead
        break
    case 3:
        imheld.sprite_index = spr_NSMBU_spiny_dead
        break
}

imheld.koopainside = -1
imheld.flip = 1
imheld.alarm[3] = 540
imheld.alarm[4] = 640
if ((!collision_rectangle(bbox_left, (bbox_top - 1), bbox_right, bbox_top, obj_solid, 1, 0)) && (!collision_rectangle(bbox_left, (bbox_top - 1), bbox_right, bbox_top, obj_physicssolid, 1, 0)) && (!collision_rectangle(bbox_left, (bbox_top - 1), bbox_right, bbox_top, obj_solidphy, 1, 0)) && (!collision_rectangle(bbox_left, (bbox_top - 1), bbox_right, bbox_top, obj_bullebill_base, 1, 0)))
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
instance_destroy()

