audio_stop_sound(scr_snd_coin())
audio_play_sound(scr_snd_coin(), 0, false)
global.coins++
with (instance_create(x, y, obj_score))
{
    event_user(0)
    visible = false
}
if (global.apariencia != 0)
    instance_create(x, y, obj_sparkles_coin)
instance_destroy()
