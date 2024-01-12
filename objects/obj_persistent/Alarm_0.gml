/// @description Stop fading to black

//Set mode to fade from black
mode = 0

//Begin fading from black
if (!instance_exists(obj_mariostart))
{
    done = 0
    instance_activate_all()
}

//Delete the screenshot
if sprite_exists(back)
    sprite_delete(back)

