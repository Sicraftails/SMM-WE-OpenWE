if ((!outside_view()) && gravity == 0)
{
    if (state == 2)
    {
        switch global.apariencia
        {
            case 0:
                sprite_index = spr_SMB_floruga_angry_head
                break
            case 1:
                sprite_index = spr_SMB3_floruga_angry_head
                break
            case 2:
                sprite_index = spr_floruga_angry_head
                break
            case 3:
                sprite_index = spr_NSMBU_floruga_angry_head
                break
        }

        for (i = 1; i < seg; i++)
        {
            switch global.apariencia
            {
                case 0:
                    sprite_index = spr_SMB_floruga_angry_body
                    break
                case 1:
                    sprite_index = spr_SMB3_floruga_angry_body
                    break
                case 2:
                    sprite_index = spr_floruga_angry_body
                    break
                case 3:
                    sprite_index = spr_NSMBU_floruga_angry_body
                    break
            }

        }
    }
    moving = 1
    for (i = 0; i < 4; i++)
    {
        with (mybody[i])
            direct = -1
    }
    event_inherited()
    event_user(15)
}
else
    alarm[10] = 1

