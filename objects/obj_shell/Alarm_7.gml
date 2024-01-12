switch sprite_index
{
    case spr_shell_inside:
        instance_create(x, y, obj_koopa)
        instance_destroy()
        break
    case spr_shell_red_inside:
        instance_create(x, y, obj_koopa_red)
        instance_destroy()
        break
    case spr_shell_inside_b:
        instance_create(x, y, obj_koopa_b)
        instance_destroy()
        break
    case spr_shell_red_inside_b:
        instance_create(x, y, obj_koopa_red_b)
        instance_destroy()
        break
}

