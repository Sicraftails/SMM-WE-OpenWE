function outside_view() //gml_Script_outside_view
{
    if (x < (__view_get((0 << 0), 0) - 32) || x > ((__view_get((0 << 0), 0) + __view_get((2 << 0), 0)) + 32) || y < (__view_get((1 << 0), 0) - 32) || y > ((__view_get((1 << 0), 0) + __view_get((3 << 0), 0)) + 32))
        return 1;
    else
        return 0;
}
