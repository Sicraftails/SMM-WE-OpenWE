switch global.apariencia
{
    case 0:
        sprite_index = spr_SMB_key
        break
    case 1:
        sprite_index = spr_SMB3_key
        break
    case 2:
        sprite_index = spr_key
        break
    case 3:
        sprite_index = spr_NSMBU_key
        break
}

image_speed = 0.25
followers = 2
closeness = 7
amount_previous = 72
for (i = 0; i < amount_previous; i += 1)
{
    oldx[i] = x
    oldy[i] = y
}

