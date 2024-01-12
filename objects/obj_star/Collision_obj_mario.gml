if (instance_exists(obj_mario_transform2) || instance_exists(obj_frozenmario))
    exit
with (instance_create((x - 8), y, obj_score))
    event_user(3)
if instance_exists(obj_invincibility)
{
    with (obj_invincibility)
        alarm[0] = 600
}
else
{
    instance_create(x, y, obj_invincibility)
    if (obj_levelmanager.switchon == 0)
        audio_play_sound(scr_snd_starman(), 99, true)
    with (obj_levelmanager)
        alarm[1] = 1
}
audio_play_sound(scr_snd_powerup(), 0, false)
if (global.apariencia == 3)
{
    audio_stop_sound(snd_NSMBU_get_start1)
    audio_stop_sound(snd_NSMBU_get_start2)
    audio_play_sound(choose(snd_NSMBU_get_start1, snd_NSMBU_get_start2), 0, false)
}
instance_destroy()

