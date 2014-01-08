//function: mouse_target
//use: target = mouse_target(mouse_x,mouse_y,source)
//description: returns a target for the drag and drop action of the global mouse,
//  if a target was found, otherwise returns a 0
//target_x: x coordinate of the mouse
//target_y: y coordinate of the mouse
//source: obj_base from where the first click originated from
{
    target_x = argument0;
    target_y = argument1;
    source = argument2;
    
    target = 0;
    
    //ignore the command if the mouse button has been released at the source
    //and only consider the command if the mouse has been released at an "obj_base"
    if(not place_meeting(target_x, target_y, source) && place_meeting(target_x, target_y, obj_base))
    { 
        //place_meeting returns only true/false so we cycle through each base to find
        //which one the mouse has collided with and assign it to target       
        for(i = 0; i < instance_number(obj_base); i++)
        {
            e = instance_find(obj_base,i);
            
            if (place_meeting(target_x,target_y,e))
            {
                target = e;
                break;
            }
        }
    }
        
    return target;
}
    
