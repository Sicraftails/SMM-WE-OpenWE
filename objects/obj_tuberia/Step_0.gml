if (instance_exists(obj_mario) && warp > 0)
{
    if (direct_t == 0 && keyboard_check(global.abajo) && (!collision_rectangle((x + 8), (y - 8), (x + 24), (y - 4), obj_solid, 0, 0)) && (!collision_rectangle((x + 8), (y - 8), (x + 24), (y - 4), obj_physicssolid, 0, 0)) && (!collision_rectangle((x + 8), (y - 8), (x + 24), (y - 4), obj_bullebill_base, 0, 0)))
    {
        player = collision_rectangle((x + 13), (y - 4), (x + 19), (y - 4), obj_mario, 0, 0)
        if player
        {
            warpme = instance_create(obj_mario.x, obj_mario.y, obj_player_warp)
            warpme.direct = player.direct
            warpme.direction = 270
            warpme.destruir = 1
            warpme.pos_center = (x + 16)
            holding = obj_mario.holding
            helmet = obj_mario.helmet
            with (warpme)
                event_user(0)
            global.warp_x = m_posx
            global.warp_y = m_posy
            alarm[1] = 35
            with (obj_mario)
                instance_destroy()
        }
    }
    else if (direct_t == 1 && keyboard_check(global.izquierda) && (obj_mario.state < 2 || global.powerup == -82) && (!collision_rectangle((bbox_right + 8), (y + 8), (bbox_right + 8), (y + 24), obj_solid, 0, 0)) && (!collision_rectangle((bbox_right + 8), (y + 8), (bbox_right + 8), (y + 24), obj_physicssolid, 0, 0)) && (!collision_rectangle((bbox_right + 8), (y + 8), (bbox_right + 8), (y + 24), obj_bullebill_base, 0, 0)))
    {
        player = collision_rectangle((bbox_right + 2), (y + 28), (bbox_right + 2), (y + 32), obj_mario, 0, 0)
        if (player && obj_mario.y <= (y + 8))
        {
            warpme = instance_create(obj_mario.x, (obj_mario.y - 2), obj_player_warp)
            warpme.direct = player.direct
            warpme.direction = 180
            warpme.destruir = 1
            holding = obj_mario.holding
            helmet = obj_mario.helmet
            with (warpme)
                event_user(0)
            global.warp_x = m_posx
            global.warp_y = m_posy
            alarm[1] = 45
            with (obj_mario)
                instance_destroy()
        }
    }
    else if (direct_t == 2 && keyboard_check(global.arriba) && (!collision_rectangle((x + 8), (bbox_bottom + 8), (x + 24), (bbox_bottom + 8), obj_solid, 0, 0)) && (!collision_rectangle((x + 8), (bbox_bottom + 8), (x + 24), (bbox_bottom + 8), obj_physicssolid, 0, 0)) && (!collision_rectangle((x + 8), (bbox_bottom + 8), (x + 24), (bbox_bottom + 8), obj_bullebill_base, 0, 0)))
    {
        player = collision_rectangle((x + 13), (bbox_bottom + 2), (x + 19), (bbox_bottom + 2), obj_mario, 0, 0)
        if player
        {
            warpme = instance_create(obj_mario.x, obj_mario.y, obj_player_warp)
            warpme.direct = player.direct
            warpme.direction = 90
            warpme.destruir = 1
            warpme.pos_center = (x + 16)
            holding = obj_mario.holding
            helmet = obj_mario.helmet
            with (warpme)
                event_user(0)
            global.warp_x = m_posx
            global.warp_y = m_posy
            alarm[1] = 35
            with (obj_mario)
                instance_destroy()
        }
    }
    else if (direct_t == 3 && keyboard_check(global.derecha) && (obj_mario.state < 2 || global.powerup == -82) && (!collision_rectangle((x - 8), (y + 8), (x - 8), (y + 24), obj_solid, 0, 0)) && (!collision_rectangle((x - 8), (y + 8), (x - 8), (y + 24), obj_physicssolid, 0, 0)) && (!collision_rectangle((x - 8), (y + 8), (x - 8), (y + 24), obj_bullebill_base, 0, 0)))
    {
        player = collision_rectangle((x - 2), (y + 28), (x - 2), (y + 32), obj_mario, 0, 0)
        if (player && obj_mario.y <= (y + 8))
        {
            warpme = instance_create(obj_mario.x, (obj_mario.y - 2), obj_player_warp)
            warpme.direct = player.direct
            warpme.direction = 0
            warpme.destruir = 1
            holding = obj_mario.holding
            helmet = obj_mario.helmet
            with (warpme)
                event_user(0)
            global.warp_x = m_posx
            global.warp_y = m_posy
            alarm[1] = 45
            with (obj_mario)
                instance_destroy()
        }
    }
}

