if (con == 10)
{
    mus_volume(global.currentsong[1], 0, 30);
    
    if (instance_exists(obj_mainchara))
    {
        obj_mainchara.visible = 0;
        clo_actor = instance_create_depth(obj_mainchara.x, obj_mainchara.y, obj_mainchara.depth, obj_actor);
        clo_actor.sprite_index = obj_mainchara.sprite_index;
        clo_actor.__x = clogs_x + 6;
        clo_actor.__y = clogs_y + 20;
        
        with (clo_actor)
        {
            scr_set_facing_sprites("clogs");
            fun = 1;
            image_speed = 0.25;
            scr_move_to_point_over_time(__x, __y, 10);
        }
    }
    
    if (instance_exists(obj_caterpillarchara) && scr_havechar(DRCharacter.Sluzishy))
    {
        sluz_actor = instance_create_depth(global.cinstance[0].x, global.cinstance[0].y, global.cinstance[0].depth, obj_actor);
        sluz_actor.__x = sluz_x;
        sluz_actor.__y = sluz_y + 8;
        
        with (su_actor)
        {
            sprite_index = global.cinstance[0].sprite_index;
            scr_set_facing_sprites("sluzishy");
            scr_move_to_point_over_time(__x, __y, 10);
        }
        
        with (global.cinstance[0])
            visible = 0;
    }
    
    /*with (obj_caterpillarchara)
    {
        if (visible == 1)
        {
            me = scr_dark_marker_depth(x, y, 510000, sprite_index);
            visible = 0;
            
            if (name == "ralsei")
            {
                me.sprite_index = spr_ralsei_wave_start;
                me.image_speed = 0.2;
                
                with (me)
                    scr_script_delayed(scr_var, 15, "sprite_index", spr_ralsei_wave_down);
            }
        }
    }*/
    
    contimer = 0;
    con = 11;
}

if (con == 11)
{
    contimer++;
    
    if (contimer >= 11)
    {
        con = 1;
        
        with (obj_actor)
            visible = 0;
        
        with (obj_dw_leave)
        {
            if (bottom == 1)
                draw_clogs = 1;
        }
        
        with (obj_dw_leave)
        {
            if (bottom == 1)
                con = 15;
            else
                con = 1;
        }
    }
}
