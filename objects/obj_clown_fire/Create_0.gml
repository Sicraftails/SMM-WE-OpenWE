event_inherited()
switch global.apariencia
{
    case 0:
        s_clown = spr_SMB_clown_fire
        s_clown_eyes = spr_SMB_clown_fire_eyes
        s_clown_evil = spr_SMB_clown_fire_evil
        s_clown_damage = spr_SMB_clown_fire_damage
        break
    case 1:
        s_clown = spr_SMB3_clown_fire
        s_clown_eyes = spr_SMB3_clown_fire_eyes
        s_clown_evil = spr_SMB3_clown_fire_evil
        s_clown_damage = spr_SMB3_clown_fire_damage
        break
    case 2:
        s_clown = spr_clown_fire
        s_clown_eyes = spr_clown_fire_eyes
        s_clown_evil = spr_clown_fire_evil
        s_clown_damage = spr_clown_fire_damage
        break
    case 3:
        s_clown = spr_NSMBU_clown_fire
        s_clown_eyes = spr_NSMBU_clown_fire_eyes
        s_clown_evil = spr_NSMBU_clown_fire_evil
        s_clown_damage = spr_NSMBU_clown_fire_damage
        break
}

s_clown_link = spr_SMB_clown_fire_link
if (global.apariencia == 3)
    sprite_carga = spr_NSMBU_clown_smoke
else
    sprite_carga = spr_clown_smoke
s_clown_evil_bounce = 0
s_clown_bounce = 0
fire = 0
carga = 0
anim_fire_charge = 0
alarm[4] = 120