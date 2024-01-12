image_speed = 0
if (global.apariencia == 3)
{
    switch global.powerup
    {
        case 0:
            image_index = 0
            break
        case 1:
            image_index = 1
            break
        case 2:
            image_index = 2
            break
        case -30:
            image_index = 3
            break
        case -38:
            image_index = 4
            break
        case -43:
            image_index = 5
            break
    }

}
else
    image_index = 0
holding = 0
direct = 1
yview = (y + 32)
helmet = 0
cap = 0
myitem = noone
offset = 0
if (global.powerup == 0)
    my_y = (y + 15)
else
    my_y = (y + 12)

