//delte all instances of the object
//usage: deleteAllObjects(obj);
obj = argument0;

t = instance_number(obj);
a = 0;
for (i = 0; i < t; i++)
{
    inst = instance_find(obj, i);
    a[i] = inst;
}

t = array_length_1d(a);
for(i = 0; i < t; i++)
{
    with(a[i])
    {
        instance_destroy();
    }
}
