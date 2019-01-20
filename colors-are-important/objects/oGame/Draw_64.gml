draw_set_font(fGame);
draw_sprite(sTop,0,10,10);
draw_text(240,11,string(round(dscr))+" (x"+string(multi*(1+sign(bonusTime)))+")");
for(i=0;i<lvs;i++)
{
	draw_sprite(sLives,0,330+(i*95),80);
}

if(pauseMode)
{
	draw_sprite(sPauseBG,0,0,0);	
}