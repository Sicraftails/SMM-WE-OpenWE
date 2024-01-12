if ((sprite_index == spr_flag_bowser || sprite_index == spr_SMB3_checkpoint_bowser || sprite_index == spr_SMB_checkpoint_bowser || sprite_index == spr_NSMBU_checkpoint) && (!audio_is_playing(scr_snd_getcheckpoint())))
{
    switch global.apariencia
    {
        case 0:
            with (obj_checkpoint)
                sprite_index = spr_SMB_checkpoint_bowser
            sprite_index = spr_SMB_checkpoint_ready
            image_speed = 0.22
            break
        case 1:
            with (obj_checkpoint)
                sprite_index = spr_SMB3_checkpoint_bowser
            sprite_index = spr_SMB3_checkpoint_ready
            image_speed = 0.22
            break
        case 2:
            with (obj_checkpoint)
                sprite_index = spr_flag_bowser
            switch global.jugador
            {
                case 0:
                    sprite_index = spr_flag_move
                    break
                case 1:
                    sprite_index = spr_flag_move_luigi
                    break
                case 2:
                    sprite_index = spr_flag_move_toad
                    break
                case 3:
                    sprite_index = spr_flag_move_toadette
                    break
            }

            break
        case 3:
            with (obj_checkpoint)
                sprite_index = spr_NSMBU_checkpoint
            sprite_index = spr_NSMBU_checkpoint_move
            image_speed = 0.6
            break
    }

    global.checkpoint_x = x
    global.checkpoint_y = y
    global.checkpointroom = room
    if (room == rm_guardabot_play && global.ms != 0)
    {
        global.ms_check = global.ms
        global.ms = 0
    }
    event_user(1)
    audio_play_sound(scr_snd_getcheckpoint(), 0, false)
    if (global.apariencia == 2)
    {
        with (instance_create(x, y, obj_spinthump))
        {
            sprite_index = spr_checkpoint_effect
            depth = 9
        }
    }
    if (sprout != 0)
    {
        my_sprite = scr_constant_get_sprite(sprout)
        scr_sprite_make_object((other.x - 8), (other.y + 16), my_sprite)
        sprout = 0
    }
}

