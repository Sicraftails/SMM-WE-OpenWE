function scr_mario_cap_fly() {
switch global.jugador
{
    case 0:
        return spr_mario_cap_fly;
    case 1:
        return spr_luigi_cap_fly;
    case 2:
        return spr_toad_cap_fly;
    case 3:
        return spr_toadette_cap_fly;
}

}
