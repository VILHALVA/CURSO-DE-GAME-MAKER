/// @description UPDATE

place += .2;

if(place >= placeLevels)
{
	level++;
	placeLevels *= 1.8;
	audio_play_sound(snd_level, 5, false);
	
	if(level == 9)
	{
		room_goto_next();
		audio_pause_all();
	}
}

layer_hspeed("Background_Floor", -level - 4);
layer_hspeed("Background", -level - 2);