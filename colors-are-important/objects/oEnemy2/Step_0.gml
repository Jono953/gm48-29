if(oGame.pauseTime = 0)
{
if(refreshTime = 0)
{
	move_towards_point(oPlayer.x,oPlayer.y,0.25);
	hsp = hspeed;
	vsp = vspeed;
	hspeed = 0;
	vspeed = 0;
	refreshTime = 30;
	if(irandom(1000) > 800)
	{
		instance_create_depth(x,y,-10,oEnemy);	
	}
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
x += hsp;
y += vsp;
blasterScale = lerp(blasterScale,abs(sin(time/64)/4+0.25)*image_xscale,0.1);
time++;
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
			hp -= 1;
			hsp = -hsp*2;
			vsp = -vsp*2;
			instance_create_depth(x+random_range(-128,128),y+random_range(-128,128),-100,oExplosion);
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
	image_alpha = lerp(image_alpha,0,0.025);
	image_angle = lerp(image_angle,180,0.025);
	hsp = lerp(hsp,0,0.2);
	vsp = lerp(vsp,0,0.2);
	
	if(irandom(100) > 90)
	{
		instance_create_depth(x+random_range(-128,128),y+random_range(-128,128),-100,oExplosion);
	}
}
if(image_alpha < 0.01)
{	
	if(oGame.bonusTime > 0)
	{
		oGame.bonusTime += 120;	
	}
	instance_create_depth(x,y,-10,oPowerUp);	
	instance_destroy();	
	add_score(1000,0.5);
	oGame.kills += 10;	
	instance_create_depth(x,y,-10,oBam);
	for(i=0;i<8;i++)
	{
		instance_create_depth(x+random_range(-128,128),y+random_range(-128,128),-100,oExplosion);
		instance_create_depth(x,y,-10,oDebris);

	}
}
}