if (global.powerup != 3)
    exit
if (sprite_index == scr_mario_cap_fly())
{
    image_speed = 0
    image_index = 2
}
else if (sprite_index == scr_mario_cap_fly_acender())
{
    if (fly_high == 6)
    {
        vspeed = -4.8
        fly_high = 3
    }
    else if (fly_high == 3)
        vspeed = -2.8
    jumpnow = 1
    audio_play_sound(snd_mariocap_rise, 0, false)
    sprite_index = scr_mario_cap_fly()
}
else if (sprite_index == scr_mario_cap_fly_decender())
{
    image_speed = 0
    image_index = 2
}
else if (sprite_index == scr_mario_cap_fly_acender_decender())
    sprite_index = scr_mario_cap_fly_acender()


