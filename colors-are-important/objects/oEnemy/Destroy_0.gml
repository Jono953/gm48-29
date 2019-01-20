for(i=0;i<irandom_range(2,4);i++)
{
instance_create_depth(x+random_range(-64,64),y+random_range(-64,64),-100,oExplosion);
instance_create_depth(x,y,-10,oDebris);
instance_create_depth(x,y,-10,oDebris);
}
instance_create_depth(x,y,-10,oBam);
if(irandom(1000) > 900)
{
	instance_create_depth(x,y,-10,oPowerUp);	
}