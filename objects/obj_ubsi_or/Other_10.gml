my_object = instance_create(x, y, object)
with (my_object)
{
    sprite_index = other.sprite
    image_speed = other.velocidad
    visible = false
    sonido = other.sonido
}
init_shake(1)
can_active = 1

