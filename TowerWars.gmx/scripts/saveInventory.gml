{    
    for (i = 0; i < instance_number(obj_item); i++)
    {
        e = instance_find(obj_item,i);
        
        argument0[i,0] = e.sprite_index;
        argument0[i,1] = e.iden;
        argument0[i,2] = e.name;
        argument0[i,3] = e.description;
        argument0[i,4] = e.slotNum;
    }
}
