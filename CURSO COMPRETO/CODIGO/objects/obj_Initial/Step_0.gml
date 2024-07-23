/// @description UPDATE

if(showT)
{
	image_alpha += 0.01;
}

if(hideT)
{
	image_alpha -= 0.01;
}

if(image_alpha <= 0.1)
{
	showT = true;
	hideT = false;
}

if(image_alpha >= 1)
{
	showT = false;
	hideT = true;
}