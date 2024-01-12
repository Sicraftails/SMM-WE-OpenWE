function scr_jump() {
    if (global.apariencia == 0)
    {
        switch global.powerup
        {
            case 1:
                return snd_SMB_bigjump;
            case 2:
                return snd_SMB_bigjump;
            case -50:
                return snd_SMB_jump_superflower;
            case -77:
                return snd_SMB_jump_supermushroom;
            case -78:
                return snd_SMB_hen_jump;
            case -85:
                return snd_SMB_link_jump;
            default:
                return snd_SMB_smalljump;
        }

    }
    else if (global.apariencia == 1)
        return snd_SMB3_jump;
    else if (global.apariencia == 2)
        return snd_jump;
    else if (global.apariencia == 3)
        return snd_NSMBU_jump;
}
