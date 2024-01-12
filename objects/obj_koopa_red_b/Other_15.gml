imheld = instance_create(x, (y - 4), obj_shell)
switch global.apariencia
{
    case 0:
        imheld.sprite_index = spr_SMB_shell_red_b
        break
    case 1:
        imheld.sprite_index = spr_SMB3_shell_red_b
        break
    case 2:
        imheld.sprite_index = spr_shell_red_inside_b
        imheld.alarm[5] = 120
        break
    case 3:
        imheld.sprite_index = spr_NSMBU_shell_red_b
        break
}

imheld.flip = 1
imheld.key = key
imheld.alarm[3] = 540
imheld.alarm[4] = 600
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

