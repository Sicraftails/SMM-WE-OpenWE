/// @description Make Mario bounce off of something
if (state != 3)
{
    if (keyboard_check(global.saltar) || keyboard_check(global.saltar_spin))
        jumpnow = 1
    else
        jumpnow = 2
    state = 2
    yview = (y + 32)
    camera_jump = 1
    alarm[0] = 4
    alarm[4] = 15
    if ((!(collision_rectangle(bbox_left, (bbox_top - 4), bbox_right, bbox_top, obj_solid, 1, 0))) && (!(collision_rectangle(bbox_left, (bbox_top - 4), bbox_right, bbox_top, obj_hurtsolid2, 1, 0))) && (!(collision_rectangle(bbox_left, (bbox_top - 4), bbox_right, bbox_top, obj_solidphy, 1, 0))) && (!(collision_rectangle(bbox_left, (bbox_top - 4), bbox_right, bbox_top, obj_bullebill_base, 1, 0))))
    {
        if (global.bg_level == "sky" && global.modo_noche == 1)
            vspeed = -2.675
        else
            vspeed = (-((4.225 - (2.55 * isswim))))
        y--
    }
    if (obj_levelmanager.pmeter > 5 && global.powerup == -39)
    {
        with (obj_levelmanager)
            alarm[8] = 300
    }
    if (stompstyle == 1)
        alarm[7] = 5
}


