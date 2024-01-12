var yosh;
if (other.state == 2 && other.holding == 0 && other.vspeed > 0 && other.visible == true && global.powerup != -82 && other.bbox_bottom < ((bbox_top - vspeed) + 5))
{
    with (obj_mario)
    {
        x = other.x
        y = (other.y - 16)
        direct = other.direct
        holding = 3
    }
    if (color == 0)
        yosh = obj_yoshi2
    else if (color == 1)
        yosh = obj_yoshi_red
	else if (color == 2)
        yosh = obj_yoshi_blue
    with (instance_create(x, y, yosh))
    {
        mouthholder = other.mouthholder
        mouthsprite = other.mouthsprite
    }
    audio_stop_sound(snd_yoshi)
    audio_play_sound(snd_yoshi, 0, false)
    instance_destroy()
}
