/// @description Creates a background by copying an area from a surface.
/// @param index The index of the surface to create from.
/// @param x The x position to copy from.
/// @param y The y position to copy from.
/// @param w The width of the area to be copied (from the x position).
/// @param h The height of the area to be copied (from the y position).
/// @param removeback Indicates whether to make all pixels with the same colour (left-bottom pixel) transparent.
/// @param smooth Indicates whether to smooth the edges.
/// @returns {number} resource name for the new background
function background_create_from_surface(argument0, argument1, argument2, argument3, argument4, argument5, argument6) {

	return sprite_create_from_surface(argument0, argument1, argument2, argument3, argument4, argument5, argument6, 0, 0);


}
