image_speed = 0
image_index = global.apariencia
direct = 1
x_scale = 0.1
y_scale = 0.1
gravity = 0
if instance_exists(obj_mario)
    move_towards_point(obj_mario.x, (obj_mario.y + 16), 1)
else
    move_towards_point(obj_levelmanager.x, obj_levelmanager.y, 1)

