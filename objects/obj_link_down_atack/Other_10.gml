if (instance_exists(obj_mario) && obj_mario.vspeed > 1 && time == 0)
{
    if (collision_rectangle(bbox_left, (bbox_bottom - 1), bbox_right, (bbox_bottom + 1), obj_solidtop, 0, 0) || collision_rectangle(bbox_left, (bbox_bottom - 1), bbox_right, (bbox_bottom + 1), obj_physicssolid, 0, 0))
    {
        audio_stop_sound(snd_SMB3_thwomp_original)
        audio_play_sound(snd_SMB3_thwomp_original, 0, false)
        time = 1
        alarm[0] = 10
    }
}


