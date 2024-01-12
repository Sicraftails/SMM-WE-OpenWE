if (other.object_index != obj_onoffblock && other.object_index != obj_noteblock && other.object_index != obj_musicblock && other.object_index != obj_noteblock_s)
{
    with (other.id)
        alarm[2] = 1
}
event_user(0)

