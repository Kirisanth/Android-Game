//function create_spawnPoint
//use: create_spawnPoint(source, target, amount)
//source: the source object from where the spawn points originates, must be of "obj_base"
//target: the target object to where the spawn point will send the pawns, must be of "obj_base"
//amount: number of pawns to send from source to target, does not matter if the amount is larger
//  than the current number at source, the spawnPoint will terminate if all pawns are exsausted
{
    source = argument0;
    target = argument1;
    amount = argument2;
    
    //create object spawnPoint at source
    s = instance_create(source.x,source.y,obj_spawnPoint);       
    
    //n = floor (percentage*source.total_pawns);
    n = amount;
    
    //assign variables to the spwanPoint object
    s.num = n;
    s.source = source;
    s.rate = source.deploy_rate;
    s.pawn_speed = source.pawn_speed;
    s.object = source.pawn;
    s.target = target;
}
