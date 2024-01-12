switch global.apariencia
{
    case 0:
        sprite_index = spr_SMB_floruga_head
        sprite_wings = spr_SMB_wings
        s_jump_floruga = snd_step_enemy
        break
    case 1:
        sprite_index = spr_SMB3_floruga_head
        sprite_wings = spr_SMB3_wings
        s_jump_floruga = snd_step_enemy
        break
    case 2:
        sprite_index = spr_floruga_head
        sprite_wings = spr_wings
        s_jump_floruga = snd_kick
        break
    case 3:
        sprite_index = spr_NSMBU_floruga_head
        sprite_wings = spr_NSMBU_wings_enemigos
        s_jump_floruga = snd_jump_floruga
        break
}
hardness = 1
stomp = 5
edible = 2
wings = 0
wings_anim = 0
jump_wings = 0
paracaidas = 0
modo_lava = 0
dead_h = 0
direct = -1
innave = 0
swimming = 0
apilar = 0
if (global.apariencia == 3)
    image_speed = 0.5
else
    image_speed = 0.125
alarm[10] = 2
state = 0
color = 0

#region CREATE BODY PARTS

	//Body parts count
	seg = 5;

	//Create anatomy
	for (var b = 1; b < seg; b++) {

	    mybody[b] = instance_create_depth(xstart, ystart, depth, obj_floruga_body);
		if (global.apariencia == 3)
		{
			mybody[b].image_speed = 0.5
			mybody[b].image_index = (4 * b)
		}
		else
		{
			mybody[b].image_speed = 0.125
			mybody[b].image_index = b
		}
	    mybody[b].depth = b;
	    mybody[b].parent = id;
	    if (b = 1)
	        mybody[b].prevsegment = other; //Snap to the head.
	    else
			mybody[b].prevsegment = mybody[b-1] //Snap to other consecutive parts.
	}

	//Make body structure
	closeness = 16;
	amount_previous = 85;
	closeness_h = 16;
	closeness_v = 16;

	//Make body coordinate queue
	for (i=1; i<=amount_previous; i++;) {

	    oldx[i] = x;
	    oldy[i] = y;
	}
#endregion
