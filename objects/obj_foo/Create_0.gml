switch global.apariencia
{
    case 0:
        sprite_index = spr_SMB_foo_idle
        s_foo_idle = spr_SMB_foo_idle
        s_foo_mist = spr_SMB_foo_mist
        image_speed = 0
        break
    case 1:
        sprite_index = spr_SMB3_foo_idle
        s_foo_idle = spr_SMB3_foo_idle
        s_foo_mist = spr_SMB3_foo_mist
        image_speed = 0
        break
    case 2:
        sprite_index = spr_foo_idle
        s_foo_idle = spr_foo_idle
        s_foo_mist = spr_foo_mist
        image_speed = 0
        break
    case 3:
        sprite_index = spr_NSMBU_foo_idle
        s_foo_idle = spr_NSMBU_foo_idle
        s_foo_mist = spr_NSMBU_foo_mist
        image_speed = 0.25
        break
}

if (global.apariencia == 3)
    pos_y = 10
else
    pos_y = 9
hardness = 1
stomp = 0
edible = 0
direct = -1
dead_h = 0
modo_lava = 0
cfoo = 1
wings = 0
wings_anim = 0
paracaidas = 0
swimming = 0
apilar = 0
timer = 0
sound = -4
dead = 0
blowtime = 200

