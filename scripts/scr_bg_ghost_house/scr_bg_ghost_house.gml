function scr_bg_ghost_house() {
    switch global.apariencia
    {
        case 0:
            if (global.modo_noche == 0)
                return bg_SMB_underground;
            else
                return bg_SMB_ghost_house_night;
            break
        case 1:
            if (global.modo_noche == 0)
                return bg_SMB_underground;
            else
                return bg_SMB_ghost_house_night;
            break
        case 2:
            if (global.modo_noche == 0)
                return bg_ghost_house_1;
            else
                return bg_ghost_house_night;
            break
        case 3:
            if (global.modo_noche == 0)
                return bg_NSMBU_ghost_house_1;
            else
                return bg_NSMBU_ghost_night;
            break
        default:
            return bg_ground;
    }




}
