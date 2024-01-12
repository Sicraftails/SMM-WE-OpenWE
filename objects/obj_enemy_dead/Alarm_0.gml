if (sprite_index != spr_cannonball && sprite_index != spr_SMB3_cannonball && sprite_index != spr_SMB_cannonball && sprite_index != spr_banzaibill && sprite_index != spr_bulletbill && sprite_index != spr_SMB3_bulletbill && sprite_index != spr_SMB_bulletbill && sprite_index != spr_bulletbill_red && sprite_index != spr_SMB3_bulletbill_red && sprite_index != spr_SMB_bulletbill_red && sprite_index != spr_blooper && sprite_index != spr_SMB3_blooper && sprite_index != spr_SMB_blooper && sprite_index != spr_NSMBU_blooper && sprite_index != spr_SMB_link_arrow)
{
    if (sprite_index == spr_podoboo || sprite_index == spr_SMB3_podoboo || sprite_index == spr_SMB_podoboo || sprite_index == spr_NSMBU_bowserjr_dead)
        var spd = 5
    else
        spd = 4
}
else
    spd = 0.1
if (swimming == 1 || modo_lava == 1)
    spd = (spd / 2.5)
vspeed = (-spd)


