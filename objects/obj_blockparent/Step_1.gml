var _max_scale = 1.3
var _min_scale = 1
var _scale_increment = 0.06
var _scale_decrement = 0.07

if (expand == 1)
{
    s_scalex += _scale_increment;
    s_scaley += _scale_increment;
    if (s_scalex > _max_scale)
        expand = 2;
}
else if (expand == 2)
{
    s_scalex -= _scale_decrement;
    s_scaley -= _scale_decrement;
    if (s_scalex < _min_scale)
    {
        expand = 0;
        s_scalex = _min_scale;
        s_scaley = _min_scale;
    }
}