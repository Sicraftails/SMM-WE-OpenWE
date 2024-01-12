var solid_dead = collision_rectangle(x, (bbox_top + 2), x, (bbox_top + 2), obj_solid, 1, 0)
var solidtop_dead = collision_rectangle((bbox_left + 3), bbox_bottom, (bbox_right - 3), (bbox_bottom + 1), obj_solidtop, 0, 0)
var pinchos_dead = collision_rectangle((bbox_left + 3), bbox_bottom, (bbox_right - 3), (bbox_bottom + 1), obj_pinchos, 0, 0)
var solid_right = collision_rectangle((x + 6), (bbox_top + 2), (x + 6), (y + 30), obj_solid, 1, 0)
var solid_left = collision_rectangle((x - 6), (bbox_top + 2), (x - 6), (y + 30), obj_solid, 1, 0)
var bullet_right = collision_rectangle((x + 6), (bbox_top + 2), (x + 6), (y + 30), obj_bullebill_base, 1, 0)
var bullet_left = collision_rectangle((x - 6), (bbox_top + 2), (x - 6), (y + 30), obj_bullebill_base, 1, 0)
var muncher_right = collision_rectangle((x + 6), (bbox_top + 2), (x + 6), (y + 30), obj_muncher, 1, 0)
var muncher_left = collision_rectangle((x - 6), (bbox_top + 2), (x - 6), (y + 30), obj_muncher, 1, 0)
var pinchos_right = collision_rectangle((x + 6), (bbox_top + 2), (x + 6), (y + 30), obj_pinchos, 1, 0)
var pinchos_left = collision_rectangle((x - 6), (bbox_top + 2), (x - 6), (y + 30), obj_pinchos, 1, 0)
var cannon_right = collision_rectangle((x + 6), (bbox_top + 2), (x + 6), (y + 30), obj_cannon, 1, 0)
var cannon_left = collision_rectangle((x - 6), (bbox_top + 2), (x - 6), (y + 30), obj_cannon, 1, 0)
var oneway_right = collision_rectangle((x + 5), (bbox_top + 2), (x + 6), (y + 30), obj_onewaygate_left, 1, 0)
var oneway_left = collision_rectangle((x - 5), (bbox_top + 2), (x - 6), (y + 30), obj_onewaygate_right, 1, 0)
if (solid_dead && solid_dead.vspeed > 0 && solid_dead.y < (y + 16) && vspeed == 0 && gravity == 0 && (solidtop_dead || pinchos_dead))
{
    if (object_index == obj_bobomb || object_index == obj_bobomb_ready)
    {
        instance_create(x, y, obj_explosion)
        instance_destroy()
    }
    else
        event_user(0)
}
else if ((solid_right || bullet_right || muncher_right || pinchos_right || cannon_right || oneway_right) && ((solid_left && solid_left.hspeed > 0) || (muncher_left && muncher_left.hspeed > 0) || (cannon_left && cannon_left.hspeed > 0)))
{
    if (object_index == obj_bobomb || object_index == obj_bobomb_ready)
    {
        instance_create(x, y, obj_explosion)
        instance_destroy()
    }
    else
        event_user(0)
}
else if ((solid_left || bullet_left || muncher_left || pinchos_left || cannon_left || oneway_left) && ((solid_right && solid_right.hspeed < 0) || (muncher_right && muncher_right.hspeed < 0) || (cannon_right && cannon_right.hspeed < 0)))
{
    if (object_index == obj_bobomb || object_index == obj_bobomb_ready)
    {
        instance_create(x, y, obj_explosion)
        instance_destroy()
    }
    else
        event_user(0)
}
if (instance_exists(obj_mario) && global.powerup == -80 && stomp != 1 && stomp != 2 && stomp != 5)
{
    var check = collision_rectangle(obj_mario.bbox_left, (obj_mario.bbox_bottom - 1), obj_mario.bbox_right, (obj_mario.bbox_bottom + 1), obj_solidtop, 0, 0)
    var check_pinchos = collision_rectangle(obj_mario.bbox_left, (obj_mario.bbox_bottom - 1), obj_mario.bbox_right, (obj_mario.bbox_bottom + 1), obj_pinchos, 0, 0)
    var check_solid = collision_rectangle(obj_mario.bbox_left, (obj_mario.bbox_top - 2), obj_mario.bbox_right, obj_mario.bbox_top, obj_solid, 1, 0)
    var check_oneway = collision_rectangle(obj_mario.bbox_left, (obj_mario.bbox_top - 2), obj_mario.bbox_right, obj_mario.bbox_top, obj_onewaygate_bottom, 1, 0)
    var check_cannon = collision_rectangle(obj_mario.bbox_left, (obj_mario.bbox_top - 2), obj_mario.bbox_right, obj_mario.bbox_top, obj_cannon, 1, 0)
    var check_bullet = collision_rectangle(obj_mario.bbox_left, (obj_mario.bbox_top - 2), obj_mario.bbox_right, obj_mario.bbox_top, obj_bullebill_base, 1, 0)
    var check_muncher = collision_rectangle(obj_mario.bbox_left, (obj_mario.bbox_top - 2), obj_mario.bbox_right, obj_mario.bbox_top, obj_muncher, 1, 0)
    var check_pinchos2 = collision_rectangle(obj_mario.bbox_left, (obj_mario.bbox_top - 2), obj_mario.bbox_right, obj_mario.bbox_top, obj_pinchos, 1, 0)
    if ((((check && check != id) || check_pinchos) && vspeed >= 0) || (((check && check != id) || check_pinchos) && vspeed < 0 && y > (obj_mario.y + 32)) || ((check_solid || check_oneway || check_cannon || check_bullet || check_muncher || check_pinchos2) && vspeed < 0))
    {
        obj_mario.inclown = 0
        exit
    }
    if (collision_rectangle(bbox_left, (bbox_top - 8), bbox_right, (bbox_top + 7), obj_mario, 0, 0) && obj_mario.state < 2 && speed != 0)
    {
        if ((!check) || check.y > y || check.y == y)
        {
            obj_mario.y = ceil((bbox_top - 31))
            if ((hspeed > 0 && (!(collision_rectangle((obj_mario.bbox_right + hspeed), obj_mario.bbox_top, (obj_mario.bbox_right + hspeed), (obj_mario.bbox_bottom - 1), obj_onewaygate_left, 0, 0)))) || (hspeed < 0 && (!(collision_rectangle((obj_mario.bbox_left + hspeed), obj_mario.bbox_top, (obj_mario.bbox_left + hspeed), (obj_mario.bbox_bottom - 1), obj_onewaygate_right, 0, 0)))))
                obj_mario.x += hspeed
        }
    }
}
