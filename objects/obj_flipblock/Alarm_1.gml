vspeed = 0
y = ystart
if (global.apariencia == 2)
{
    with (instance_create(x, y, obj_flipblock_anim))
        convertirse = other.convertirse
    instance_destroy()
}
else
    ready = 0

