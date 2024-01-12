/// @description Star effects
if (global.effect_star == 1){
switch global.apariencia
{
    case 3:
        if (cp_cont == 0)
        {
            flashAlpha -= 0.05
            if (flashAlpha < 0.6)
            {
                cp_cont = 1
                if (cp < 1)
                    cp++
                else
                    cp = 0
            }
        }
        else
        {
            flashAlpha += 0.05
            if (flashAlpha > 0.8)
                cp_cont = 0
        }
        break
    default:
        if (cp_cont == 0)
        {
            flashAlpha -= 0.15
            if (flashAlpha < 0.3)
            {
                cp_cont = 1
                if (cp < 2)
                    cp++
                else
                    cp = 0
            }
            break
        }
        else
        {
            flashAlpha += 0.15
            if (flashAlpha > 0.9)
                cp_cont = 0
        }
}
blend_star = color[cp]
}




