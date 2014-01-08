//function: execute_move
//creates a spawnPoint object at source and sends a number of pawns to target
//use: execute_move(source, target, amount)
//source: the source object from where the spawn points originates, must be of "obj_base"
//target: the target object to where the spawn point will send the pawns, must be of "obj_base"
//amount: number of pawns to send from source to target, does not matter if the amount is larger
//  than the current number at source, the spawnPoint will terminate if all pawns are exsausted
{
    source = argument0;
    target = argument1;
    amount = argument2;
    
    create_spawnPoint(source,target,amount);
}


