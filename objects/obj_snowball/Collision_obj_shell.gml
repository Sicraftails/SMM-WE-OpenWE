var frozen = instance_create(other.x, other.y, obj_enemyfrozen)
if (other.sprite_height < 30 && other.visible == true)
{
    audio_stop_sound(snd_NSMBU_snowball_freeze)
    audio_play_sound(snd_NSMBU_snowball_freeze, 0, false)
    with (instance_create(other.x, other.y, obj_smoke))
    {
        sprite_index = spr_NSMBU_smoke_foo
        image_speed = 0.5
    }
    frozen.sprite = other.sprite_index
    frozen.index = other.image_index
    frozen.enemy = other.object_index
    frozen.direct = other.direct
    if (other.vspeed != 0)
    {
        frozen.enable_gravity = 0
        with (frozen)
        {
            alarm[4] = 120
            alarm[6] = 180
        }
    }
    with (other.id)
        instance_destroy()
    event_user(0)
}


