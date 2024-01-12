if (held == 0)
{
    if (object_index == obj_bobomb_hold)
        var alturabo = 12
    else
        alturabo = 5
    if (other.bbox_bottom < ((bbox_top - vspeed) + alturabo) && other.vspeed > 0)
        event_user(1)
    else if (scr_canhold() == 0 && inmune == 0 && (object_index == obj_bobomb_hold || object_index == obj_galoomba_hold || object_index == obj_galoomba_hold_b || object_index == obj_galoomba_hold2 || object_index == obj_galoomba_hold2_b || object_index == obj_mechakoopa_held || object_index == obj_link_bomb))
    {
        if (!audio_is_playing(scr_snd_kick()))
            audio_play_sound(scr_snd_kick(), 0, false)
        if (!instance_exists(obj_spinthump))
        {
            with (instance_create(other.x, (other.y + 22), obj_spinthump))
            {
                image_xscale = 0.5
                image_yscale = 0.5
            }
        }
        if ((other.bbox_left + (bbox_right / 2)) > (bbox_left + (bbox_right / 2)))
        {
            hspeed = (other.hspeed - (1 - swimming))
            direct = -1
        }
        else
        {
            hspeed = (other.hspeed + (1 - swimming))
            direct = 1
        }
        vspeed = (-0.5 + swimming)
        inmune = 1
        alarm[3] = 15
    }
}
