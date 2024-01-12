if (global.apariencia == 3)
{
    with (instance_create(x, y, obj_smoke))
        sprite_index = spr_NSMBU_ppress_anim
}
audio_play_sound(scr_snd_pwarning(), 0, false)
instance_create(x, y, obj_pswitch_press)
with (obj_levelmanager)
{
    pwarning = 0
    alarm[10] = 600
    event_user(1)
}
instance_destroy()
