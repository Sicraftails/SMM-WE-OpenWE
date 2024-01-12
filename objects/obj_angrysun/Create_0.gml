xmin = 0
if (global.modo_noche == 1)
{
    switch global.apariencia
    {
        case 0:
            sprite_index = spr_SMB_happymoon
            break
        case 1:
            sprite_index = spr_SMB3_happymoon
            break
        case 2:
            sprite_index = spr_happymoon
            break
        case 3:
            sprite_index = spr_NSMBU_happymoon
            break
    }

}
else if (global.modo_noche == 0)
{
    switch global.apariencia
    {
        case 0:
            sprite_index = spr_SMB_angrysun
            break
        case 1:
            sprite_index = spr_SMB3_angrysun
            break
        case 2:
            sprite_index = spr_angrysun
            break
        case 3:
            sprite_index = spr_NSMBU_angrysun_idle
            break
    }

}
if (global.modo_noche == 1)
{
    happy = 1
    hardness = 100
    stomp = -1
    edible = 2
    if (global.apariencia == 3)
        image_speed = 0.5
    else
        image_speed = 0.1
}
else
{
    happy = 0
    hardness = 99
    stomp = 2
    edible = 2
    if (global.apariencia == 2)
        image_speed = 0.15
    else if (global.apariencia == 3)
        image_speed = 0.5
    else
        image_speed = 0.1
}
ready = 0
movement = -4
wings = 0
innave = 0
dead_h = 0
modo_lava = 0
direct = 1
swimming = 0
apilar = 0

