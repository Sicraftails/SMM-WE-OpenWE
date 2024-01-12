if (walk == 1)
{
    if (sprite_index == spr_SMB_bomb_walk)
        sprite_index = spr_SMB_bomb_walk2
    else
        sprite_index = spr_SMB_bomb_walk
}
else if (image_index == 0)
    image_index = 1
else
    image_index = 0
if (time < 2)
{
    time++
    if (time != 2)
        alarm[4] = 10
}
else if (time > 2)
    alarm[4] = 10


