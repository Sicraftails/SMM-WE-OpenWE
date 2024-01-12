var smoke1, smoke2;
smoke1 = instance_create((x + (4 * direct)), (y + 4), obj_smoke)
smoke2 = instance_create((x + (4 * direct)), (y + 4), obj_smoke)
smoke1.sprite_index = spr_NSMBU_smoke_floruga
smoke2.sprite_index = spr_NSMBU_smoke_floruga
smoke1.depth = (depth - 1)
smoke2.depth = (depth - 1)
smoke2.direct = -1
alarm[2] = 80

