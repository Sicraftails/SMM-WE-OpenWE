if (vspeed == 0 || claw == 1)
{
    switch global.apariencia
    {
        case 0:
            sprite_index = spr_SMB_rocangrejo_throw
            break
        case 1:
            sprite_index = spr_SMB3_rocangrejo_throw
            break
        case 2:
            sprite_index = spr_rocangrejo_throw
            break
        case 3:
            sprite_index = spr_NSMBU_rocangrejo_throw
            break
    }

    image_index = 0
    trow = 1
}
else
    alarm[1] = 20


