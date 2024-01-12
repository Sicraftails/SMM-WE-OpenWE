if (global.checkpointroom != -4)
{
    if ((global.pink_coin1_x == x && global.pink_coin1_y == y) || (global.pink_coin2_x == x && global.pink_coin2_y == y) || (global.pink_coin3_x == x && global.pink_coin3_y == y) || (global.pink_coin4_x == x && global.pink_coin4_y == y) || (global.pink_coin5_x == x && global.pink_coin5_y == y) || (global.pink_coin6_x == x && global.pink_coin6_y == y) || (global.pink_coin7_x == x && global.pink_coin7_y == y) || (global.pink_coin8_x == x && global.pink_coin8_y == y) || (global.pink_coin9_x == x && global.pink_coin9_y == y) || (global.pink_coin10_x == x && global.pink_coin10_y == y))
        instance_destroy()
}
switch global.apariencia
{
    case 0:
        sprite_index = spr_SMB_pink_coin
        break
    case 1:
        sprite_index = spr_SMB3_pink_coin
        break
    case 2:
        sprite_index = spr_pink_coin
        break
    case 3:
        sprite_index = spr_NSMBU_pink_coin
        break
}

if (global.apariencia == 3)
    image_speed = 0.3
else
    image_speed = 0.15
alarm[0] = 1
lock = 0

