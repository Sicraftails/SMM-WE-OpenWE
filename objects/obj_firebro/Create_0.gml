switch global.apariencia
{
    case 0:
        s_hammerbro = spr_SMB_firebro
        s_hammerbro_jump = spr_SMB_firebro_throw
        s_hammerbro_throw = spr_SMB_firebro_throw
        sprite_wings = spr_SMB_wings
        break
    case 1:
        s_hammerbro = spr_SMB3_firebro
        s_hammerbro_jump = spr_SMB3_firebro_jump
        s_hammerbro_throw = spr_SMB3_firebro_throw
        sprite_wings = spr_SMB3_wings
        break
    case 2:
        s_hammerbro = spr_firebro
        s_hammerbro_jump = spr_firebro_jump
        s_hammerbro_throw = spr_firebro_throw
        sprite_wings = spr_wings
        break
    case 3:
        s_hammerbro = spr_NSMBU_firebro
        sprite_index = spr_NSMBU_firebro
        s_hammerbro_jump = spr_NSMBU_firebro_jump
        s_hammerbro_throw = spr_NSMBU_firebro_jump
        sprite_wings = spr_NSMBU_wings_enemigos
}
hardness = 0
stomp = 0
edible = 0
wings = 0
wings_anim = 0
paracaidas = 0
apilar = 0
dead_h = 0
innave = 0
direct = 1
prev_hspeed = 0.4
swimming = 0
jump_high = -6
throughsolid = 0
jump_start = y
hammers = choose(1, 2)
trow = 0
throw_lanzar = 0
salto = "big"
start = y
alarm[10] = 2
if (global.apariencia == 3)
{
    image_speed = 0.5
    alarm[7] = 360
}
else
{
    image_speed = 0.125
    alarm[1] = 360
}
alarm[2] = 17


