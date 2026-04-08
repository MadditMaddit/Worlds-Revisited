if !instance_exists(par){
instance_destroy()
exit
}

xx = par.xx
yy = par.yy
sinner = par.sinner
image_alpha = par.image_alpha


draw_background_tiled_ext(spr_battlebacktri, xx, yy + sinner, 1, 1, image_blend, image_alpha);