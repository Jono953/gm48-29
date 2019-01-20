switch(image_blend)
{
	case oGame.red:
		xOffset = 0;
		yOffset = -160;
	break;
	case oGame.yellow:
		xOffset = -128;
		yOffset = 96;
	break;
	case oGame.blue:
		xOffset = 128;
		yOffset = 96;
	break;
}
x = oPlayer.x + xOffset;
y = oPlayer.y + yOffset;
depth = -75;