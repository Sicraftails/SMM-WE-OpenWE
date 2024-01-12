if (room == global.checkpointroom)
{
    switch global.apariencia
    {
        case 0:
            sprite_index = spr_SMB_checkpoint
            image_speed = 0
            image_index = global.jugador
            break
        case 1:
            sprite_index = spr_SMB3_checkpoint
            image_speed = 0
            image_index = global.jugador
            break
        case 2:
            switch global.jugador
            {
                case 0:
                    sprite_index = spr_flag_mario
                    break
                case 1:
                    sprite_index = spr_flag_luigi
                    break
                case 2:
                    sprite_index = spr_flag_toad
                    break
                case 3:
                    sprite_index = spr_flag_toadette
                    break
            }

            image_speed = 0.15
            break
        case 3:
            sprite_index = spr_NSMBU_checkpoint_mario
            image_speed = 0.5
            break
    }

}

