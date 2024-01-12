if (instance_exists(obj_mario) && obj_mario.state == 1)
{
    audio_play_sound(snd_kuriboshoe_steps, 0, false)
    alarm[0] = 30
}
else
    alarm[0] = 2
