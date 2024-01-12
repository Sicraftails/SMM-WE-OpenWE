with (instance_create(other.x, (other.y + 8), obj_smoke))
{
    sprite_index = spr_NSMBU_smoke_foo
    image_speed = 0.5
}
event_user(0)
with (other.id)
    instance_destroy()

