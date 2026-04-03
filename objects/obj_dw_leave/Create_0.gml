depth = 500000;

if (instance_exists(obj_dw_transition))
{
    instance_destroy();
    exit;
}

image_xscale = 2;
image_yscale = 2;
con = 0;
image_speed = 0;
clogs_dist = 0;
draw_clogs = 0;
clogs_only = 1;
clogs_x = x - 24;
clogs_y = y - 80;
sluz_x = x - 60;
sluz_y = y - 94;
unlock_mode = global.plot >= 242;
nextroom = room_lw_test;

//if (unlock_mode)
//    nextroom = 261;

if (scr_havechar(DRCharacter.Sluzishy))
{
    clogs_only = 0;
    clogs_x = x + 12;
    clogs_y = y - 80;
}

fake_v = 0;
siner = 0;
drawpillar = 1;
pillarsiner = 0;
pillaralpha = 0;
pillarscale = 2;
particletimer = 0;
top = 0;
bottom = 1;

if (instance_number(obj_dw_leave) == 1)
{
    toppart = instance_create(x, y, obj_dw_leave);
    toppart.top = 1;
    toppart.bottom = 0;
    toppart.depth = 5000;
}

stopcon = 0;
border_fade = false;
