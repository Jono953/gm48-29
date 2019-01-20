if(oGame.pauseTime = 0)
{
if(refreshTime = 0)
{
	teleportStart = true;
	teleportFinish = false;
	refreshTime = 120;
	if(electric)
	{
	dead = true;	
	}
	respond = false;
}

if(refreshTime > 0)
{
	refreshTime--;	
}
if(place_meeting(x,y,oPlayer) and oPlayer.invun = 0)
{
instance_create_depth(x,y,-10,oEnemy4);	
}
if(teleportStart)
{
	image_xscale = lerp(image_xscale,0,0.1);
}
if(image_xscale < 0.01)
{
	teleportStart = false;
	x = irandom(1920);
	y = irandom(1080);
	teleportFinish = true;
}
if(teleportFinish)
{
	image_xscale = lerp(image_xscale,1,0.1);
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
		if(hp > 0)
		{
		image_blend = choose(oGame.red,oGame.orange,oGame.yellow,oGame.green,oGame.blue,oGame.purple);
		add_score(250,0.1);
		hp--;
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
	image_alpha = lerp(image_alpha,0,0.05);
	image_angle = lerp(image_angle,180,0.05);
	hsp = lerp(hsp,0,0.2);
	vsp = lerp(vsp,0,0.2);
	refreshTime = 9;
	
}
if(image_alpha < 0.01)
{	
	if(oGame.bonusTime > 0)
	{
		oGame.bonusTime += 60;	
	}
	if(irandom(1000) > 950)
	{
		instance_create_depth(x,y,-10,oPowerUp);	
	}
	instance_destroy();	
	add_score(750,0.1);
	oGame.kills++;	
}
}