if(!instance_exists(oTransition))
{
	with(instance_create_depth(x,y,-100,oTransition))
	{
		whereTo = rm_tutorial;	
	}
}


ini_open("save.ini");
oGame.scrNext = ini_read_real("SAVE","scrlv",0);
oGame.nextlv = ini_read_real("SAVE","nextlv",10000);
oGame.lvs = ini_read_real("SAVE","lvs",3);
oGame.scr = ini_read_real("SAVE","scr",0);
oGame.multi = ini_read_real("SAVE","multi",1);
oGame.level = ini_read_real("SAVE","level",1);
oGame.buddyCount = ini_read_real("SAVE","buddy",0);
ini_close();