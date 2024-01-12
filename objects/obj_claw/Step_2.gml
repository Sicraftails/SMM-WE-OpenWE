var sped_claw, m, solidtop, solidphy, solidbullet;
if (hold == 2)
{
    if (global.powerup == -82)
    {
        with (obj_mario)
            inclown = 0
        hold = 0
        raedy = 1
        alarm[0] = 40
    }
    if instance_exists(obj_mario)
    {
        with (obj_mario)
        {
            vspeed = 0
            hspeed = 0
            gravity = 0
            state = 0
            jumpnow = 0
            isup = 0
            isuphold = 0
        }
        obj_mario.x = x
        if (global.apariencia == 3)
        {
            if (global.powerup == 0)
                obj_mario.y = (y - 6)
            else
                obj_mario.y = (y - 2)
        }
        else
            obj_mario.y = (y - 9)
        if (keyboard_check(global.izquierda) && (!keyboard_check(global.derecha)) && (!(collision_rectangle((obj_mario.bbox_left - 1), (obj_mario.bbox_top + 1), obj_mario.bbox_left, (obj_mario.bbox_bottom - 4), obj_solid, 0, 0))) && (!(collision_rectangle((obj_mario.bbox_left - 1), (obj_mario.bbox_top + 1), obj_mario.bbox_left, (obj_mario.bbox_bottom - 4), obj_bumper, 0, 0))))
        {
            knopen_xspeed[segmenten] -= 0.05
            if (knopen_xspeed[segmenten] < -3)
                knopen_xspeed[segmenten] = -3
        }
        else if (keyboard_check(global.derecha) && (!keyboard_check(global.izquierda)) && (!(collision_rectangle(obj_mario.bbox_right, (obj_mario.bbox_top + 1), (obj_mario.bbox_right + 1), (obj_mario.bbox_bottom - 4), obj_solid, 0, 0))) && (!(collision_rectangle(obj_mario.bbox_right, (obj_mario.bbox_top + 1), (obj_mario.bbox_right + 1), (obj_mario.bbox_bottom - 4), obj_bumper, 0, 0))))
        {
            knopen_xspeed[segmenten] += 0.05
            if (knopen_xspeed[segmenten] > 3)
                knopen_xspeed[segmenten] = 3
        }
        if (keyboard_check_pressed(global.saltar) && (!keyboard_check_pressed(global.saltar_spin)))
        {
            event_user(1)
            ready = 1
            alarm[0] = 40
            hold = 0
            sped_claw = knopen_xspeed[segmenten]
            if abs(sped_claw > 2.8)
            {
                if (global.bg_level == "sky" && global.modo_noche == 1)
                {
                    if (global.powerup == -78)
                        obj_mario.vspeed = -4
                    else
                        obj_mario.vspeed = -3.5
                }
                else if (global.powerup == -78)
                    obj_mario.vspeed = -5
                else
                    obj_mario.vspeed = -4.6
            }
            else if (global.bg_level == "sky" && global.modo_noche == 1)
            {
                if (global.powerup == -78)
                {
                    if (round((sped_claw / 2)) == 0)
                        obj_mario.vspeed = -3.65
                    else
                        obj_mario.vspeed = -3.75
                }
                else if (round((sped_claw / 2)) == 0)
                    obj_mario.vspeed = -3.05
                else
                    obj_mario.vspeed = -3.15
            }
            else if (global.powerup == -78)
            {
                if (round((sped_claw / 2)) == 0)
                    obj_mario.vspeed = -4.65
                else
                    obj_mario.vspeed = -4.75
            }
            else if (round((sped_claw / 2)) == 0)
                obj_mario.vspeed = -4.15
            else
                obj_mario.vspeed = -4.25
            obj_mario.hspeed = knopen_xspeed[segmenten]
            audio_play_sound(scr_jump(), 0, false)
            with (obj_mario)
            {
                jumpnow = 1
                s_hen = 1
                state = 2
                inclown = 0
                gp_limit = 8
            }
        }
        if (keyboard_check_pressed(global.saltar_spin) && (!keyboard_check_pressed(global.saltar)) && global.apariencia > 1 && obj_mario.holding == 0 && global.yoshi == 0)
        {
            event_user(1)
            ready = 1
            alarm[0] = 40
            hold = 0
            sped_claw = knopen_xspeed[segmenten]
            obj_mario.image_index = 0
            if (abs(sped_claw) > 2.8)
            {
                if (global.bg_level == "sky" && global.modo_noche == 1)
                    obj_mario.vspeed = -2.3
                else
                    obj_mario.vspeed = -3.3
            }
            else if (global.bg_level == "sky" && global.modo_noche == 1)
            {
                if (round((sped_claw / 2)) == 0)
                    obj_mario.vspeed = -2.3
                else
                    obj_mario.vspeed = -2.3
            }
            else if (round((sped_claw / 2)) == 0)
                obj_mario.vspeed = -3.3
            else
                obj_mario.vspeed = -3.3
            obj_mario.hspeed = knopen_xspeed[segmenten]
            with (obj_mario)
            {
                jumpnow = 1
                s_hen = 1
                inclown = 0
                state = 2
                isduck = 0
                y--
                stompstyle = 1
                audio_play_sound(scr_snd_spinjump(), 0, false)
                alarm[7] = 10
            }
        }
        if keyboard_check_pressed(global.abajo)
        {
            event_user(1)
            ready = 1
            alarm[0] = 40
            hold = 0
            obj_mario.hspeed = knopen_xspeed[segmenten]
            with (obj_mario)
                inclown = 0
        }
        m = obj_mario
        solidtop = collision_rectangle((m.bbox_left + 4), m.bbox_bottom, (m.bbox_right - 4), (m.bbox_bottom + 1), obj_solidtop, 0, 0)
        solidphy = collision_rectangle((m.bbox_left + 4), m.bbox_bottom, (m.bbox_right - 4), (m.bbox_bottom + 1), obj_physicssolid, 0, 0)
        solidbullet = collision_rectangle((m.bbox_left + 4), m.bbox_bottom, (m.bbox_right - 4), (m.bbox_bottom + 1), obj_bullebill_base, 0, 0)
        if ((solidtop && solidtop.vspeed < 0) || (solidphy && solidphy.vspeed < 0) || (solidbullet && solidbullet.vspeed < 0))
        {
            event_user(1)
            ready = 1
            alarm[0] = 60
            hold = 0
            obj_mario.hspeed = knopen_xspeed[segmenten]
            with (obj_mario)
                inclown = 0
        }
    }
    else
        hold = 0
}
else if (hold == 1)
{
    if (instance_exists(hold_obj))
    {
        hold_obj.x = (x - posx)
        hold_obj.y = (y + posy)
        with (hold_obj)
        {
            vspeed = 0
            hspeed = 0
            gravity = 0
        }
        if (release == 0 && instance_exists(obj_mario) && (obj_mario.y + 16) > y && obj_mario.x > (x - 24) && obj_mario.x < (x + 24) && (!(place_meeting(x, y, obj_solid))) && ((!(place_meeting(x, y, obj_physicssolid))) || hold_obj.object_index == obj_muncher || hold_obj.object_index == obj_muncher_b) && (!(place_meeting(x, y, obj_bullebill_base))))
        {
            event_user(1)
            if (enemy == 0 || hold_obj.object_index == obj_spiny_ball || hold_obj.object_index == obj_magikoopa || hold_obj.object_index == obj_spike || hold_obj.object_index == obj_rocky || hold_obj.object_index == obj_lakitu || (hold_obj.object_index == obj_cheepcheep && hold_obj.hspeed == 0) || (hold_obj.object_index == obj_cheepcheep2 && hold_obj.hspeed == 0))
                hold_obj.hspeed = knopen_xspeed[segmenten]
            else if (hold_obj.object_index == obj_bonybeetle || hold_obj.object_index == obj_bonybeetle_b)
            {
                with (hold_obj)
                    event_user(7)
            }
            else
            {
                with (hold_obj)
                    alarm[10] = 2
            }
            if (hold_obj.object_index == obj_rocangrejo)
                hold_obj.claw = 0
            if (hold_obj.object_index == obj_spike_ball || hold_obj.object_index == obj_spike_ball_b)
                hold_obj.angle = 0
            ready = 3
            alarm[0] = 40
            hold_obj = obj_lighting
            enemy = 0
            hold = 0
        }
    }
    if ((!outside_view()) && (((!instance_exists(hold_obj))) || (variable_instance_exists(hold_obj, "held") && hold_obj.held == 1) || (instance_exists(hold_obj) && hold_obj.visible == false)))
    {
        event_user(1)
        ready = 3
        alarm[0] = 40
        hold_obj = obj_lighting
        enemy = 0
        hold = 0
    }
}


