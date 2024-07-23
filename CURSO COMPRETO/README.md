# EXPLICAÇÃO DE `OBJECTS`
## 1. **Desenho da Tela de Parabéns e Mensagem de Tecla**
```gml
/// @description Draw Congratulations

// Draw Congratulations
draw_set_font(fnt_congratulations);
draw_set_color(c_red);
draw_text(room_width / 2 - 250, room_height / 2 - 100, "CONGRATULATIONS");

// Draw Key Space
draw_set_font(fnt_press);
draw_set_color(c_black);
draw_text(room_width / 2 - 100, room_height / 2 + 50, "Press Space");
```

**Explicação:**
- **`draw_set_font(fnt_congratulations);`**: Define a fonte para desenhar o texto. `fnt_congratulations` é uma variável que deve conter uma fonte previamente definida no projeto.
- **`draw_set_color(c_red);`**: Define a cor do texto como vermelho (`c_red`).
- **`draw_text(room_width / 2 - 250, room_height / 2 - 100, "CONGRATULATIONS");`**: Desenha o texto "CONGRATULATIONS" no centro da tela, ajustado para centralizar horizontalmente e verticalmente.
- **`draw_set_font(fnt_press);`**: Muda a fonte para `fnt_press` para o próximo texto.
- **`draw_set_color(c_black);`**: Define a cor do texto como preto (`c_black`).
- **`draw_text(room_width / 2 - 100, room_height / 2 + 50, "Press Space");`**: Desenha o texto "Press Space" abaixo do texto "CONGRATULATIONS", ajustado para centralizar horizontalmente.

## 2. **Reiniciar o Jogo**
```gml
/// @description Space

game_restart();
```

**Explicação:**
- **`game_restart();`**: Reinicia o jogo, reiniciando o estado do jogo e recomeçando a partir do início. Isso geralmente é chamado quando o jogador pressiona uma tecla específica (neste caso, a tecla espaço, como mencionado anteriormente).

## 3. **Criação de Montanhas**
```gml
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
```

**Explicação:**
- **`var yy = irandom_range(64, 224);`**: Gera uma posição vertical aleatória entre 64 e 224.
- **`var xx = room_width + irandom_range(50 , 100);`**: Define a posição horizontal inicial das montanhas, que é fora da tela à direita, com um valor aleatório adicional entre 50 e 100 pixels.
- **`instance_create_layer(xx, yy, "Instances_Obstacules", obj_montainTop);`**: Cria uma instância do objeto `obj_montainTop` na camada `Instances_Obstacules` na posição `(xx, yy)`.
- **`instance_create_layer(xx, yy + irandom_range(obj_player.sprite_height + 70, obj_player.sprite_height + 90) , "Instances_Obstacules", obj_montainBottom);`**: Cria uma instância do objeto `obj_montainBottom` com uma posição vertical ajustada para garantir que a montanha inferior esteja abaixo da montanha superior, com uma distância variável.
- **`var tMinimum = 1 / (1 + (level * 0.1));`**: Calcula um valor mínimo para um temporizador ou intervalo baseado no nível atual. A dificuldade aumenta conforme o nível sobe.
- **`alarm[0] = random_range(tMinimum, 2) * room_speed;`**: Define um alarme para criar novas montanhas. O intervalo do alarme varia entre `tMinimum` e 2 segundos, ajustado pela velocidade da sala (`room_speed`).

## 4. **Desenho de Informações e Atualização**
```gml
/// @description Place

// Draw Place
draw_set_font(fnt_place);
draw_text(obj_place.sprite_width / 2 - 20, 20, "Place: " + string(int64(place)));
draw_text(obj_place.sprite_width / 2 - 20, 35, "Level: " + string(int64(level)));

// Draw Levels GUI
draw_sprite(spr_level, level - 1, room_width / 2, 60);
```

**Explicação:**
- **`draw_set_font(fnt_place);`**: Define a fonte para desenhar o texto de informações sobre o lugar e o nível.
- **`draw_text(obj_place.sprite_width / 2 - 20, 20, "Place: " + string(int64(place)));`**: Desenha o texto "Place: " seguido do valor da variável `place` na parte superior da tela.
- **`draw_text(obj_place.sprite_width / 2 - 20, 35, "Level: " + string(int64(level)));`**: Desenha o texto "Level: " seguido do valor da variável `level` logo abaixo do texto anterior.
- **`draw_sprite(spr_level, level - 1, room_width / 2, 60);`**: Desenha o sprite `spr_level` com base no nível atual do jogo. O índice do sprite é ajustado pelo nível (`level - 1`), posicionado na horizontal central da sala e a 60 pixels da parte superior.

```gml
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
```

**Explicação:**
- **`place += .2;`**: Incrementa a variável `place` a cada passo do jogo, o que pode ser usado para controlar o progresso ou a distância percorrida.
- **`if(place >= placeLevels)`**: Se o valor de `place` atinge ou excede `placeLevels`, o nível é aumentado.
- **`level++;`**: Incrementa o nível.
- **`placeLevels *= 1.8;`**: Aumenta o valor de `placeLevels` para ajustar a dificuldade ou o objetivo do próximo nível.
- **`audio_play_sound(snd_level, 5, false);`**: Toca o som associado à variável `snd_level` para sinalizar que o nível mudou.
- **`if(level == 9)`**: Se o nível atingir 9, muda para a próxima sala.
- **`room_goto_next();`**: Transita para a próxima sala no jogo.
- **`audio_pause_all();`**: Pausa todos os sons quando a transição de sala ocorre.
- **`layer_hspeed("Background_Floor", -level - 4);`** e **`layer_hspeed("Background", -level - 2);`**: Ajusta a velocidade horizontal de camadas específicas para criar um efeito de rolagem de fundo, que é mais rápido conforme o nível aumenta.

