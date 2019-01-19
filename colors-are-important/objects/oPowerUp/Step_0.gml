if(place_meeting(x,y,oColorBullet) or place_meeting(x,y,oPlayer))
{
	switch(type)
	{
	case 0:
		with(oEnemy)
		{
			image_blend = choose(oGame.red,oGame.yellow,oGame.blue);
		}
	break;
	case 1:
		with(oEnemy)
		{
			dead = true;	
		}
	break;
	case 2:
		with(oEnemy)
		{
			electric = true;
			hsp *= 0.25;
			vsp *= 0.25;
		}
	break;
	case 3:
		with(oEnemy)
			{
				image_blend = oGame.red;
			}
	break;
	case 4:
		with(oEnemy)
			{
				image_blend = oGame.yellow;
			}
	break;
	case 5:
		with(oEnemy)
			{
				image_blend = oGame.blue;
			}
	break;
	}
	
	add_score(2500,0);
	instance_destroy();
}