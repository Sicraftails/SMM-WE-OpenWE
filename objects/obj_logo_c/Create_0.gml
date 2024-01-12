c_title = make_colour_rgb(229, 23, 42)
c_letter = 16777215
x_pos = x
switch (os_get_language())
{
    case "es": global.idioma = 0; break;
    case "pt": global.idioma = 2; break;
    case "it": global.idioma = 3; break;
    case "zh": global.idioma = 4; break;
    default: global.idioma = 1; break;
}