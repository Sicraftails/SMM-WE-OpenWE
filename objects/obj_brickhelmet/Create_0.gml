event_inherited()
switch global.apariencia
{
    case 0:
        if (global.jugador < 2)
        {
            s_brickhelmet_2 = spr_SMB_brickhelmet_mega
            s_brickhelmet = spr_SMB_brickhelmet
        }
        else
        {
            s_brickhelmet_2 = spr_SMB_brickhelmet_mega_t
            s_brickhelmet = spr_SMB_brickhelmet_t
        }
        break
    case 1:
        if (global.jugador < 2)
        {
            s_brickhelmet_2 = spr_SMB3_brickhelmet_round
            s_brickhelmet = spr_SMB3_brickhelmet
        }
        else
        {
            s_brickhelmet_2 = spr_SMB3_brickhelmet_round_t
            s_brickhelmet = spr_SMB3_brickhelmet_t
        }
        break
    case 2:
        if (global.jugador < 2)
        {
            s_brickhelmet_3 = spr_brickhelmet_yoshi
            s_brickhelmet_2 = spr_brickhelmet_up
            s_brickhelmet = spr_brickhelmet
        }
        else
        {
            s_brickhelmet_3 = spr_brickhelmet_yoshi_t
            s_brickhelmet_2 = spr_brickhelmet_up_t
            s_brickhelmet = spr_brickhelmet_t
        }
        break
}

image_speed = 0
image_index = 0
index = 0
rotacion = 0
rot = 1
up = 0
pos_y = 21
direct = 1
gravity = 0
vvelocidad = 0
fallow = obj_lighting
repeat_coins = 60
get_coin = 0
limit_coins = 200
hspeed = 0
event_user(6)
alarm[4] = 60
