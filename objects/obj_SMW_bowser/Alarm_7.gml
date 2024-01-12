audio_play_sound(snd_flames, 0, false)
state = 6
if (direct == 1)
{
    with (instance_create((x + 21), (y - 23), obj_bowserfire_up))
    {
        switch other.disup_cont
        {
            case 0:
                hspeed = (0.8 * other.direct)
                break
            case 1:
                hspeed = (0.7 * other.direct)
                break
            case 2:
                hspeed = (0.6 * other.direct)
                break
            case 3:
                hspeed = (0.5 * other.direct)
                break
            case 4:
                hspeed = (0.4 * other.direct)
                last = 1
                pos = (other.x + 224)
                break
        }

        direct = other.direct
    }
}
else
{
    with (instance_create((x - 21), (y - 23), obj_bowserfire_up))
    {
        switch other.disup_cont
        {
            case 0:
                hspeed = (0.8 * other.direct)
                id_cont = 1
                break
            case 1:
                hspeed = (0.7 * other.direct)
                id_cont = 2
                break
            case 2:
                hspeed = (0.6 * other.direct)
                id_cont = 3
                break
            case 3:
                hspeed = (0.5 * other.direct)
                id_cont = 4
                break
            case 4:
                hspeed = (0.4 * other.direct)
                last = 1
                pos = (other.x - 224)
                break
        }

        direct = other.direct
    }
}
if (disup_cont == 4)
{
    disup_cont = 0
    state = 1
    alarm[10] = 10
}
else
{
    disup_cont++
    alarm[7] = 25
}

