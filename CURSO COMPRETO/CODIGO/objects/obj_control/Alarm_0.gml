/// @description Create Montains

// Configurar a posição inicial vertical mínima e máxima
var yy = irandom_range(64, 224);
// Configurar a posição inicial horizontal mínima e máxima
var xx = room_width + irandom_range(50 , 100);


// Montain Top
instance_create_layer(xx, yy, "Instances_Obstacules", obj_montainTop);
// Montain Bottom
/*
	Na posição vertical, eu somo a posição inicial mais a altura do player com acrescima de 70 a 90.
*/
instance_create_layer(xx, yy + irandom_range(obj_player.sprite_height + 70, obj_player.sprite_height + 90) , "Instances_Obstacules", obj_montainBottom);

var tMinimum = 1 / (1 + (level * 0.1));

alarm[0] = random_range(tMinimum, 2) * room_speed;