image_speed = 0
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
else
{
    switch global.apariencia
    {
        case 0:
            sprite_index = spr_SMB_checkpoint_bowser
            break
        case 1:
            sprite_index = spr_SMB3_checkpoint_bowser
            break
        case 2:
            image_speed = 0.15
            break
        case 3:
            sprite_index = spr_NSMBU_checkpoint
            image_speed = 0.5
            break
    }

}
rotacion = 0
sprout = -1
my_sprite = 0
pink_coins = global.pink_coins
pink_coin1_x = global.pink_coin1_x
pink_coin1_y = global.pink_coin1_y
pink_coin2_x = global.pink_coin2_x
pink_coin2_y = global.pink_coin2_y
pink_coin3_x = global.pink_coin3_x
pink_coin3_y = global.pink_coin3_y
pink_coin4_x = global.pink_coin4_x
pink_coin4_y = global.pink_coin4_y
pink_coin5_x = global.pink_coin5_x
pink_coin5_y = global.pink_coin5_y
pink_coin6_x = global.pink_coin6_x
pink_coin6_y = global.pink_coin6_y
pink_coin7_x = global.pink_coin7_x
pink_coin7_y = global.pink_coin7_y
pink_coin8_x = global.pink_coin8_x
pink_coin8_y = global.pink_coin8_y
pink_coin9_x = global.pink_coin9_x
pink_coin9_y = global.pink_coin9_y
pink_coin10_x = global.pink_coin10_x
pink_coin10_y = global.pink_coin10_y

