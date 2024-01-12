switch global.apariencia
{
    case 0:
        sprite_index = spr_SMB_bowserjr_shell
        break
    case 1:
        sprite_index = spr_SMB3_bowserjr_shell
        break
    case 2:
        sprite_index = spr_bowserjr_shell
        break
    case 3:
        sprite_index = spr_NSMBU_bowserjr_shell
        break
}

hardness = 99
stomp = 2
edible = 0
wings = 0
wings_anim = 0
paracaidas = 0
apilar = 0
dead_h = 0
innave = 0
direct = 1
swimming = 0
modo_lava = 0
key = 0
prevhspeed = 0
charge = 0
firehitpoints = 10
hitpoints = 0
inwall = 0
xx = 1
sprite = spr_NSMBU_bowserjr_shell
if (global.apariencia == 3)
    image_speed = 0.6
else
    image_speed = 0.3
if (global.apariencia == 3)
	alarm[11] = 2
alarm[10] = 30
alarm[0] = 420

