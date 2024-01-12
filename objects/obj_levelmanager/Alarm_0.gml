if (!audio_is_playing(levelmusic))
{
    if (musicdisabled == 0 && switchon == 0 && sound_effect == 0 && editor == 0 && (!instance_exists(obj_player_goal_parent)) && (!instance_exists(obj_deadmario)))
        audio_play_sound(levelmusic, 1, true)
}

