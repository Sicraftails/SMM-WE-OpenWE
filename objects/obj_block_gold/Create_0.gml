switch global.apariencia
{
    case 0:
        sprite_index = spr_SMB_qblock
        image_index = 5
        image_speed = 0
        break
    case 1:
        sprite_index = spr_SMB3_qblock_gold
        image_speed = 0.15
        break
    case 2:
        sprite_index = spr_flipblock_gold
        image_speed = 0.15
        break
    case 3:
        sprite_index = spr_NSMBU_block_gold
        image_speed = 0.2
        break
}

ready = 0
cointime = 0
wings = 0
w_wings = 0
cont_coin = 0
limit_coins = 100
s_scalex = 1
s_scaley = 1
expand = 0

