if (global.apariencia == 3)
{
    switch sprite_index
    {
        case spr_NSMBU_bonybeetle_b_start:
            if (image_index >= 29.5)
            {
                sprite_index = spr_NSMBU_bonybeetle_b_spiny
                image_index = 0
                stomp = 1
            }
            else
                image_speed = 0.5
            break
        case spr_NSMBU_bonybeetle_b_spiny:
            if (image_index >= 18.75)
            {
                if (spiny == 2)
                {
                    sprite_index = spr_NSMBU_bonybeetle_b_end
                    image_index = 0
                }
                else
                    spiny++
            }
            else
                image_speed = 0.25
            break
        case spr_NSMBU_bonybeetle_b_end:
            if (image_index >= 11.5)
            {
                sprite_index = spr_NSMBU_bonybeetle_b
                image_index = 0
                spiny = 0
                stomp = 3
                alarm[10] = 2
                alarm[0] = 180
            }
            else
                image_speed = 0.5
            break
    }

}
else if (spiny == 1)
{
    if (image_index >= 2.85)
    {
        image_speed = 0
        image_index = 2.85
    }
}
else if (spiny == 2)
{
    if (image_index <= 0.15)
    {
        sprite_index = s_bonybeetle
        image_speed = 0.15
        image_index = 0
        spiny = 0
        stomp = 3
        alarm[10] = 2
        alarm[0] = 180
    }
}
