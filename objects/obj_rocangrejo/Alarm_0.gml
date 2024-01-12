switch global.apariencia
{
    case 0:
        sprite_index = spr_SMB_rocangrejo_jump
        break
    case 1:
        sprite_index = spr_SMB3_rocangrejo_jump
        break
    case 2:
        sprite_index = spr_rocangrejo_jump
        break
    case 3:
        sprite_index = spr_NSMBU_rocangrejo_jump
        break
}

image_index = 0
if (global.apariencia == 3)
    image_speed = 0.5
else
{
    image_speed = 0
    image_index = 0
}
if (gravity == 0)
{
    jumping = 1
    vspeed = (-(3.4 - (1.8 * swimming)))
    hspeed = ((-(1.5 - (1 * swimming))) * direct)
}
else
    alarm[0] = 10
y--
jumping = 1

