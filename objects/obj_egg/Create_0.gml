if (global.apariencia < 2)
{
    hardness = 0
    stomp = 0
    edible = 1
    alarm[2] = 7
    alarm[10] = 2
    image_speed = 0.15
}
else
{
    hardness = 100
    stomp = -1
    edible = 2
    if (global.apariencia == 3)
    {
        sprite_index = spr_NSMBU_egg
        image_speed = 0
        alarm[10] = 2
    }
    else
    {
        image_speed = 0
        alarm[10] = 2
    }
}
motion[0] = 45
motion[1] = 60
motion[2] = 120
motion[3] = 135
anim = 0
ready = 0
direct = -1
jumping = 0
swimming = 0
modo_lava = 0
wings = 0
wings_anim = 0
paracaidas = 0
innave = 0
dead_h = 0
modo_lava = 0
apilar = 0