switch sprite_index
{
    case spr_SMB3_bowser_fire:
        sprite_index = spr_SMB3_bowser_walk
        alarm[2] = 1
        break
    case spr_SMB3_bowser_turning:
        sprite_index = spr_SMB3_bowser_walk
        direct = (-direct)
        stop_bowser = 0
        hspeed = (0.3 * direct)
        alarm[0] = choose(30, 20, 30)
        alarm[1] = 90
        break
    case spr_SMB3_bowser_search:
        sprite_index = spr_SMB3_bowser_walk
        image_index = 0
        groundpount = 0
        stop_bowser = 0
        hspeed = (0.3 * direct)
        alarm[0] = choose(30, 20, 30)
        alarm[1] = 90
        alarm[11] = 2
        break
}

