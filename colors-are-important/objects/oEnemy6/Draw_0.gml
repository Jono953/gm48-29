if(teleportStart)
{
draw_ellipse(x-sprite_width/2,y-sprite_height/2,x+sprite_width/2,y+sprite_height/2,true);	
}
if(electric and irandom(100) > 65)
{
	draw_sprite(sBuzz,irandom_range(0,2),x,y);
}
draw_self();
