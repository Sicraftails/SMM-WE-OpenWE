image_index = global.apariencia
if (poder_girar == 1)
{
    if (rotacion >= (R + 90))
    {
        rotacion = (R + 90)
        R = rotacion
        poder_girar = 0
    }
    else
        rotacion += 10
}

