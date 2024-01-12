sprite_index = soplete[0]
soplete_num = 0
image_speed = 0.3
invisible = 0
with (obj_soplete)
{
    if (!outside_view())
        other.sound = 1
}
if (instance_exists(obj_soplete) && sound == 1)
{
    audio_stop_sound(scr_snd_soplete())
    audio_play_sound(scr_snd_soplete(), 0, false)
}
sound = 0

