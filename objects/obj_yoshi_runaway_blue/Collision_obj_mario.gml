if (ready && other.state == 2 && other.holding == 0 && other.visible == true && other.bbox_bottom < ((bbox_top - vspeed) + 5))
{
    with (obj_mario)
    {
        x = other.x
        y = (other.y - 18)
        direct = other.direct
        holding = 3
    }
    with (instance_create(x, y, obj_yoshi_blue))
    {
        mouthholder = other.mouthholder
        mouthsprite = other.mouthsprite
    }
    audio_play_sound(snd_yoshi, 0, false)
    instance_destroy()
}
