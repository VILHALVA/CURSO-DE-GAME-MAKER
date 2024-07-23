/// @description UPDATE

vspeed += 0.1; // velocidade vertical para baixo

// Limitando a velocidade do avião para baixo
/*
	Se velocidade vertical for maior que velocidade máxima que é 5
	Então velocidade vertical será igual a velocidade máxima
*/
if(vspeed > velMax) 
{
	vspeed = velMax;
}

// Limitando a velocidade do avião para cima
/*
	Se velocidade vertical for menor que velocidade máxima que é -5
	Então velocidade vertical será igual a velocidade máxima
*/
if(vspeed < -velMax)
{
	vspeed = -velMax;
}