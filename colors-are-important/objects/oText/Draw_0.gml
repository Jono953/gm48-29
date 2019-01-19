draw_set_font(fScore);
draw_set_alpha(image_alpha);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_text_transformed(x,y,text,image_xscale,image_yscale,image_angle);
draw_set_halign(fa_left);
draw_set_valign(fa_left);
draw_set_alpha(1);
