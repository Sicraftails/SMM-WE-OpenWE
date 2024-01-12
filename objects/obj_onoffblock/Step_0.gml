var col_estalactita, held, cap, cap2;
if (global.onoffblock == 0)
{
    switch global.apariencia
    {
        case 0:
            obj_onoffblock.sprite_index = spr_SMB_onoffblock_on
            break
        case 1:
            obj_onoffblock.sprite_index = spr_SMB3_onoffblock_on
            break
        case 2:
            obj_onoffblock.sprite_index = spr_onoffblock_on
            break
        case 3:
            obj_onoffblock.sprite_index = spr_NSMBU_onoffblock_on
            break
    }

}
else
{
    switch global.apariencia
    {
        case 0:
            obj_onoffblock.sprite_index = spr_SMB_onoffblock_off
            break
        case 1:
            obj_onoffblock.sprite_index = spr_SMB3_onoffblock_off
            break
        case 2:
            obj_onoffblock.sprite_index = spr_onoffblock_off
            break
        case 3:
            obj_onoffblock.sprite_index = spr_NSMBU_onoffblock_off
            break
    }

}
col_estalactita = collision_rectangle(bbox_left, (bbox_top - 6), bbox_right, bbox_top, obj_icicle, 1, 0)
if (col_estalactita && col_estalactita.vspeed > 0)
{
    ready = 1
    vspeed = -2
    if (object_index == obj_noteblock)
        alarm[0] = 7
    else
        alarm[0] = 4
    event_user(0)
    with (col_estalactita)
        event_user(0)
}
held = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + 4), obj_holdparent, 0, 0)
if (held && held.object_index != obj_helmet && held.object_index != obj_helmet_spiny && held.vspeed < 0 && held.bbox_top > (bbox_bottom + held.vspeed) && ready == 0)
{
    ready = 1
    vspeed = -2
    alarm[0] = 4
    event_user(0)
}
cap = collision_rectangle(bbox_right, (bbox_top + 1), (bbox_right + 1), (bbox_bottom - 4), obj_cap_mario, 0, 0)
cap2 = collision_rectangle(bbox_left, (bbox_top + 1), (bbox_left - 1), (bbox_bottom - 4), obj_cap_mario, 0, 0)
if ((cap2 && cap2.x < bbox_left && obj_mario.caped == 1 && ready == 0) || (cap && cap.x > bbox_right && obj_mario.caped == 1 && ready == 0))
{
    ready = 1
    vspeed = -2
    alarm[0] = 4
    event_user(0)
}
else if ((cap2 && cap2.x < bbox_left && obj_mario.stompstyle == 1 && ready == 0) || (cap && cap.x > bbox_right && obj_mario.stompstyle == 1 && ready == 0))
{
    ready = 1
    vspeed = -2
    alarm[0] = 4
    event_user(0)
}
if (speed == 0)
    depth = 9
else
    depth = -2

