image_speed = 0
image_index = global.apariencia
yview = (y + 32)
ready = 0
if instance_exists(obj_mario)
    obj_mario.visible = false
sprite = -4
index = 0
if (global.apariencia == 3)
    sprite_break = spr_NSMBU_smoke_snowball
else
    sprite_break = spr_frozenblock_break
direct = 1
helmet = 0
helmet_sprite = spr_SMB_helmet_small
helmet_index = 0
helmet_y = 0
cap_sprite = spr_cap_stay_start
cap_index = 0
cap_x = 0
cap_y = 0
shake = 0
swimming = 0
rotacion = 0
alarm[0] = 120
alarm[1] = 180


