if (held == 1)
{
    swimming = 0
    vspeed = 0
    if instance_exists(obj_mario)
    {
        depth = -7
        x = obj_mario.x
        y = (obj_mario.y + 1)
        shake = 0
        alarm[0] = -1
        if (keyboard_check(global.lanzar_agarrar) && global.powerup == -85)
        {
            obj_mario.holding = 2
            direct = 1
        }
        else if (obj_mario.disablecontrols == 0)
        {
            obj_mario.holding = 0
            y--
            held = 0
            depth = 0
            shake = 0
            alarm[0] = -1
            event_user(2)
        }
        visible = true
    }
    else if instance_exists(obj_player_warp)
    {
        obj_player_warp.myitem = sprite_index
        global.warp_item = sprite_index
        x = obj_player_warp.x
        y = (obj_player_warp.y + 1)
        obj_player_warp.holding = 2
        visible = false
    }
    else if instance_exists(obj_doormario)
    {
        obj_doormario.myitem = sprite_index
        x = obj_doormario.x
        y = (obj_doormario.y + 1)
        obj_doormario.holding = 2
        visible = false
    }
    else if instance_exists(obj_doormario_exit)
    {
        obj_doormario_exit.myitem = sprite_index
        x = obj_doormario_exit.x
        y = (obj_doormario_exit.y + 1)
        obj_doormario_exit.holding = 2
        visible = false
    }
    else if (global.warp_item == -4)
        held = 0
}
else
{
    var lava_lift = collision_rectangle(bbox_left, (bbox_bottom - 3), bbox_right, ((bbox_bottom + 4) + vspeed), obj_platform_parent, 0, 0)
    if (lava_lift && vspeed >= 0)
    {
        var check = collision_rectangle(bbox_left, (bbox_bottom - 2), bbox_right, ((bbox_bottom + 2) + vspeed), obj_solidtop, 0, 0)
        var phy_check = collision_rectangle(bbox_left, (bbox_bottom - 2), bbox_right, ((bbox_bottom + 2) + vspeed), obj_physicssolid, 0, 0)
        if ((check && check != lava_lift) || phy_check)
            exit
        y = (lava_lift.bbox_top - (sprite_get_bbox_bottom(sprite_index) - sprite_get_yoffset(sprite_index)))
        var spd = lava_lift.hspeed
        if ((lava_lift.hspeed > 0 && (!(collision_rectangle(((bbox_right + 1) + spd), bbox_top, ((bbox_right + 1) + spd), (bbox_bottom - 1), obj_solid, 0, 0)))) || (lava_lift.hspeed > 0 && (!(collision_rectangle(((bbox_right + 1) + spd), bbox_top, ((bbox_right + 1) + spd), (bbox_bottom - 1), obj_physicssolid, 0, 0)))) || (lava_lift.hspeed > 0 && (!(collision_rectangle(((bbox_right + 1) + spd), bbox_top, ((bbox_right + 1) + spd), (bbox_bottom - 1), obj_bullebill_base, 0, 0)))) || (lava_lift.hspeed > 0 && (!(collision_rectangle(((bbox_right + 1) + spd), bbox_top, ((bbox_right + 1) + spd), (bbox_bottom - 1), obj_onewaygate_left, 0, 0)))) || (lava_lift.hspeed < 0 && (!(collision_rectangle(((bbox_left - 1) + spd), bbox_top, ((bbox_left - 1) + spd), (bbox_bottom - 1), obj_solid, 0, 0)))) || (lava_lift.hspeed < 0 && (!(collision_rectangle(((bbox_left - 1) + spd), bbox_top, ((bbox_left - 1) + spd), (bbox_bottom - 1), obj_physicssolid, 0, 0)))) || (lava_lift.hspeed < 0 && (!(collision_rectangle(((bbox_left - 1) + spd), bbox_top, ((bbox_left - 1) + spd), (bbox_bottom - 1), obj_bullebill_base, 0, 0)))) || (lava_lift.hspeed < 0 && (!(collision_rectangle(((bbox_left - 1) + spd), bbox_top, ((bbox_left - 1) + spd), (bbox_bottom - 1), obj_onewaygate_right, 0, 0)))))
            x += lava_lift.hspeed
        if (collision_rectangle(bbox_right, (bbox_top + 4), (bbox_right + 1), (bbox_bottom - 1), obj_solid, 0, 0) || collision_rectangle(bbox_right, (bbox_top + 4), (bbox_right + 1), (bbox_bottom - 1), obj_physicssolid, 0, 0) || collision_rectangle(bbox_right, (bbox_top + 4), (bbox_right + 1), (bbox_bottom - 1), obj_onewaygate_left, 0, 0) || collision_rectangle(bbox_right, (bbox_top + 4), (bbox_right + 1), (bbox_bottom - 1), obj_bullebill_base, 0, 0))
            x--
        else if (collision_rectangle((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 1), obj_solid, 0, 0) || collision_rectangle((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 1), obj_physicssolid, 0, 0) || collision_rectangle((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 1), obj_onewaygate_right, 0, 0) || collision_rectangle((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 1), obj_bullebill_base, 0, 0))
            x++
    }
}


