//Set VSync
if global.vsync == 0 {
if display_get_timing_method() != tm_sleep{
    display_set_timing_method(tm_sleep);
    if display_get_sleep_margin() != sleep_tm
    {
        display_set_sleep_margin(sleep_tm);
    }
}
}
else
	display_set_timing_method(tm_countvsyncs)