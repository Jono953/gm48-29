blasterScale = lerp(blasterScale,(abs(sin(time/64)/16)+abs(hsp/4)+abs(vsp/8))*image_xscale,0.1);
time++;
if(hsp > 0)
{
image_xscale = 1;	
}
else if(hsp < 0)
{
image_xscale = -1;	
}
if(place_meeting(x,y,oEnemy) and invun = 0)
{
	oGame.lvs -= 1;
	invun = 60;
	oGame.combo = 1;
	with(instance_nearest(x,y,oEnemy))
	{
		dead = true;		
	}
}
if(invun > 0)
{
	if(image_alpha = 1)
	{
		image_alpha = 0;	
	}
	else
	{
		image_alpha = 1;	
	}
	invun--;	
}
else
{
	image_alpha = 1;	
}
if(keyboard_check(ord("W")))
{
vsp = lerp(vsp,-2,0.1);
}
else if(keyboard_check(ord("S")))
{
vsp = lerp(vsp,2,0.1);
}
else
{
vsp = lerp(vsp,0,0.1);	
}
if(keyboard_check(ord("A")))
{
hsp = lerp(hsp,-2,0.1);
}
else if(keyboard_check(ord("D")))
{
hsp = lerp(hsp,2,0.1);
}
else
{
hsp = lerp(hsp,0,0.1);	
}
x += hsp;
y += vsp;