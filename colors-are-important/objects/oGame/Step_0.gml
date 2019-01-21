if(room = rm_credits or room = room011 or room = room01)
{
	currentSong = penbox64;	
}
if(room = room0)
{
	if(scr < 250000)
	{
		currentSong = penbox65;	
	}
	else
	{
		currentSong = penbox64_2;	
	}
}
if(room = rm_death)
{
	currentSong = penbox64_3;
}
music(currentSong);
if(room = room0)
{
dscr = lerp(dscr,scr,0.1);
if(scrNext > nextlv)
{
	lvs++;
	nextlv = 5000 * multi * lvs;
	scrNext = 0;
}
lvs = clamp(lvs,0,5);
if(lvs = 5)
{
	scrNext = 0;	
}
if(pauseTime > 0)
{
pauseTime--;	
}
else
{
	if(speedBoostTime > 0)
	{
		speedBoostTime--;
		oPlayer.spd = 6;
	}
	else
	{
		oPlayer.spd = 3;
	}
}

if(keyboard_check_pressed(ord("P")))
{
	if(pauseMode)
	{
		pauseMode = false;	
	}
	else
	{
		pauseMode = true;	
	}
}
if(pauseMode)
{
pauseTime = 3;	
}
if(keyboard_check_pressed(ord("R")))
{
	room_restart();
}
if(!instance_exists(oBad) and !instance_exists(oExplosion) and !levelComplete)
{
	levelComplete = true;
	level++;
}
if(levelComplete)
{
	transitionX = lerp(transitionX,0,0.1);
}
else
{
	transitionX = lerp(transitionX,-1920,0.1);	
}
if(levelComplete and transitionX >= -4)
{
instance_destroy(oEnvironmentSpin);
generate_room();
switch(level)
{
	case 2:	
		for(i=0;i<4;i++)
		{
			instance_create_depth(0,0,-10,oEnemy);	
		}
	break;
	case 3:
		for(i=0;i<4;i++)
		{
			instance_create_depth(0,0,-10,oEnemy);	
		}
	break;
	case 4:
		for(i=0;i<2;i++)
		{
			instance_create_depth(0,0,-10,oEnemy3);	
		}	
	break;
	case 5:
		for(i=0;i<2;i++)
		{
			instance_create_depth(0,0,-10,oEnemy);	
		}
		instance_create_depth(0,0,-10,oEnemy3);	
	break;
	case 6:
		instance_create_depth(0,0,-10,oEnemy2);	
	break;
	case 7:
		for(i=0;i<3;i++)
		{
			instance_create_depth(0,0,-10,oEnemy);	
		}
		instance_create_depth(0,0,-10,oEnemy2);
	break;
	case 8:
		for(i=0;i<2;i++)
		{
			instance_create_depth(0,0,-10,oEnemy3);	
		}	
		instance_create_depth(0,0,-10,oEnemy2);
	break;
	case 9:
		for(i=0;i<2;i++)
		{
			instance_create_depth(0,0,-10,oEnemy4);	
		}	
	break;
	case 10:
		for(i=0;i<2;i++)
		{
			instance_create_depth(0,0,-10,oEnemy5);	
		}
	break;
	case 11:
		for(i=0;i<2;i++)
		{
			instance_create_depth(0,0,-10,oEnemy5);	
		}
		for(i=0;i<2;i++)
		{
			instance_create_depth(0,0,-10,oEnemy4);	
		}
	break;
	default:
		for(i=0;i<irandom(level);i++)
		{
			numEnemy = irandom(i);
			if(numEnemy < 2)
			{
				instance_create_depth(0,0,-10,oEnemy);
			}
			else if(numEnemy < 4)
			{
				instance_create_depth(0,0,-10,oEnemy4);	
			}
			else if(numEnemy < 6)
			{
				instance_create_depth(0,0,-10,oEnemy3);
			}
			else if(numEnemy < 8)
			{
				instance_create_depth(0,0,-10,oEnemy5);	
			}
			else if(numEnemy < 10)
			{
				instance_create_depth(0,0,-10,oEnemy2);
			}
			else if(numEnemy < 12)
			{
				instance_create_depth(0,0,-10,oEnemy6);	
			}
		}
	break;
}
levelComplete = false;
}
oPlayer.sprite_index = charChoice;
if(scr > hiscr)
{
	hiscr = scr;	
}
ini_open("save.ini");
ini_write_real("SAVE","scr",scr);
ini_write_real("SAVE","scrlv",scrNext);
ini_write_real("SAVE","nextlv",nextlv);
ini_write_real("SAVE","lvs",lvs);
ini_write_real("SAVE","hiscr",hiscr);
ini_write_real("SAVE","multi",multi);
ini_write_real("SAVE","level",level);
ini_write_real("SAVE","buddy",instance_number(oBuddy));
ini_close();
}