///Invincibility logic
var blend;
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
//If Mario exists
if instance_exists(obj_mario)
{

    //Snap to position
    x = obj_mario.x
    y = obj_mario.y

    //Set depth
    depth = -6

    //Make sure Mario is fully invincible
    obj_mario.invincible = -1

}

//Be invisible if neither exists
else
{
    visible = 0
    exit
}

//Otherwise, be visible
visible = 1