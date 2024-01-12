switch global.jugador
{
    case 0:
        sprite_index = spr_mario_pballon
        break
    case 1:
        sprite_index = spr_luigi_pballon
        break
    case 2:
        sprite_index = spr_toad_pballon
        break
    case 3:
        sprite_index = spr_toadette_pballon
        break
}

if instance_exists(obj_mario)
{
    if (speed == 0)
    {
        if (keyboard_check(global.derecha) || keyboard_check(global.izquierda))
            image_speed = 0.1
        else
        {
            image_speed = 0
            image_index = 0
        }
    }
    else if (ready == 2)
    {
        image_speed = 0
        image_index = 2
    }
    else
        image_speed = 0.15
}
else if instance_exists(obj_player_goal_parent)
{
    if (speed == 0)
    {
        image_speed = 0
        image_index = 0
    }
    else
        image_speed = 0.15
}
if (hspeed < 0 && (collision_rectangle((bbox_left + hspeed), (bbox_top + 1), (bbox_left + hspeed), (bbox_bottom - 4), obj_solid, 0, 0) || collision_rectangle((bbox_left + hspeed), (bbox_top + 1), (bbox_left + hspeed), (bbox_bottom - 4), obj_physicssolid, 0, 0) || collision_rectangle((bbox_left + hspeed), (bbox_top + 1), (bbox_left + hspeed), (bbox_bottom - 4), obj_bullebill_base, 0, 0) || collision_rectangle((bbox_left + hspeed), (bbox_top + 1), (bbox_left + hspeed), (bbox_bottom - 4), obj_onewaygate_right, 0, 0)))
    x += xx
if (hspeed > 0 && (collision_rectangle((bbox_right + hspeed), (bbox_top + 1), (bbox_right + hspeed), (bbox_bottom - 4), obj_solid, 0, 0) || collision_rectangle((bbox_right + hspeed), (bbox_top + 1), (bbox_right + hspeed), (bbox_bottom - 4), obj_physicssolid, 0, 0) || collision_rectangle((bbox_right + hspeed), (bbox_top + 1), (bbox_right + hspeed), (bbox_bottom - 4), obj_bullebill_base, 0, 0) || collision_rectangle((bbox_right + hspeed), (bbox_top + 1), (bbox_right + hspeed), (bbox_bottom - 4), obj_onewaygate_right, 0, 0)))
    x -= xx
if (vspeed < 0 && (collision_rectangle(bbox_left, (bbox_top - vspeed), bbox_right, bbox_top, obj_solid, 1, 0) || collision_rectangle(bbox_left, (bbox_top - vspeed), bbox_right, bbox_top, obj_physicssolid, 1, 0) || collision_rectangle(bbox_left, (bbox_top - vspeed), bbox_right, bbox_top, obj_bullebill_base, 1, 0) || collision_rectangle(bbox_left, (bbox_top - vspeed), bbox_right, bbox_top, obj_onewaygate_bottom, 1, 0)))
    y += xx
if (vspeed > 0 && (collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + vspeed), obj_solid, 1, 0) || collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + vspeed), obj_physicssolid, 1, 0)))
    y -= xx

