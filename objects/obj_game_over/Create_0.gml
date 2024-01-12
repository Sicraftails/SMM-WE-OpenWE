audio_play_sound(snd_gameover, 0, false)
if (obj_persistent.modo_android == 1 && global.controles_tactiles == 1)
{
    with (obj_persistent)
    {
        event_user(4)
        event_user(5)
    }
}
image_speed = 0.4
alarm[0] = 360

