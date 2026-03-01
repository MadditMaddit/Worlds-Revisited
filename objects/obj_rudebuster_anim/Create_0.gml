t = 0;
image_speed = 0;
target = 9897887;
image_xscale = 2;
image_yscale = 2;
damage = 1;
caster = 0;
star = 0;
battlemode = 1;

if (instance_exists(obj_herosluzishy))
{
    depth = obj_herosluzishy.depth;
    
    with (obj_herosluzishy)
        visible = 0;
}
else
{
    battlemode = 0;
}

red = 0;
