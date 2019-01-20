if(room = room0)
{
draw_set_font(fGame);
draw_sprite(sTop,0,10,10);
draw_text(240,11,string(round(dscr)));
draw_set_font(fGame2);
draw_text(530,31,"x"+string(multi));
for(i=0;i<lvs;i++)
{
	draw_sprite(sLives,0,330+(i*95),80);
}
	draw_sprite_part(sLives,0,0,0,(scrNext/nextlv)*91,24,330+((lvs)*95),80);
if(pauseMode)
{
	draw_sprite(sPauseBG,0,0,0);	
}
draw_sprite(sTransition,0,transitionX,0);
}