if (inup == 1)
    var altura = -2
else
    altura = 2
imheld = instance_create(x, (y - altura), obj_shell)
if (global.bg_level == "castle" || global.bg_level == "ghost" || global.bg_level == "underground" || global.modo_noche == 1)
    var dark = 1
else
    dark = 0
switch global.apariencia
{
    case 0:
        if (dark == 1)
            imheld.sprite_index = spr_SMB_shell_buzzy_night_b
        else
            imheld.sprite_index = spr_SMB_shell_buzzy_b
        break
    case 1:
        if (dark == 1)
            imheld.sprite_index = spr_SMB3_shell_buzzy_night_b
        else
            imheld.sprite_index = spr_SMB3_shell_buzzy_b
        break
    case 2:
        imheld.sprite_index = spr_shell_buzzy_b
        break
    case 3:
        imheld.sprite_index = spr_NSMBU_shell_buzzy_b
        break
}

imheld.koopainside = -1
hardness = 100
imheld.alarm[3] = 540
imheld.alarm[4] = 600
if (inup == 0 && (!(collision_rectangle(bbox_left, (bbox_top - 1), bbox_right, bbox_top, obj_solid, 1, 0))) && (!(collision_rectangle(bbox_left, (bbox_top - 1), bbox_right, bbox_top, obj_physicssolid, 1, 0))) && (!(collision_rectangle(bbox_left, (bbox_top - 1), bbox_right, bbox_top, obj_solidphy, 1, 0))) && (!(collision_rectangle(bbox_left, (bbox_top - 1), bbox_right, bbox_top, obj_bullebill_base, 1, 0))))
{
    if (swimming == 1)
        imheld.vspeed = -1.8
    else
        imheld.vspeed = -3
}
if (inup == 0)
{
    if ((other.bbox_left + (other.bbox_right / 2)) <= (bbox_left + (bbox_right / 2)))
        imheld.hspeed = 0.5
    else if ((other.bbox_left + (other.bbox_right / 2)) > (bbox_left + (bbox_right / 2)))
        imheld.hspeed = -0.5
}
instance_destroy()
