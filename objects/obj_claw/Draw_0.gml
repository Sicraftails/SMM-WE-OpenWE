for (i = 0; i <= segmenten; i += 1)
{
    if (i == 0)
        draw_sprite(s_claw_chain, 0, knopen_x[i], (knopen_y[i] - 2));
    else if (i == segmenten)
        draw_sprite(s_claw, hold, knopen_x[i], knopen_y[i]);
    else
        draw_sprite(s_claw_chain, 1, knopen_x[i], knopen_y[i]);
}
