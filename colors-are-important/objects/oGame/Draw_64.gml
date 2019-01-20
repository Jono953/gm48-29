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
if(room = rm_tutorial)
{
	draw_set_font(fGame);
	draw_text(25,25,"HOW TO PLAY");
	draw_set_font(fGame2);
	draw_text(360,440,"Tap to move around.");
	draw_text(1024,578,"Drag primary colors together to create secondary colors.\nLet go of color to attack.");
}
if(room = room01)
{
	draw_set_font(fGame);
	draw_text(25,25,"CHARACTER SELECT");
}
if(room = rm_credits)
{
	draw_set_font(fGame);
	draw_text(25,25,"CREDITS");
	draw_text(25,100,"Made in 48 hours for gm(48) #29. \nProgramming:\nJonathan Ouf (@Jono953)\nTony Dong (@generic_tony)\nArt:\nTony Dong (@generic_tony)\nMusic:\nJonathan Ouf (@Jono953)");
}