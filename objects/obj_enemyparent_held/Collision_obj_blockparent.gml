if (other.vspeed < 0 && bbox_bottom < (other.yprevious + 5) && kickme == 1 && inmune == 0)
{
    audio_play_sound(scr_snd_kick(), 0, false)
    y--
    event_user(7)
    with (instance_create((round((bbox_left + bbox_right)) / 2), ((round((bbox_top + bbox_bottom)) / 2) - 8), obj_smoke))
        sprite_index = spr_spinthump
    with (instance_create(((round((bbox_left + bbox_right)) / 2) - 8), y, obj_score))
        event_user(0)
    inmune = 1
    if (object_index == obj_shell || object_index == obj_shell_empty || object_index == obj_spiny_empty || object_index == obj_shell_drybones)
        alarm[6] = 15
    else
        alarm[3] = 15
}

