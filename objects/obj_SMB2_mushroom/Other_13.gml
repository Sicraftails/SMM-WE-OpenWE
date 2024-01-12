if (global.modo_noche == 1 && global.bg_level == "ground")
{
    if ((hspeed < 0 && collision_rectangle((bbox_left + (hspeed * 2)), (bbox_top + 4), (bbox_left + (hspeed * 2)), (bbox_bottom - 1), obj_solid, 0, 0)) || (hspeed > 0 && collision_rectangle((bbox_right + (hspeed * 2)), (bbox_top + 4), (bbox_right + (hspeed * 2)), (bbox_bottom - 1), obj_solid, 0, 0)) || (hspeed < 0 && collision_rectangle((bbox_left + (hspeed * 2)), (bbox_top + 4), (bbox_left + (hspeed * 2)), (bbox_bottom - 1), obj_hurtsolid2, 0, 0)) || (hspeed > 0 && collision_rectangle((bbox_right + (hspeed * 2)), (bbox_top + 4), (bbox_right + (hspeed * 2)), (bbox_bottom - 1), obj_hurtsolid2, 0, 0)) || (hspeed < 0 && collision_rectangle((bbox_left + (hspeed * 2)), (bbox_top + 4), (bbox_left + (hspeed * 2)), (bbox_bottom - 1), obj_solidphy, 0, 0)) || (hspeed > 0 && collision_rectangle((bbox_right + (hspeed * 2)), (bbox_top + 4), (bbox_right + (hspeed * 2)), (bbox_bottom - 1), obj_solidphy, 0, 0)) || (hspeed < 0 && collision_rectangle((bbox_left + (hspeed * 2)), (bbox_top + 4), (bbox_left + (hspeed * 2)), (bbox_bottom - 1), obj_bullebill_base, 0, 0)) || (hspeed > 0 && collision_rectangle((bbox_right + (hspeed * 2)), (bbox_top + 4), (bbox_right + (hspeed * 2)), (bbox_bottom - 1), obj_bullebill_base, 0, 0)) || (hspeed < 0 && collision_rectangle((bbox_left + (hspeed * 2)), (bbox_top + 4), (bbox_left + (hspeed * 2)), (bbox_bottom - 1), obj_spring_land, 0, 0)) || (hspeed > 0 && collision_rectangle((bbox_right + (hspeed * 2)), (bbox_top + 4), (bbox_right + (hspeed * 2)), (bbox_bottom - 1), obj_spring_land, 0, 0)) || (hspeed < 0 && collision_rectangle((bbox_left + (hspeed * 2)), (bbox_top + 4), (bbox_left + (hspeed * 2)), (bbox_bottom - 1), obj_enemyparent_held, 0, 0)) || (hspeed > 0 && collision_rectangle((bbox_right + (hspeed * 2)), (bbox_top + 4), (bbox_right + (hspeed * 2)), (bbox_bottom - 1), obj_enemyparent_held, 0, 0)) || (hspeed < 0 && collision_rectangle((bbox_left + (hspeed * 2)), (bbox_top + 4), (bbox_left + (hspeed * 2)), (bbox_bottom - 1), obj_onewaygate_right, 0, 0)) || (hspeed > 0 && collision_rectangle((bbox_right + (hspeed * 2)), (bbox_top + 4), (bbox_right + (hspeed * 2)), (bbox_bottom - 1), obj_onewaygate_left, 0, 0)))
    {
        if (delay == 0 && gravity == 0)
        {
            if (global.bg_level == "underwater" || (global.modo_noche == 1 && global.bg_level == "sky") || (global.modo_noche == 1 && global.bg_level == "airship"))
                vspeed = -2.4
            else
                vspeed = -4.8
            delay = 6
            y--
        }
    }
    if (hspeed < 0 && collision_rectangle((bbox_left + hspeed), (bbox_top + 4), (bbox_left + hspeed), (bbox_bottom - 1), obj_solid, 0, 0))
        x++
    if (hspeed > 0 && collision_rectangle((bbox_right + hspeed), (bbox_top + 4), (bbox_right + hspeed), (bbox_bottom - 1), obj_solid, 0, 0))
        x--
    if (hspeed < 0 && collision_rectangle((bbox_left + hspeed), (bbox_top + 4), (bbox_left + hspeed), (bbox_bottom - 1), obj_bullebill_base, 0, 0))
        x++
    if (hspeed > 0 && collision_rectangle((bbox_right + hspeed), (bbox_top + 4), (bbox_right + hspeed), (bbox_bottom - 1), obj_bullebill_base, 0, 0))
        x--
    if (hspeed < 0 && collision_rectangle((bbox_left + hspeed), (bbox_top + 4), (bbox_left + hspeed), (bbox_bottom - 1), obj_hurtsolid2, 0, 0))
        x++
    if (hspeed > 0 && collision_rectangle((bbox_right + hspeed), (bbox_top + 4), (bbox_right + hspeed), (bbox_bottom - 1), obj_hurtsolid2, 0, 0))
        x--
    if (hspeed < 0 && collision_rectangle((bbox_left + hspeed), (bbox_top + 4), (bbox_left + hspeed), (bbox_bottom - 1), obj_solidphy, 0, 0))
        x++
    if (hspeed > 0 && collision_rectangle((bbox_right + hspeed), (bbox_top + 4), (bbox_right + hspeed), (bbox_bottom - 1), obj_solidphy, 0, 0))
        x--
    if (hspeed < 0 && collision_rectangle((bbox_left + hspeed), (bbox_top + 4), (bbox_left + hspeed), (bbox_bottom - 1), obj_onewaygate_right, 0, 0))
        x++
    if (hspeed > 0 && collision_rectangle((bbox_right + hspeed), (bbox_top + 4), (bbox_right + hspeed), (bbox_bottom - 1), obj_onewaygate_left, 0, 0))
        x--
}
else
    event_inherited()

