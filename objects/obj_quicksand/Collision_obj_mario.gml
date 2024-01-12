other.stompstyle = 0
if (other.jumpnow != 1 && keyboard_check_pressed(vk_shift))
{
    audio_play_sound(snd_jump, 0, false)
    other.vspeed = -3.85
    other.jumpnow = 1
    keyboard_clear(vk_shift)
}
if (other.vspeed > 0.5)
    other.vspeed = 0.5

