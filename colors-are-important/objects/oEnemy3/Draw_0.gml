draw_sprite_ext(sFishMdEng,0,x,y,image_xscale+blasterScale,image_yscale,image_angle,c_white,image_alpha);
if(electric and irandom(100) > 65)
{
	draw_sprite(sBuzz,irandom_range(0,2),x,y);
}
draw_self();
