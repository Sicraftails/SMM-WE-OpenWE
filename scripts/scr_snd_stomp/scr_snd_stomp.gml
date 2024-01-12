function scr_snd_stomp() //gml_Script_scr_snd_stomp
{
    switch global.apariencia
    {
        case 0:
            return snd_step_enemy;
        case 1:
            return snd_step_enemy;
        case 2:
            return snd_stomp;
        case 3:
            return snd_NSMBU_stomp;
    }

}

