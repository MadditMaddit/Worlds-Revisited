scr_depth(0);
image_speed = 0;

if (global.darkzone)
    scr_darksize(id);

walk = 0;
fun = 0;
follow = 1;
runmove = 0;
dir = 0;
walkbuffer = 0;
walktimer = 0;
slided = 0;
specialed = 0;
init_clothes = false;
blushtimer = 0;
shadow_force_off = false;
name = "sluzishy";
target = 12;
sprite_init = false;
target = 12;
usprite = spr_sluzishy_walk_up;
dsprite = spr_sluzishy_walk_down;
rsprite = spr_sluzishy_walk_right;
lsprite = spr_sluzishy_walk_left;
slidesprite = spr_sluzishy_walk_down;
climbsprite = spr_sluzishy_walk_up;

parent = obj_mainchara;
pd = parent.dsprite;
pr = parent.rsprite;
pl = parent.lsprite;
pu = parent.usprite;

for (i = 0; i < 75; i += 1)
{
    remx[i] = parent.x;
    remy[i] = parent.y;
    facing[i] = global.facing;
    sliding[i] = 0;
    special[i] = 0;
}

depth = parent.depth + 5;
mywidth = sprite_width;
myheight = sprite_height;
xoffset = 0;
yoffset = 0;
init = 0;
forget = 0;
ignoredepth = 0;
halign = 28;
valign = 16;
