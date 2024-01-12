audio_play_sound(snd_SMB3_course_clear, 0, false)
if (image_index == 3)
{
    with (instance_create((x + 16), y, obj_score))
    {
        visible = false
        event_user(7)
    }
}
with (instance_create((x + 8), (y + 7), obj_goalcard_get))
{
    vspeed = -2
    switch other.image_index
    {
        case 0:
            sprite_index = spr_SMB3_goalcard_mush
            break
        case 1:
            sprite_index = spr_SMB3_goalcard_flower
            break
        case 2:
            sprite_index = spr_SMB3_goalcard_star
            break
        case 3:
            sprite_index = spr_SMB3_goalcard_1up
            break
    }

}

