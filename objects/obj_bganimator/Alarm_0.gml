if instance_exists(obj_levelmanager)
{
    if (obj_levelmanager.editor == 0)
    {
        if (global.bg_level == "airship" && global.apariencia != 0)
        {
            if (type == 0)
            {
                switch cont
                {
                    case 0:
                        cont++
                        numb++
                        alarm[0] = 10
                        break
                    case 1:
                        cont++
                        numb++
                        alarm[0] = 50
                        break
                    case 2:
                        cont++
                        numb++
                        alarm[0] = 10
                        break
                    case 3:
                        cont = 0
                        type = 1
                        numb = 0
                        alarm[0] = 60
                        break
                }

            }
            else
            {
                switch cont
                {
                    case 0:
                        cont++
                        numb++
                        alarm[0] = 10
                        break
                    case 1:
                        cont++
                        numb++
                        alarm[0] = 100
                        break
                    case 2:
                        cont++
                        numb++
                        alarm[0] = 10
                        break
                    case 3:
                        cont = 0
                        type = 0
                        numb = 0
                        alarm[0] = 180
                        break
                }

            }
            __background_set( e__BG.Index, 0, anibg[numb] )
        }
        else
        {
            __background_set( e__BG.Index, index, anibg[numb] )
            numb++
            if (numb == array_length_1d(anibg))
                numb = 0
            alarm[0] = 10
        }
    }
    else
    {
        __background_set( e__BG.Index, index, anibg[0] )
        alarm[0] = 10
    }
}

action_set_motion(0, 0);
