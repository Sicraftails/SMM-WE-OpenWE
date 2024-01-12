var overlap = collision_rectangle(bbox_left, bbox_top, bbox_right, (bbox_bottom - 4), obj_enemyparent, 0, 1)
if (overlap && overlap.visible == true && overlap.object_index != obj_grinder && overlap.object_index != obj_angrysun && overlap.object_index != obj_banzaibill && overlap.object_index != obj_bulletbill && overlap.object_index != obj_cannonball && overlap.object_index != obj_cannonball_red && overlap.object_index != obj_boo && overlap.object_index != obj_podoboo && overlap.object_index != obj_lakitu)
{
    if (((bbox_left + bbox_right) * 0.5) > ((overlap.bbox_left + overlap.bbox_right) * 0.5) || (((bbox_left + bbox_right) * 0.5) == ((overlap.bbox_left + overlap.bbox_right) * 0.5) && id > overlap.id))
        hspeed = abs(hspeed)
    else
        hspeed = (-abs(hspeed))
}
var overlap2 = collision_rectangle(bbox_left, bbox_top, bbox_right, (bbox_bottom - 4), obj_enemyparent_held, 0, 1)
if (overlap2 && overlap2.inmune == 0)
{
    if (((bbox_left + bbox_right) * 0.5) > ((overlap2.bbox_left + overlap2.bbox_right) * 0.5) || (((bbox_left + bbox_right) * 0.5) == ((overlap2.bbox_left + overlap2.bbox_right) * 0.5) && id > overlap2.id))
        hspeed = abs(hspeed)
    else
        hspeed = (-abs(hspeed))
}
switch object_index
{
    case obj_monty_chase:
        var hs_water = 0.6
        var hs_normal = 1.5
        break
    case obj_chain_chomp_free:
        hs_water = 0.5
        hs_normal = 1
        break
    case obj_chain_chomp_free_b:
        hs_water = 0.5
        hs_normal = 1
        break
    case obj_egg:
        hs_water = 0.5
        hs_normal = 1
        break
    case obj_egg_red:
        hs_water = 0.5
        hs_normal = 1
        break
    default:
        hs_water = 0.3
        hs_normal = 0.5
}

if (object_index != obj_grinder)
{
    if (global.bg_level == "underwater" || (global.bg_level == "sky" && global.modo_noche == 1) || (global.bg_level == "airship" && global.modo_noche == 1))
    {
        if (direct == 1 && hspeed > hs_water)
        {
            hspeed -= 0.08
            if (hspeed <= hs_water)
                hspeed = hs_water
        }
        else if (direct == -1 && hspeed < (-hs_water))
        {
            hspeed += 0.08
            if (hspeed >= (-hs_water))
                hspeed = (-hs_water)
        }
    }
    else if (direct == 1 && hspeed > hs_normal)
    {
        hspeed -= 0.08
        if (hspeed <= hs_normal)
            hspeed = hs_normal
    }
    else if (direct == -1 && hspeed < (-hs_normal))
    {
        hspeed += 0.08
        if (hspeed >= (-hs_normal))
            hspeed = (-hs_normal)
    }
}


