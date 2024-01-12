global.pink_coins++
if (global.pink_coins == global.pink_coins_total)
    audio_play_sound(snd_pink_coin5, 0, false)
else
{
    switch global.pink_coins
    {
        case 1:
            audio_play_sound(snd_pink_coin1, 0, false)
            break
        case 2:
            audio_play_sound(snd_pink_coin2, 0, false)
            break
        case 3:
            audio_play_sound(snd_pink_coin3, 0, false)
            break
        case 4:
            audio_play_sound(snd_pink_coin4, 0, false)
            break
    }

}
event_user(1)
vspeed = -3
gravity = 0.2
with (instance_create(x, y, obj_score))
{
    visible = false
    event_user(0)
}
if (global.pink_coins == global.pink_coins_total)
{
    with (instance_create(x, y, obj_smoke))
    {
        image_speed = 0.26
        sprite_index = spr_pink_coin_get
    }
}
else
    lock = 1
if (global.apariencia == 3)
    image_speed = 1
else
    image_speed = 0.4

