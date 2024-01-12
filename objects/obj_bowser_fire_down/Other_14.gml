var solidtop, solidpow, solidthwomp, solidmuncher, solidpinchos;
if (vspeed >= 0)
{
    solidtop = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + vspeed), obj_solidtop, 0, 0)
    solidpow = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + vspeed), obj_block_pow_hold, 0, 0)
    solidthwomp = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + vspeed), obj_thwomp, 0, 0)
    solidmuncher = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + vspeed), obj_muncher, 0, 0)
    solidpinchos = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + vspeed), obj_pinchos, 0, 0)
    if (solidtop && bbox_bottom < (solidtop.yprevious + 5) && obj_levelmanager.editor == 0 && y > (camera_get_view_y(view_get_camera(0)) + 16))
        y = (solidtop.y + floor(((y - bbox_bottom) - 0.9)))
    if (solidmuncher && bbox_bottom < (solidmuncher.yprevious + 5) && obj_levelmanager.editor == 0 && y > (camera_get_view_y(view_get_camera(0)) + 16))
        y = (solidmuncher.y + floor(((y - bbox_bottom) - 0.9)))
    if (solidpinchos && bbox_bottom < (solidpinchos.yprevious + 5) && obj_levelmanager.editor == 0 && y > (camera_get_view_y(view_get_camera(0)) + 16))
        y = (solidpinchos.y + floor(((y - bbox_bottom) - 0.9)))
    if (solidthwomp && bbox_bottom < (solidthwomp.yprevious + 5) && obj_levelmanager.editor == 0 && y > (camera_get_view_y(view_get_camera(0)) + 16))
        y = (solidthwomp.y + floor(((y - bbox_bottom) - 16)))
    if (solidpow && bbox_bottom < (solidpow.yprevious + 5) && obj_levelmanager.editor == 0 && y > (camera_get_view_y(view_get_camera(0)) + 16))
        y = (solidpow.y + floor(((y - bbox_bottom) - 0.9)))
    if (vspeed > 4)
        vspeed = 4
}
if (collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + 4), obj_slopeparent, 1, 0) && (!collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, (bbox_bottom - 4), obj_slopeparent, 1, 0)) && vspeed == 0)
    y += 4
if (collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, bbox_bottom, obj_slopeparent, 1, 0) && (!collision_rectangle(bbox_left, (bbox_bottom - 8), bbox_right, (bbox_bottom - 8), obj_slopeparent, 1, 0)))
{
    while collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, bbox_bottom, obj_slopeparent, 1, 0)
        y--
}
if ((collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_solidtop, 0, 0) && (!collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, (bbox_bottom - 4), obj_solidtop, 0, 0)) && y > (camera_get_view_y(view_get_camera(0)) + 16)) || (collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_block_pow_hold, 0, 0) && (!collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, (bbox_bottom - 4), obj_block_pow_hold, 0, 0)) && y > (camera_get_view_y(view_get_camera(0)) + 16)) || (collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_thwomp, 0, 0) && (!collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, (bbox_bottom - 4), obj_thwomp, 0, 0)) && y > (camera_get_view_y(view_get_camera(0)) + 16)) || (collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_muncher, 0, 0) && (!collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, (bbox_bottom - 4), obj_muncher, 0, 0)) && y > (camera_get_view_y(view_get_camera(0)) + 16)) || (collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_pinchos, 0, 0) && (!collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, (bbox_bottom - 4), obj_pinchos, 0, 0)) && y > (camera_get_view_y(view_get_camera(0)) + 16)) || collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_slopeparent, 1, 0))
{
    gravity = 0
    if (vspeed > 0)
        vspeed = 0
    if (destruir == 0)
    {
        alarm[0] = 180
        destruir = 1
    }
}
else if (y >= (room_height - 24) && layer_background_get_sprite(scr_bg_underwater()) && obj_levelmanager.editor == 0)
    event_user(0)
else if (!swimming)
{
    gravity = 0.1
    if (vspeed > 1.4)
        vspeed = 1.4
}
else if (swimming == 1)
{
    gravity = 0.1
    if (vspeed > 0.4)
        vspeed = 0.4
}
if ((vspeed < 0 && collision_rectangle((bbox_left + 1), ((bbox_top + vspeed) - 1), (bbox_right - 1), (bbox_top - 1), obj_solid, 1, 0)) || (vspeed < 0 && collision_rectangle((bbox_left + 1), ((bbox_top + vspeed) - 1), (bbox_right - 1), (bbox_top - 1), obj_onewaygate_bottom, 1, 0)))
    vspeed = 0
if ((bbox_top - 16) > room_height)
    instance_destroy()

