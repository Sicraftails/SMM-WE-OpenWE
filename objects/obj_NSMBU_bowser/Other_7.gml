switch sprite_index
{
    case spr_NSMBU_bowser_fire:
        fire_anim = 0
        alarm[1] = choose(180, 90, 120)
        break
    case spr_NSMBU_bowser_fire_up:
        multi_fire = 0
        alarm[3] = choose(600, 720, 600, 480)
        break
}

