function scr_swim() {
    switch global.apariencia
    {
        case 0:
            return snd_step_enemy;
        case 1:
            return snd_step_enemy;
        case 2:
            return snd_swim;
        case 3:
            return snd_NSMBU_swim;
    }




}
