switch global.apariencia
{
    case 0:
        sprite_index = spr_SMB_ice_coin
        sprite_block = spr_SMB_ice_coinblock
        shard = spr_SMB_shard_ice
        sprite_wings = spr_SMB_wings_16x16
        break
    case 1:
        switch global.bg_level
        {
            case "snow":
                if (global.modo_noche == 1)
                    sprite_index = spr_SMB3_ice_coin_ice
                else
                    sprite_index = spr_SMB3_ice_coin
                break
            case "castle":
                sprite_index = spr_SMB3_ice_coin_night
                break
            case "ghost":
                sprite_index = spr_SMB3_ice_coin_night
                break
            case "underground":
                sprite_index = spr_SMB3_ice_coin_night
                break
            default:
                if (global.modo_noche == 1)
                {
                    sprite_index = spr_SMB3_ice_coin_night
                    break
                }
                else
                    sprite_index = spr_SMB3_ice_coin
        }

        sprite_block = spr_SMB3_ice_coinblock
        shard = spr_SMB3_shard_ice
        sprite_wings = spr_SMB3_wings2
        break
    case 2:
        sprite_block = spr_ice_coinblock
        shard = spr_shard_ice
        sprite_wings = spr_wings_items
        break
    case 3:
        sprite_index = spr_NSMBU_ice_coin
        sprite_block = spr_NSMBU_ice_coinblock
        shard = spr_NSMBU_shardice
        sprite_wings = spr_NSMBU_wings_items
        break
}

sprite_coin = sprite_index
image_speed = 0.15
wings = 0
wings_anim = 0
alarm[10] = 4

