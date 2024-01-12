image_speed = 0
image_index = 0
x = camera_get_view_x(view_get_camera(0))
direct = 1
anim_lava = 0
image_xscale = 24
if instance_exists(obj_card_bout)
    y = obj_card_bout.pos_y
mytopid = instance_create(camera_get_view_x(view_get_camera(0)), y, obj_lava_water_drybones)
mytopid.image_xscale = 24
pos_y = y
pos_y_limit = y
img_sprite = spr_lava_down
up_down = 0
not_move = 0
bajar = 0
b_bajar = 0
