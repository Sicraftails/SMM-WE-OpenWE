if (other.vspeed < 0 && bbox_bottom < (other.yprevious + 5) && vspeed >= 0)
{
    audio_stop_sound(scr_snd_kick())
    audio_play_sound(scr_snd_kick(), 0, false)
    if (object_index == obj_galoomba || object_index == obj_galoomba2 || object_index == obj_koopa || object_index == obj_koopa_red || object_index == obj_koopa_b || object_index == obj_koopa_red_b || object_index == obj_buzzybeetle || object_index == obj_buzzybeetle_b || object_index == obj_spiny || object_index == obj_shell_held || object_index == obj_bobomb || object_index == obj_bobomb_ready)
        event_user(5)
    else
        event_user(0)
    with (instance_create(x, y, obj_score))
        event_user(0)
}
else if (other.vspeed > 0 && bbox_top > (other.y + 15) && vspeed == 0 && gravity == 0)
{
    audio_stop_sound(scr_snd_kick())
    audio_play_sound(scr_snd_kick(), 0, false)
    event_user(0)
    with (instance_create(x, y, obj_score))
        event_user(0)
}
