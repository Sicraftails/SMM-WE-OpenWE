if (swimming == 1)
    exit
if instance_exists(obj_player_warp)
    alarm[5] = 240
else
{
    audio_stop_sound(snd_NSMBU_estalactita_break)
    audio_play_sound(snd_NSMBU_estalactita_break, 0, false)
    with (instance_create(other.x, other.y, obj_smoke))
    {
        sprite_index = spr_NSMBU_smoke_foo
        image_speed = 0.5
    }
    with (instance_create((x + 6), (y + 8), obj_shard))
    {
        motion_set(45, 4)
        sprite_index = spr_frozenblock_break
        image_index = 0
        dir = 1
    }
    with (instance_create((x + 6), y, obj_shard))
    {
        motion_set(60, 4)
        sprite_index = spr_frozenblock_break
        image_index = 1
        dir = 1
    }
    with (instance_create((x - 6), y, obj_shard))
    {
        motion_set(120, 4)
        sprite_index = spr_frozenblock_break
        image_index = 2
        dir = 0
    }
    with (instance_create((x - 6), (y + 8), obj_shard))
    {
        motion_set(135, 4)
        sprite_index = spr_frozenblock_break
        image_index = 3
        dir = 0
    }
    if (enemy == obj_shell_held)
    {
        object = instance_create(x, (y - 2), obj_shell)
        object.direct = direct
        object.sprite_index = sprite
    }
    else if (enemy == obj_piranhaplant)
    {
        object = instance_create(x, (y - 2), obj_jumppiranha)
        object.direct = direct
        object.sprite_index = sprite
    }
    else
    {
        object = instance_create(x, (y - 2), enemy)
        object.direct = direct
    }
    instance_destroy()
}


