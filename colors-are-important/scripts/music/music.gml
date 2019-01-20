#region penbox64
if(argument0 = penbox64)
{
	penbox64gain = lerp(penbox64gain,oGame.mainGain,0.05);	
}
else
{
	penbox64gain = lerp(penbox64gain,0,0.05);
}

audio_sound_gain(penbox64,penbox64gain,0);

if(penbox64gain = 0)
{
	audio_stop_sound(penbox64);
}
#endregion penbox64
#region penbox64_2
if(argument0 = penbox64_2)
{
	penbox64_2gain = lerp(penbox64_2gain,oGame.mainGain,0.05);	
}
else
{
	penbox64_2gain = lerp(penbox64_2gain,0,0.05);
}

audio_sound_gain(penbox64_2,penbox64_2gain,0);

if(penbox64_2gain = 0)
{
	audio_stop_sound(penbox64_2);
}
#endregion penbox64_2
#region penbox64_3
if(argument0 = penbox64_3)
{
	penbox64_3gain = lerp(penbox64_3gain,oGame.mainGain,0.05);	
}
else
{
	penbox64_3gain = lerp(penbox64_3gain,0,0.05);
}

audio_sound_gain(penbox64_3,penbox64_3gain,0);

if(penbox64_3gain = 0)
{
	audio_stop_sound(penbox64_3);
}
#endregion penbox64_3
#region penbox65
if(argument0 = penbox65)
{
	penbox65gain = lerp(penbox65gain,oGame.mainGain,0.05);	
}
else
{
	penbox65gain = lerp(penbox65gain,0,0.05);
}

audio_sound_gain(penbox65,penbox65gain,0);

if(penbox65gain = 0)
{
	audio_stop_sound(penbox65);
}
#endregion penbox65
#region playMusic
if(!audio_is_playing(argument0))
{
	audio_play_sound(argument0,1,0);	
}
#endregion playMusic