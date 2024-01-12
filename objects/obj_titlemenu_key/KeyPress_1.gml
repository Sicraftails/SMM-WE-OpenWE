var newKey, i;
if (ready == 1)
{
    newKey = keyboard_key
    if (newKey == 27)
    {
        audio_play_sound(snd_wrong, 0, false)
        switch key
        {
            case 0:
                global.lanzar_agarrar = 88
                break
            case 1:
                global.saltar = 90
                break
            case 2:
                global.spacekey = 32
                break
            case 3:
                global.pause = 13
                break
            case 4:
                global.arriba = 38
                break
            case 5:
                global.abajo = 40
                break
            case 6:
                global.izquierda = 37
                break
            case 7:
                global.derecha = 39
                break
			case 8:
                global.saltar_spin = 40
                break
        }
        
    }
    else
    {
        audio_play_sound(snd_correct, 0, false)
        switch key
        {
            case 0:
                if ((newKey == 162) || (newKey == 163))
                    global.lanzar_agarrar = 17
                else
                    global.lanzar_agarrar = newKey
                break
            case 1:
                if ((newKey == 160) || (newKey == 161))
                    global.saltar = 16
                else
                    global.saltar = newKey
                break
            case 2:
                global.spacekey = newKey
                break
            case 3:
                global.pause = newKey
                break
            case 4:
               global.arriba = newKey
                break
            case 5:
                global.abajo = newKey
                break
            case 6:
                global.izquierda = newKey
                break
            case 7:
                global.derecha = newKey
                break
			case 8:
                global.saltar_spin = newKey
                break
        }
        
    }
    sprite_delete(back)
	instance_activate_all()
    for (i = 0; i < 8; i++)
    {
        __background_set( e__BG.HSpeed, i, temp_h[i] )
        __background_set( e__BG.VSpeed, i, temp_v[i] )
    }
    instance_destroy()
}

