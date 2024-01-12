if (item_add_temp != obj_angrysun)
{
    if (item_add_temp == obj_pink_coin_res && instance_number(obj_pink_coin_res) == 5)
    {
    }
    else
        global.select_resource = item_add_temp
}
item_add_temp = 0
obj_editormanager.expand_open = 0
