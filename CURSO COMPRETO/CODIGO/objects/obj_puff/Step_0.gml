/// @description UPDATE




if(growUp)
{
	image_xscale += 0.05;
	image_yscale = image_xscale;
}

if(image_xscale > 1)
{
	growUp = false;
	image_alpha -= 0.05;
}

if(image_alpha < 0)
{
	instance_destroy();
}