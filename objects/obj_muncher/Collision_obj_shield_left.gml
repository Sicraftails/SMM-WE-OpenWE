if (instance_exists(obj_mario) && global.powerup == -85)
{
    if (obj_mario.hspeed < -1)
    {
        audio_stop_sound(snd_SMB_link_guardbullet)
        audio_play_sound(snd_SMB_link_guardbullet, 0, false)
        var phy = collision_rectangle((bbox_left - 1), (bbox_top + a), (bbox_left - 1), (bbox_bottom - 8), obj_physicssolid, 1, 0)
        if (obj_mario.hspeed < -2 && phy && phy.id != id)
            hspeed = 0
        else if (obj_mario.hspeed < -2 && mebelow == -4 && (!(collision_rectangle((bbox_left - 1), (bbox_top + a), bbox_left, (bbox_bottom - 8), obj_solid, 1, 0))) && (!(collision_rectangle((bbox_left - 1), (bbox_top + a), bbox_left, (bbox_bottom - 8), obj_bullebill_base, 1, 0))) && (!(collision_rectangle((bbox_left - 1), (bbox_top + a), bbox_left, (bbox_bottom - 8), obj_solidphy, 1, 0))) && (!(collision_rectangle((bbox_left - 1), (bbox_top + a), bbox_left, (bbox_bottom - 8), obj_onewaygate_right, 1, 0))))
            hspeed = -2
        with (obj_mario)
            hspeed = 1
    }
}


