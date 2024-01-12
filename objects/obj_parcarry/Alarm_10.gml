if (enemy == 1)
{
    if (obj == obj_snow_ball_held)
    {
        sprite_index = spr_SMB_spike_ball
        image_index = 2
    }
    else if (obj == obj_banzaibill)
        sprite_index = spr_SMB_banzaibill
    else if (obj == obj_galoomba)
        sprite_index = spr_SMB_goomba_deads
	else if (obj == obj_galoomba_b)
        sprite_index = spr_SMB_goomba_b_deads
    else if (obj == obj_galoomba2)
        sprite_index = spr_SMB_goomba2_deads
    else if (obj == obj_bobomb)
        sprite_index = spr_SMB_bobomb_deads
    else if (obj == obj_bulletbill)
        sprite_index = spr_SMB_bulletbill_deads
    else if (obj == obj_bulletbull_red)
        sprite_index = spr_SMB_bulletbill_red
    else if (obj == obj_koopa)
        sprite_index = spr_SMB_koopa_deads
	else if (obj == obj_koopa_b)
        sprite_index = spr_SMB_koopa_b_deads
	else if (obj == obj_koopa_red)
        sprite_index = spr_SMB_koopa_red_deads
	else if (obj == obj_koopa_red_b)
        sprite_index = spr_SMB_koopa_red_b_deads
	else if (obj == obj_piranhaplant)
        sprite_index = spr_SMB_pplant_deads
	else if (obj == obj_buzzybeetle)
        sprite_index = spr_SMB_buzzybeetle_deads
	else if (obj == obj_rocangrejo)
        sprite_index = spr_rocangrejo_deads_1
    else
        sprite_index = sprite
    if (obj != obj_snow_ball_held && obj != obj_bulletbull_red)
    {
        if (global.bg_level == "castle" || global.bg_level == "underground" || global.bg_level == "ghost" || global.modo_noche == 1)
            image_index = 1
        else
            image_index = 0
    }
    altura = (sprite_width / 2)
}
else if (hold == 1)
{
    if (obj == obj_block_pow_hold)
        sprite_index = spr_SMB_pow
    else
        sprite_index = sprite
    if (global.bg_level == "castle" || global.bg_level == "underground" || global.bg_level == "ghost" || global.modo_noche == 1)
        image_index = 1
    else
        image_index = 0
    altura = (sprite_width / 2)
}
else if (cloud == 1)
{
    sprite_index = spr_SMB_nube
    image_speed = 0.4
    image_index = 0
    visible = true
}
