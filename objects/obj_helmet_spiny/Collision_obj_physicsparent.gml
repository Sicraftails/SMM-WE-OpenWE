if (other.bbox_bottom < ((bbox_top - vvelocidad) + 5) && other.vspeed >= 0 && other.object_index != obj_coin_pow && other.object_index != obj_spring_land && other.object_index != obj_grinder && other.object_index != obj_mushroom && other.object_index != obj_yoshifire && other.object_index != obj_yoshifire_one && other.object_index != obj_1up && other.object_index != obj_fireflower && other.object_index != obj_cap && other.object_index != obj_star && other.object_index != obj_bowser_fire_down && other.object_index != obj_bullebill_base && other.object_index != obj_getshoe)
{
    audio_stop_sound(snd_helmet_spiny)
    audio_play_sound(snd_helmet_spiny, 0, false)
    if (vvelocidad >= 0)
        other.vspeed = -2
    else
        other.vspeed = (vvelocidad + -2)
}
