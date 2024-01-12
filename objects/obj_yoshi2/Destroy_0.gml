global.yoshi = 0
audio_stop_sound(snd_yoshi_lick)
with (obj_tongue)
    instance_destroy()
if instance_exists(obj_mario)
{
    obj_mario.holding = 0
    obj_mario.visible = true
}
