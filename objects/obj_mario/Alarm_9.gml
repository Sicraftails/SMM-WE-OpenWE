/// @description Create Mario's underwater bubble effect
alarm[9] = (45 + random_range(-15, 15))
if (isswim == 1)
    instance_create(x, bbox_top, obj_bubble)


