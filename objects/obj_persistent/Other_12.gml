s = (filter + 1)
if (global.sm4j_style == 1)
{
    mobile_keys[0] = virtual_key_add((32 * s), (80 * s), (32 * s), (64 * s), global.arriba)
    mobile_keys[1] = virtual_key_add((32 * s), (178 * s), (32 * s), (64 * s), global.abajo)
    mobile_keys[2] = virtual_key_add((-34 * s), (144 * s), (64 * s), (32 * s), global.izquierda)
    mobile_keys[3] = virtual_key_add((66 * s), (144 * s), (64 * s), (32 * s), global.derecha)
}
else if (global.sm4j_style != 1)
{
    mobile_keys[0] = virtual_key_add((34 * s), (102 * s), (32 * s), (48 * s), global.arriba)
    mobile_keys[1] = virtual_key_add((34 * s), (158 * s), (32 * s), (48 * s), global.abajo)
    mobile_keys[2] = virtual_key_add((-6 * s), (138 * s), (48 * s), (32 * s), global.izquierda)
    mobile_keys[3] = virtual_key_add((59 * s), (138 * s), (48 * s), (32 * s), global.derecha)
}
vk_movimientos = 1

