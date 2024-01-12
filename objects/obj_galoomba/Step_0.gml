event_inherited()
if (paracaidas = 1)
{
    image_speed = 0.1
    if (global.apariencia = 3)
        anim += 0.5
    else
        anim += 0.15
    switch global.apariencia
    {
        case 0:
            if (object_index = obj_galoomba2)
                sprite_index = spr_SMB_goomba2_float
            else if (object_index = obj_galoomba2_b)
                sprite_index = spr_SMB_goomba2_float_b
            else if (object_index = obj_galoomba_b)
                sprite_index = spr_SMB_goomba_float_b
            else
                sprite_index = spr_SMB_goomba_float
            break
        case 1:
            if (object_index = obj_galoomba2)
                sprite_index = spr_SMB3_goomba2_float
            else if (object_index = obj_galoomba2_b)
                sprite_index = spr_SMB3_goomba2_float_b
            else if (object_index = obj_galoomba_b)
                sprite_index = spr_SMB3_goomba_float_b
            else
                sprite_index = spr_SMB3_goomba_float
            break
        case 2:
            if (object_index = obj_galoomba2)
                sprite_index = spr_goomba2_float
            else if (object_index = obj_galoomba2_b)
                sprite_index = spr_goomba2_float_b
            else if (object_index = obj_galoomba_b)
                sprite_index = spr_goomba_float_b
            else
                sprite_index = spr_goomba_float
            break
    }

    direct = -1
    if (x > (xstart + 16))
    {
        if (hspeed < -0.5)
            hspeed = -0.5
        else
            hspeed -= 0.015
    }
    else if (x < (xstart - 16))
    {
        if (hspeed > 0.5)
            hspeed = 0.5
        else
            hspeed += 0.015
    }
    if (gravity = 0)
    {
        switch global.apariencia
        {
            case 0:
                if (object_index = obj_galoomba2)
                    sprite_index = spr_SMB_goomba2
                else if (object_index = obj_galoomba2_b)
                    sprite_index = spr_SMB_goomba2_b
                else if (object_index = obj_galoomba_b)
                    sprite_index = spr_SMB_goomba_b
                else
                    sprite_index = spr_SMB_goomba
                break
            case 1:
                if (object_index = obj_galoomba2)
                    sprite_index = spr_SMB3_goomba2
                else if (object_index = obj_galoomba2_b)
                    sprite_index = spr_SMB3_goomba2_b
                else if (object_index = obj_galoomba_b)
                    sprite_index = spr_SMB3_goomba_b
                else
                    sprite_index = spr_SMB3_goomba
                break
            case 2:
                if (object_index = obj_galoomba2)
                    sprite_index = spr_galoomba2
                else if (object_index = obj_galoomba2_b)
                    sprite_index = spr_galoomba2_b
                else if (object_index = obj_galoomba_b)
                    sprite_index = spr_galoomba_b
                else
                    sprite_index = spr_galoomba
                break
        }

        instance_create(x, y, obj_paracaidas_go)
        paracaidas = 0
        anim = 0
        if (global.apariencia = 3)
            image_speed = 0.5
        else
            image_speed = 0.15
        hspeed = 0
        alarm[10] = 10
    }
	var oscillationSpeed = -0.1;
	var elapsedTime = (current_time - startTime) / room_speed;

	// Calcola l'angolo oscillante tra -30 e 30 gradi
	var oscillation = (sin(oscillationSpeed * elapsedTime) * 12);
	image_angle = oscillation;	
}
else
	image_angle = 0
if (wings = 1 && paracaidas = 0)
{
    if (gravity = 0)
    {
        if (object_index = obj_galoomba2 
		or object_index = obj_galoomba2_b)
		&& cambio_gombaya = 1
        {
            hspeed = (-hspeed)
            cambio_gombaya = 0
        }
        if (jumping > 0 && jumping < 4)
        {
            jumping++
            if (swimming = 0)
                vspeed = -2.5
            else
                vspeed = -1.25
        }
        else if (jumping = 4)
        {
            jumping = 5
            if (swimming = 0)
                vspeed = -4
            else
                vspeed = -2
        }
        else if (jumping = 5)
        {
            jumping = 0
            cambio_gombaya = 1
            alarm[0] = 120
        }
    }
}