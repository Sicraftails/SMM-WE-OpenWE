image_speed = 0.4
alarm[0] = 120
inmario = 0
v_duck_small = 0
switch global.apariencia
{
    case 0:
        s_clown = spr_SMB_clown
        s_clown_eyes = spr_SMB_clown_eyes
        s_clown_evil = spr_SMB_clown_evil
        s_clown_damage = spr_SMB_clown_damage
        break
    case 1:
        s_clown = spr_SMB3_clown
        s_clown_eyes = spr_SMB3_clown_eyes
        s_clown_evil = spr_SMB3_clown_evil
        s_clown_damage = spr_SMB3_clown_damage
        break
    case 2:
        s_clown = spr_clown
        s_clown_eyes = spr_clown_eyes
        s_clown_evil = spr_clown_evil
        s_clown_damage = spr_clown_damage
        break
    case 3:
        s_clown = spr_NSMBU_clown
        s_clown_eyes = spr_NSMBU_clown_eyes
        s_clown_evil = spr_NSMBU_clown_evil
        s_clown_damage = spr_NSMBU_clown_damage
        break
}

s_clown_link = spr_SMB_clown_link
s_clown_bounce = 0
s_clown_evil_bounce = 0
inenemy = 0
enemyobject = obj_lighting
enablecontrol = 1
swimming = 0
modo_lava = 0
direct = -1
x_scale = 1
y_scale = 1
rotacion = 0
rot = 0
up = 0
rot_angle = 0
