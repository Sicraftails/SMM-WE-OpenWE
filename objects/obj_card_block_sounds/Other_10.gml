if instance_exists(obj_card_item)
{
    with (obj_card_item)
    {
        obj_sonidos = obj
        obj_draw_sonidos = obj_draw
        bg_color_sonidos = bg_color
        disabled_sonidos = disabled
    }
    with (obj_card_item)
    {
        switch value
        {
            case 0:
                if (global.ubsi == 0)
                {
                    obj = obj_ubsi_snd_res
                    obj_draw = 0
                }
                else
                {
                    obj = obj_ahh_snd_res
                    obj_draw = 1
                }
                bg_color = 0
                break
            case 1:
                if (global.risas == 0)
                {
                    obj = obj_risas_snd_res
                    obj_draw = 2
                }
                else
                {
                    obj = obj_bebe_snd_res
                    obj_draw = 3
                }
                bg_color = 0
                break
            case 2:
                if (global.serpentina == 0)
                {
                    obj = obj_serpentina_snd_res
                    obj_draw = 4
                }
                else
                {
                    obj = obj_aplausos_snd_res
                    obj_draw = 5
                }
                bg_color = 0
                break
            case 3:
                if (global.uhh == 0)
                {
                    obj = obj_uhh_snd_res
                    obj_draw = 6
                }
                else
                {
                    obj = obj_auh_snd_res
                    obj_draw = 7
                }
                bg_color = 1
                break
            case 4:
                if (global.bocina == 0)
                {
                    obj = obj_bocina_snd_res
                    obj_draw = 8
                }
                else
                {
                    obj = obj_cerdito_snd_res
                    obj_draw = 9
                }
                bg_color = 1
                break
            case 5:
                if (global.bombilla == 0)
                {
                    obj = obj_bombilla_snd_res
                    obj_draw = 10
                }
                else
                {
                    obj = obj_error_snd_res
                    obj_draw = 11
                }
                bg_color = 2
                break
            case 6:
                if (global.nota == 0)
                {
                    obj = obj_nota_musical_snd_res
                    obj_draw = 12
                }
                else
                {
                    obj = obj_remolino_snd_res
                    obj_draw = 13
                }
                bg_color = 2
                break
            case 7:
                if (global.fuegos == 0)
                {
                    obj = obj_fuegos_snd_res
                    obj_draw = 14
                }
                else
                {
                    obj = obj_destello_snd_res
                    obj_draw = 15
                }
                bg_color = 3
                break
            case 8:
                if (global.nota == 0)
                {
                    obj = obj_golpe_gato_snd_res
                    obj_draw = 16
                }
                else
                {
                    obj = obj_chisporreteo_snd_res
                    obj_draw = 17
                }
                bg_color = 1
                break
            case 9:
                obj = obj_n64_snd_res
                obj_draw = 18
                bg_color = 4
                break
            case 10:
                obj = obj_bonus_snd_res
                obj_draw = 20
                bg_color = 4
                break
            case 11:
                obj = obj_boss_snd_res
                obj_draw = 22
                bg_color = 4
                break
        }

    }
}
