if (global.cursor == 2)
{
    cursor = spr_cursor_clean
    if (fast_clean == 1)
        i_index = 1
    else
        i_index = 0
}
else
{
    switch global.jugador
	{
	case 0:
		cursor = spr_cursor_mario
		break
	case 1:
		cursor = spr_cursor_luigi
		break
	case 2:
		cursor = spr_cursor_toad
		break
	case 3:
		cursor = spr_cursor_toadette
		break
	}
    switch global.cursor
    {
        case 0:
            i_index = 0
            break
        case 1:
            i_index = 1
            break
    }

}
