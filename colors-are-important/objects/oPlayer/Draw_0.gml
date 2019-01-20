draw_sprite_ext(sPlayerEng,0,x,y,image_xscale+blasterScale,image_yscale,image_angle,c_white,image_alpha);
draw_self();
if(instance_exists(oColorOnMouse))
{
	pointerIconAlpha = lerp(pointerIconAlpha,1,0.1);	
	pointerIconBlend = oColorOnMouse.image_blend;
}
else
{
	pointerIconAlpha = lerp(pointerIconAlpha,0,0.1);
}
if(distance_to_point(gtx,gty) >= 50)
{
	moveIconAlpha = lerp(moveIconAlpha,1,0.1);	
}
else
{
	moveIconAlpha = lerp(moveIconAlpha,0,0.1);	
}
draw_sprite_ext(sMoveIcon,0,gtx,gty,1,1,moveRot,c_white,moveIconAlpha);
draw_sprite_ext(sColorPointer,0,x,y,0.6,0.6,point_direction(x,y,mouse_x,mouse_y),pointerIconBlend,pointerIconAlpha);