event_user(0)
audio_stop_sound(scr_snd_break())
audio_play_sound(scr_snd_break(), 0, false)
with (instance_create((x + 4), (y + 4), obj_shard))
{
    motion_set(45, 6)
    sprite_index = other.shard
    image_index = other.image_index
    dir = 1
}
with (instance_create((x + 4), (y + 12), obj_shard))
{
    motion_set(60, 6)
    sprite_index = other.shard
    image_index = other.image_index
    dir = 1
}
with (instance_create((x + 12), (y + 12), obj_shard))
{
    motion_set(120, 6)
    sprite_index = other.shard
    image_index = other.image_index
    dir = 0
}
with (instance_create((x + 12), (y + 4), obj_shard))
{
    motion_set(135, 6)
    sprite_index = other.shard
    image_index = other.image_index
    dir = 0
}
instance_destroy()

