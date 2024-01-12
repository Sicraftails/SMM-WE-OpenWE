var i, xx, yy, d, m, col_one_right, col_one_left;
knopen_xspeed[0] = ((base_x - knopen_x[0]) * 0.3)
knopen_yspeed[0] = ((base_y - knopen_y[0]) * 0.3)
for (i = 0; i <= segmenten; i += 1)
    knopen_yspeed[i] += zwaartekracht
repeat snelheiditeraties
{
    i = 0
    if (i < segmenten)
    {
        xx = (knopen_x[(i + 1)] - knopen_x[i])
        yy = (knopen_y[(i + 1)] - knopen_y[i])
        d = sqrt(((xx * xx) + (yy * yy)))
        if (d > 0.001)
        {
            xx /= d
            yy /= d
        }
        else
        {
            xx = 1
            yy = 0
        }
        deltaxspeed = (knopen_xspeed[(i + 1)] - knopen_xspeed[i])
        deltayspeed = (knopen_yspeed[(i + 1)] - knopen_yspeed[i])
        snelheidsfout = (((deltaxspeed * xx) + (deltayspeed * yy)) + ((d - segmentlengte) * snelheidbaumgartefactor))
        f = (snelheidsfout / (knopen_invmassa[i] + knopen_invmassa[(i + 1)]))
        knopen_xspeed[i] += ((xx * f) * knopen_invmassa[i])
        knopen_yspeed[i] += ((yy * f) * knopen_invmassa[i])
        knopen_xspeed[(i + 1)] -= ((xx * f) * knopen_invmassa[(i + 1)])
        knopen_yspeed[(i + 1)] -= ((yy * f) * knopen_invmassa[(i + 1)])
        for (i += 1; i < segmenten; i += 1)
        {
            xx = (knopen_x[(i + 1)] - knopen_x[i])
            yy = (knopen_y[(i + 1)] - knopen_y[i])
            d = sqrt(((xx * xx) + (yy * yy)))
            if (d > 0.001)
            {
                xx /= d
                yy /= d
            }
            else
            {
                xx = 1
                yy = 0
            }
            deltaxspeed = (knopen_xspeed[(i + 1)] - knopen_xspeed[i])
            deltayspeed = (knopen_yspeed[(i + 1)] - knopen_yspeed[i])
            snelheidsfout = (((deltaxspeed * xx) + (deltayspeed * yy)) + ((d - segmentlengte) * snelheidbaumgartefactor))
            f = (snelheidsfout / (knopen_invmassa[i] + knopen_invmassa[(i + 1)]))
            knopen_xspeed[i] += ((xx * f) * knopen_invmassa[i])
            knopen_yspeed[i] += ((yy * f) * knopen_invmassa[i])
            knopen_xspeed[(i + 1)] -= ((xx * f) * knopen_invmassa[(i + 1)])
            knopen_yspeed[(i + 1)] -= ((yy * f) * knopen_invmassa[(i + 1)])
        }
    }
    i = 0
    if (i <= segmenten)
    {
        if ((knopen_r[i] - (knopen_x[i] - 0)) > -0.01)
            knopen_xspeed[i] += max(0, ((-knopen_xspeed[i]) + ((knopen_r[i] - (knopen_x[i] - 0)) * snelheidbaumgartefactor)))
        if ((knopen_r[i] - (knopen_y[i] - 0)) > -0.01)
            knopen_yspeed[i] += max(0, ((-knopen_yspeed[i]) + ((knopen_r[i] - (knopen_y[i] - 0)) * snelheidbaumgartefactor)))
        if ((knopen_r[i] - (room_width - knopen_x[i])) > -0.01)
            knopen_xspeed[i] -= max(0, (knopen_xspeed[i] + ((knopen_r[i] - (room_width - knopen_x[i])) * snelheidbaumgartefactor)))
        for (i += 1; i <= segmenten; i += 1)
        {
            if ((knopen_r[i] - (knopen_x[i] - 0)) > -0.01)
                knopen_xspeed[i] += max(0, ((-knopen_xspeed[i]) + ((knopen_r[i] - (knopen_x[i] - 0)) * snelheidbaumgartefactor)))
            if ((knopen_r[i] - (knopen_y[i] - 0)) > -0.01)
                knopen_yspeed[i] += max(0, ((-knopen_yspeed[i]) + ((knopen_r[i] - (knopen_y[i] - 0)) * snelheidbaumgartefactor)))
            if ((knopen_r[i] - (room_width - knopen_x[i])) > -0.01)
                knopen_xspeed[i] -= max(0, (knopen_xspeed[i] + ((knopen_r[i] - (room_width - knopen_x[i])) * snelheidbaumgartefactor)))
        }
    }
}
for (i = 0; i <= segmenten; i += 1)
{
    knopen_x[i] += knopen_xspeed[i]
    knopen_y[i] += knopen_yspeed[i]
}
repeat positieiteraties
{
    i = 0
    if (i < segmenten)
    {
        xx = (knopen_x[(i + 1)] - knopen_x[i])
        yy = (knopen_y[(i + 1)] - knopen_y[i])
        d = sqrt(((xx * xx) + (yy * yy)))
        if (d > 0.001)
        {
            xx /= d
            yy /= d
        }
        else
        {
            xx = 1
            yy = 0
        }
        snelheidsfout = ((d - segmentlengte) * positiebaumgartefactor)
        f = (snelheidsfout / (knopen_invmassa[i] + knopen_invmassa[(i + 1)]))
        knopen_x[i] += ((xx * f) * knopen_invmassa[i])
        knopen_y[i] += ((yy * f) * knopen_invmassa[i])
        knopen_x[(i + 1)] -= ((xx * f) * knopen_invmassa[(i + 1)])
        knopen_y[(i + 1)] -= ((yy * f) * knopen_invmassa[(i + 1)])
        for (i += 1; i < segmenten; i += 1)
        {
            xx = (knopen_x[(i + 1)] - knopen_x[i])
            yy = (knopen_y[(i + 1)] - knopen_y[i])
            d = sqrt(((xx * xx) + (yy * yy)))
            if (d > 0.001)
            {
                xx /= d
                yy /= d
            }
            else
            {
                xx = 1
                yy = 0
            }
            snelheidsfout = ((d - segmentlengte) * positiebaumgartefactor)
            f = (snelheidsfout / (knopen_invmassa[i] + knopen_invmassa[(i + 1)]))
            knopen_x[i] += ((xx * f) * knopen_invmassa[i])
            knopen_y[i] += ((yy * f) * knopen_invmassa[i])
            knopen_x[(i + 1)] -= ((xx * f) * knopen_invmassa[(i + 1)])
            knopen_y[(i + 1)] -= ((yy * f) * knopen_invmassa[(i + 1)])
        }
    }
    i = 0
    if (i <= segmenten)
    {
        if ((knopen_r[i] - (knopen_x[i] - 0)) > 0)
            knopen_x[i] += ((knopen_r[i] - (knopen_x[i] - 0)) * positiebaumgartefactor)
        if ((knopen_r[i] - (knopen_y[i] - 0)) > 0)
            knopen_y[i] += ((knopen_r[i] - (knopen_y[i] - 0)) * positiebaumgartefactor)
        if ((knopen_r[i] - (room_width - knopen_x[i])) > 0)
            knopen_x[i] -= ((knopen_r[i] - (room_width - knopen_x[i])) * positiebaumgartefactor)
        for (i += 1; i <= segmenten; i += 1)
        {
            if ((knopen_r[i] - (knopen_x[i] - 0)) > 0)
                knopen_x[i] += ((knopen_r[i] - (knopen_x[i] - 0)) * positiebaumgartefactor)
            if ((knopen_r[i] - (knopen_y[i] - 0)) > 0)
                knopen_y[i] += ((knopen_r[i] - (knopen_y[i] - 0)) * positiebaumgartefactor)
            if ((knopen_r[i] - (room_width - knopen_x[i])) > 0)
                knopen_x[i] -= ((knopen_r[i] - (room_width - knopen_x[i])) * positiebaumgartefactor)
        }
    }
}
x = knopen_x[segmenten]
y = knopen_y[segmenten]
if (hold == 2 && instance_exists(obj_mario))
{
    with (obj_mario)
    {
        vspeed = 0
        hspeed = 0
        gravity = 0
        state = 0
        jumpnow = 0
        isup = 0
        isuphold = 0
    }
    m = obj_mario
    if collision_rectangle(m.bbox_right, (m.bbox_top + 4), (m.bbox_right + 1), (m.bbox_bottom - 1), obj_solid, 1, 0)
        knopen_xspeed[segmenten] = 0
    else if collision_rectangle((obj_mario.bbox_left - 1), (obj_mario.bbox_top + 4), obj_mario.bbox_left, (obj_mario.bbox_bottom - 1), obj_solid, 1, 0)
        knopen_xspeed[segmenten] = 0
    if collision_rectangle(obj_mario.bbox_right, (obj_mario.bbox_top + 4), (obj_mario.bbox_right + 1), (obj_mario.bbox_bottom - 1), obj_physicssolid, 1, 0)
        knopen_xspeed[segmenten] = 0
    else if collision_rectangle((obj_mario.bbox_left - 1), (obj_mario.bbox_top + 4), obj_mario.bbox_left, (obj_mario.bbox_bottom - 1), obj_physicssolid, 1, 0)
        knopen_xspeed[segmenten] = 0
    if collision_rectangle(obj_mario.bbox_right, (obj_mario.bbox_top + 4), (obj_mario.bbox_right + 1), (obj_mario.bbox_bottom - 1), obj_bullebill_base, 1, 0)
        knopen_xspeed[segmenten] = 0
    else if collision_rectangle((obj_mario.bbox_left - 1), (obj_mario.bbox_top + 4), obj_mario.bbox_left, (obj_mario.bbox_bottom - 1), obj_bullebill_base, 1, 0)
        knopen_xspeed[segmenten] = 0
    if collision_rectangle(obj_mario.bbox_right, (obj_mario.bbox_top + 4), (obj_mario.bbox_right + 1), (obj_mario.bbox_bottom - 1), obj_bumper, 1, 0)
        knopen_xspeed[segmenten] = -2
    else if collision_rectangle((obj_mario.bbox_left - 1), (obj_mario.bbox_top + 4), obj_mario.bbox_left, (obj_mario.bbox_bottom - 1), obj_bumper, 1, 0)
        knopen_xspeed[segmenten] = 2
    if collision_rectangle(obj_mario.bbox_right, (obj_mario.bbox_top + 4), (obj_mario.bbox_right + 1), (obj_mario.bbox_bottom - 1), obj_spring_land, 1, 0)
        knopen_xspeed[segmenten] = -2
    else if collision_rectangle((obj_mario.bbox_left - 1), (obj_mario.bbox_top + 4), obj_mario.bbox_left, (obj_mario.bbox_bottom - 1), obj_spring_land, 1, 0)
        knopen_xspeed[segmenten] = 2
    col_one_right = collision_rectangle((obj_mario.bbox_left - 1), (obj_mario.bbox_top + 4), obj_mario.bbox_left, (bbox_bottom - 1), obj_onewaygate_right, 1, 0)
    col_one_left = collision_rectangle(obj_mario.bbox_right, (obj_mario.bbox_top + 4), (obj_mario.bbox_right + 1), (obj_mario.bbox_bottom - 1), obj_onewaygate_left, 1, 0)
    if col_one_right
    {
        if (knopen_xspeed[segmenten] < 0)
        {
            knopen_xspeed[segmenten] = 0
            with (col_one_right)
            {
                rot = 1
                event_user(0)
            }
        }
    }
    if col_one_left
    {
        if (knopen_xspeed[segmenten] > 0)
        {
            knopen_xspeed[segmenten] = 0
            with (col_one_left)
            {
                rot = 1
                event_user(0)
            }
        }
    }
    if (instance_exists(obj_autoscroll) && instance_exists(obj_levelmanager) && obj_levelmanager.barrier == 0)
    {
        if (obj_mario.x <= (camera_get_view_x(view_get_camera(0)) + 8) && obj_mario.inclown != 0)
        {
            event_user(1)
            ready = 1
            alarm[0] = 40
            hold = 0
            with (obj_mario)
                inclown = 0
        }
    }
}

