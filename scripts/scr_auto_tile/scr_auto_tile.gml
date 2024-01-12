function scr_auto_tile() //gml_Script_scr_auto_tile
{
    var iw = sprite_width
    var w_left = place_meeting((x - iw), y, object_index)
    var w_right = place_meeting((x + iw), y, object_index)
    var w_up = place_meeting(x, (y - iw), object_index)
    var w_down = place_meeting(x, (y + iw), object_index)
    var w_upleft = place_meeting((x - iw), (y - iw), object_index)
    var w_downleft = place_meeting((x - iw), (y + iw), object_index)
    var w_upright = place_meeting((x + iw), (y - iw), object_index)
    var w_downright = place_meeting((x + iw), (y + iw), object_index)
    vent1 = (!(place_meeting((x + (iw * 2)), y, object_index)))
    vent2 = (!(place_meeting(x, (y - (iw * 2)), object_index)))
    vent3 = (!(place_meeting(x, (y + (iw * 2)), object_index)))
    vent4 = (!(place_meeting((x + (iw * 2)), (y + iw), object_index)))
    borde1 = (!(place_meeting((x - (iw * 2)), y, object_index)))
    borde2 = (!(place_meeting(x, (y + (iw * 2)), object_index)))
    if ((x - iw) < 0)
    {
        w_left = 1
        w_upleft = 1
        w_downleft = 1
    }
    if ((x + iw) > room_width)
    {
        w_right = 1
        w_upright = 1
        w_downright = 1
    }
    if ((y - iw) < 0)
    {
        w_up = 1
        w_upright = 1
        w_upleft = 1
    }
    if ((y + iw) > room_height)
    {
        w_down = 1
        w_downright = 1
        w_downleft = 1
    }
    if (y == (room_height - 16))
        var tile = 2
    else
        tile = 44
    if w_up
    {
        if (y == (room_height - 16))
            tile = 45
        else
            tile = 0
        if w_right
        {
            if (y == (room_height - 16))
                tile = 17
            else
                tile = 4
            if w_down
            {
                tile = 12
                if w_left
                {
                    tile = 28
                    if w_upright
                    {
                        tile = 29
                        if w_downright
                        {
                            tile = 33
                            if w_downleft
                            {
                                tile = 39
                                if w_upleft
                                {
                                    if ((vent1 && vent2) || (vent3 && vent4))
                                        tile = 49
                                    else if (borde1 && borde2)
                                        tile = 48
                                    else
                                        tile = 43
                                }
                            }
                            else if w_upleft
                                tile = 40
                        }
                        else if w_downleft
                        {
                            tile = 37
                            if w_upleft
                                tile = 41
                        }
                        else if w_upleft
                            tile = 36
                    }
                    else if w_downright
                    {
                        tile = 30
                        if w_downleft
                        {
                            tile = 34
                            if w_upleft
                                tile = 42
                        }
                        else if w_upleft
                            tile = 38
                    }
                    else if w_downleft
                    {
                        tile = 31
                        if w_upleft
                            tile = 35
                    }
                    else if w_upleft
                        tile = 32
                }
                else if w_upright
                {
                    tile = 16
                    if w_downright
                        tile = 18
                }
                else if w_downright
                    tile = 17
            }
            else if w_left
            {
                if (y == (room_height - 16))
                    tile = 34
                else
                    tile = 15
                if w_upright
                {
                    if (y == (room_height - 16))
                        tile = 39
                    else
                        tile = 25
                    if w_upleft
                    {
                        if (y == (room_height - 16))
                            tile = 43
                        else
                            tile = 27
                    }
                }
                else if w_upleft
                {
                    if (y == (room_height - 16))
                        tile = 42
                    else
                        tile = 26
                }
            }
            else if w_upright
            {
                if (y == (room_height - 16))
                    tile = 18
                else
                    tile = 8
            }
        }
        else if w_down
        {
            tile = 45
            if w_left
            {
                tile = 14
                if w_downleft
                {
                    tile = 22
                    if w_upleft
                        tile = 24
                }
                else if w_upleft
                    tile = 23
            }
        }
        else if w_left
        {
            if (y == (room_height - 16))
                tile = 22
            else
                tile = 7
            if w_upleft
            {
                if (y == (room_height - 16))
                    tile = 24
                else
                    tile = 11
            }
        }
    }
    else if w_right
    {
        if (y == (room_height - 16))
            tile = 9
        else
            tile = 1
        if w_down
        {
            tile = 5
            if w_left
            {
                tile = 13
                if w_downright
                {
                    tile = 19
                    if w_downleft
                        tile = 21
                }
                else if w_downleft
                    tile = 20
            }
            else if w_downright
                tile = 9
        }
        else if w_left
        {
            if (y == (room_height - 16))
                tile = 21
            else
                tile = 46
        }
    }
    else if w_down
    {
        tile = 2
        if w_left
        {
            tile = 6
            if w_downleft
                tile = 10
        }
    }
    else if w_left
    {
        if (y == (room_height - 16))
            tile = 10
        else
            tile = 3
    }
    return tile;
}

