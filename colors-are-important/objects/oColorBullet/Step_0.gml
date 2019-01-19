if(hspeed != 0 or vspeed != 0)
{
	hsp = hspeed;
	vsp = vspeed;
	hspeed = 0;
	vspeed = 0;
}
if(oGame.pauseTime = 0)
{
x += hsp;
y += vsp;
}
time++;
if(time > 120)
{
	instance_destroy();
}