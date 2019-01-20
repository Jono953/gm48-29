if(oGame.charChoice = sprite_index)
{
	selected = true;
	if(!instance_exists(oConfirm))
	{
		instance_create_depth(960,1000,-100,oConfirm);	
	}
}
else
{
	selected = false;	
}