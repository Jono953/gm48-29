oGame.scr += argument0 * oGame.multi * (1+sign(oGame.bonusTime));
oGame.scrNext += argument0 * oGame.multi * (1+sign(oGame.bonusTime));
with(instance_create_depth(x,y,-100,oText))
{
	text = string(round(argument0 * oGame.multi * (1+sign(oGame.bonusTime))));
}
oGame.multi += argument1;
