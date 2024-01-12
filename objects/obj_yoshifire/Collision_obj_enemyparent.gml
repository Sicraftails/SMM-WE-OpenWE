var bobomb;
if (other.hardness < 99 && other.object_index != obj_bobomb_ready)
{
    if (other.object_index == obj_bobomb)
    {
        bobomb = instance_create(other.x, other.y, obj_bobomb_ready)
        bobomb.wings = other.wings
        bobomb.paracaidas = other.paracaidas
        with (other.id)
        {
            can_wings_deads = 0
            instance_destroy()
        }
    }
    else
    {
        audio_play_sound(snd_kick, 0, false)
        with (instance_create(other.x, other.y, obj_score))
            event_user(0)
        with (other.id)
            event_user(0)
    }
}

