if(oGame.pauseTime = 0)
{
if(refreshTime = 0)
{
	move_towards_point(oPlayer.x,oPlayer.y,2);
	hsp = hspeed;
	vsp = vspeed;
	hspeed = 0;
	vspeed = 0;
	refreshTime = 240;
	electric = false;
	respond = false;
}

if(refreshTime > 0)
{
	refreshTime--;	
}
if(x < oPlayer.x)
{
	image_xscale = 1;	
}
else
{
	image_xscale = -1;	
}

blasterScale = lerp(blasterScale,abs(sin(time/32)/4+0.5)*image_xscale,0.1);
time++;
x += hsp;
y += vsp;
if(place_meeting(x,y,oColorBullet))
{
	if(instance_nearest(x,y,oColorBullet).image_blend = image_blend)
	{
		oGame.pauseTime += 1;
		with(instance_nearest(x,y,oColorBullet))
		{
			instance_destroy();	
		}
		if(irandom(1000) > 900)
		{
			image_blend = choose(oGame.red,oGame.orange,oGame.yellow,oGame.green,oGame.blue,oGame.purple);
			add_score(250,0.1);
			hsp /= 2;
			vsp /= 2;
		}
		else
		{	
			dead = true;
		}
	}
}
if(oGame.bonusTime > 0 and !respond)
{
	hsp /= 2;
	vsp /= 2;
	respond = true;
}
else if(oGame.bonusTime = 0 and respond)
{
	hsp *= 2;
	vsp *= 2;
	respond = false;	
}
if(dead)
{
	image_alpha = lerp(image_alpha,0,0.1);
	image_angle = lerp(image_angle,180,0.1);
	hsp = lerp(hsp,0,0.2);
	vsp = lerp(vsp,0,0.2);
	
}
if(image_alpha < 0.01)
{	
	if(oGame.bonusTime > 0)
	{
		oGame.bonusTime += 60;	
	}

	instance_destroy();	
	add_score(500,0.1);
	oGame.kills++;	
}
}