switch global.apariencia
{
    case 0:
        s_boomboom = spr_SMB_boomboom_b
        s_boomboom2 = spr_SMB_boomboom2_b
        s_boomboom3 = spr_SMB_boomboom3_b
        s_boomboom_dead = spr_SMB_boomboom_dead_b
        break
    case 1:
        s_boomboom = spr_SMB3_boomboom_b
        s_boomboom2 = spr_SMB3_boomboom2_b
        s_boomboom3 = spr_SMB3_boomboom3_b
        s_boomboom_dead = spr_SMB3_boomboom_dead_b
        break
    case 2:
        s_boomboom = spr_boomboom_b
        s_boomboom2 = spr_boomboom2_b
        s_boomboom3 = spr_boomboom3_b
        s_boomboom_dead = spr_boomboom_dead_b
        break
}

sprite_index = s_boomboom3
steps_count = 0
step_inter = 0
hardness = 0
stomp = 1
edible = 2
direct = -1
ready = 1
inv = 0
hitpoints = 3
firehitpoints = 14
increment = 1
wings = 0
w_wings = 0
apilar = 0
innave = 0
dead_h = 0
key = 0
cooldown = 0
swimming = 0
image_speed = 0.15
alarm[10] = 80
alarm[3] = 240

