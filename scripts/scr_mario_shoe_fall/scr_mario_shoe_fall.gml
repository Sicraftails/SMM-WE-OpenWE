function scr_mario_shoe_fall()
{
    switch global.jugador
    {
        case 0:
            return spr_SMB3_mario_raccoon_shoe_fall;
        case 1:
            return spr_SMB3_luigi_raccoon_shoe_fall;
        case 2:
            return spr_SMB3_toad_raccoon_shoe_fall;
        case 3:
            return spr_SMB3_toadette_raccoon_shoe_fall;
    }
}

