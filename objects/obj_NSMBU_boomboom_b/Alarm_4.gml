if (vspeed == 0)
{
    sprite_index = spr_NSMBU_boomboom_atack_b
    image_speed = 0.5
    audio_play_sound(snd_boomboom_grito3, 0, false)
    hspeed = 0
    alarm[1] = -1
    alarm[9] = -1
    alarm[10] = -1
    alarm[11] = -1
    alarm[3] = -1
    alarm[4] = -1
}
else
    alarm[4] = choose(120, 320, 120, 120)

