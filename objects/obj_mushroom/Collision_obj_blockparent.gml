if (other.vspeed < 0 && other.y < (other.ystart - 2) && bbox_bottom < (other.yprevious + 5) && wings == 0)
{
    if (collision_rectangle(bbox_left, (bbox_top - 1), bbox_right, bbox_top, obj_solid, 1, 0) || collision_rectangle(bbox_left, (bbox_top - 1), bbox_right, bbox_top, obj_physicssolid, 1, 0) || collision_rectangle(bbox_left, (bbox_top - 1), bbox_right, bbox_top, obj_bullebill_base, 1, 0) || collision_rectangle(bbox_left, (bbox_top - 1), bbox_right, bbox_top, obj_onewaygate_bottom, 1, 0))
    {
        with (instance_create(x, y, obj_smoke))
        {
            if (global.apariencia == 3)
                sprite_index = spr_NSMBU_smoke_flag
        }
        instance_destroy()
    }
    else
    {
        if (global.bg_level == "underwater" || (global.bg_level == "sky" && global.modo_noche == 1) || (global.bg_level == "airship" && global.modo_noche == 1))
            vspeed = -1.8
        else
            vspeed = -3
        if (hspeed == 0)
            hspeed = 1
        else if ((x + (sprite_width / 2)) > (other.x + (sprite_width / 2)))
            hspeed = 1
        else if ((x + (sprite_width / 2)) < (other.x + (sprite_width / 2)))
            hspeed = -1
    }
}
else if (other.vspeed > 0 && other.bbox_bottom < (bbox_top + 4) && vspeed == 0 && gravity == 0)
{
    instance_create(x, y, obj_smoke)
    instance_destroy()
}
