if ((global.bg_level == "forest" and (global.apariencia == 3 or global.apariencia == 0)) || global.bg_level == "castle" || global.bg_level == "underground" || global.bg_level == "ghost" || global.modo_noche == 1)
{
    sprite = spr_letters_white
    dark = 1
}
else
{
    sprite = spr_letters
    dark = 0
}
if (ready == 1)
{
    if instance_exists(obj_mario)
    {
        with (obj_mario)
            disablecontrols = 1
    }
    anim[cont] += 35
    if (anim[cont] > 196)
    {
        if (cont == 11)
        {
            alarm[1] = 10
            ready = 2
        }
        cont++
    }
}

