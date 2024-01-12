image_speed = 0
ready = 0
omitir = 0
alarm[0] = 30
date = 0
alpha = 0
day = "DOMINGO"
if (current_day == 24 && current_month == 12)
    day = scr_language(9)
else if (current_day == 1 && current_month == 1)
    day = scr_language(10)
else
{
    switch current_weekday
    {
        case 0:
            day = scr_language(8)
            break
        case 1:
            day = scr_language(2)
            break
        case 2:
            day = scr_language(3)
            break
        case 3:
            day = scr_language(4)
            break
        case 4:
            day = scr_language(5)
            break
        case 5:
            day = scr_language(6)
            break
        case 6:
            day = scr_language(7)
            break
    }

}
