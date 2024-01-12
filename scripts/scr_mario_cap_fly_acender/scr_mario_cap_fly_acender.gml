function scr_mario_cap_fly_acender() {
switch global.jugador
{
    case 0:
        return spr_mario_cap_fly_acender;
    case 1:
        return spr_luigi_cap_fly_acender;
    case 2:
        return spr_toad_cap_fly_acender;
    case 3:
        return spr_toadette_cap_fly_acender;
}
}
