if (sprite_index != spr_SMB_thwomp && sprite_index != spr_rocky_idle && sprite_index != spr_rocky_idle2 && sprite_index != spr_rocky_throw && sprite_index != spr_SMB_thwomp_h && sprite_index != spr_SMB3_thwomp && sprite_index != spr_SMB3_thwomp_h && sprite_index != spr_thwomp && sprite_index != spr_thwomp_h && sprite_index != spr_NSMBU_thwomp && sprite_index != spr_NSMBU_thwomp_h && sprite_index != spr_grrrol_old && sprite_index != spr_spiny_wings && sprite_index != spr_bulletbill_red && sprite_index != spr_billbanzai_red && sprite_index != spr_billbanzai_red_i && sprite_index != spr_NSMBU_banzaibill && sprite_index != spr_SMB3_banzaibill && sprite_index != spr_SMB_banzaibill && sprite_index != spr_SMB3_bulletbill_red && sprite_index != spr_SMB3_bulletbill && sprite_index != spr_SMB_bulletbill && sprite_index != spr_SMB_bulletbill_red && sprite_index != spr_SMB_cannonball && sprite_index != spr_SMB3_cannonball && sprite_index != spr_cannonball && sprite_index != spr_NSMBU_cannonball)
{
    if (global.apariencia == 3)
    {
        image_speed = 1
        audio_stop_sound(snd_NSMBU_bowser_castle1)
        audio_play_sound(snd_NSMBU_bowser_castle1, 0, false)
    }
    else
        image_speed = 0.25
}

