function scr_marioswim_idle() {
switch global.jugador
{
    case 0:
        return spr_SMB3_mario_frog_swim_idle;
    case 1:
        return spr_SMB3_mario_frog_swim_idle;
    case 2:
        return spr_SMB3_toad_frog_swim_idle;
    case 3:
        return spr_SMB3_toadette_frog_swim_idle;
}
}
