sprite = spr_NSMBU_boo_overworld
sprite_hidden = spr_NSMBU_boo_overworld_hidden
switch global.apariencia
{
    case 0:
        sprite_index = spr_SMB_boo
        sprite_wings = spr_SMB_wings
        break
    case 1:
        sprite_index = spr_SMB3_boo
        sprite_wings = spr_SMB3_wings
        break
    case 2:
        sprite_index = spr_boo
        sprite_wings = spr_wings
        break
    case 3:
        if (global.bg_level == "ghost")
        {
            sprite_index = spr_NSMBU_boo_ghost
            sprite = spr_NSMBU_boo_ghost
            sprite_hidden = spr_NSMBU_boo_ghost_hidden
        }
        else
        {
            sprite_index = spr_NSMBU_boo_overworld
            sprite = spr_NSMBU_boo_overworld
            sprite_hidden = spr_NSMBU_boo_overworld_hidden
        }
        sprite_wings = spr_NSMBU_wings_enemigos
}

hardness = 100
stomp = 2
edible = 2
dead_h = 0
modo_lava = 0
wings = 0
wings_anim = 0
direct = -1
swimming = 0
velocity = 0.025
apilar = 0
inup = 0
stretch = 0
cankill = 0
if (global.apariencia == 3)
    image_speed = 0.3
else
    image_speed = 0
movenow = 1
move_sound = 1
movenowprev = 1
boo_huida = 0
alarm[10] = 1
alarm[2] = 5

