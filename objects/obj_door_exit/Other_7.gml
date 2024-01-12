if (sprite_index == spr_door || sprite_index == spr_SMB3_door || sprite_index == spr_SMB_door || sprite_index == spr_NSMBU_door)
{
    image_speed = 0
    image_index = 2
}
else if (sprite_index == spr_door_close || sprite_index == spr_SMB3_door_close || sprite_index == spr_SMB_door_close || sprite_index == spr_NSMBU_door_close)
{
    switch global.apariencia
    {
        case 0:
            sprite_index = spr_SMB_door
            break
        case 1:
            sprite_index = spr_SMB3_door
            break
        case 2:
            sprite_index = spr_door
            break
        case 3:
            sprite_index = spr_NSMBU_door
            break
    }

    image_speed = 0
    image_index = 0
    audio_play_sound(scr_snd_door_close(), 0, false)
}

