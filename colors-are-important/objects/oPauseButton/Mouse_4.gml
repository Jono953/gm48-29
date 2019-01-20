if(oGame.pauseMode = false)
{
	oGame.pauseMode = true;	
}
else
{
	oGame.pauseMode = false;		
}
if(image_xscale = 1)
{
	image_xscale = 8;
	x = 960;
	y = 540;
}
else
{
	image_xscale = 1;	
	x = 64;
	y = 1024;
}
image_yscale = image_xscale;
sound(choose(button1,button2,button3,button4,button5));
