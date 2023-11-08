# MOVIMENTAÇÃO E COLISÃO
A movimentação e colisão são dois conceitos importantes em desenvolvimento de jogos. Eles são essenciais para criar jogos que sejam divertidos e desafiadores.

**Movimentação**

A movimentação é o processo de mover um objeto de um ponto para outro. No Game Maker Studio, a movimentação pode ser controlada usando a linguagem GML.

Existem várias maneiras de mover um objeto no Game Maker Studio. Uma maneira é usar as funções `move_left()`, `move_right()`, `move_up()` e `move_down()`. Essas funções movem um objeto em uma direção específica.

Outra maneira de mover um objeto é usar a função `move_to()`. Essa função move um objeto para uma posição específica.

A movimentação também pode ser controlada usando os eventos `on_left_click()`, `on_right_click()`, `on_key_down()` e `on_key_up()`. Esses eventos são acionados quando o jogador clica com o mouse, pressiona uma tecla ou solta uma tecla.

**Colisão**

A colisão é o processo de verificar se dois objetos estão se tocando. No Game Maker Studio, a colisão pode ser detectada usando a função `collision_point()`.

Essa função retorna um valor booleano que indica se um objeto está colidindo com outro objeto.

A colisão também pode ser detectada usando os eventos `on_collision_begin()`, `on_collision_end()` e `on_collision_stay()`. Esses eventos são acionados quando ocorre uma colisão.

**Aplicações**

A movimentação e colisão podem ser usadas para criar uma variedade de efeitos em jogos. Por exemplo, elas podem ser usadas para:

* Permitir que os jogadores controlem seus personagens
* Criar obstáculos que os jogadores precisam evitar
* Criar efeitos de física
* Criar interações entre objetos

**Exemplo**

Aqui está um exemplo de como mover um objeto no Game Maker Studio:

```gml
// Cria um objeto chamado "player"
object player
{
    // Define a posição inicial do jogador
    position = (64, 64);

    // Define a velocidade do jogador
    speed = 5;

    // Define o evento que será acionado quando o jogador for clicado
    event on_left_click()
    {
        // Move o jogador para a esquerda
        move_left();
    }
}

// Cria uma sala chamada "room1"
room room1
{
    // Adiciona o objeto "player" à sala
    add_object(player);
}
```

Neste exemplo, o objeto "player" é criado com uma posição inicial de (64, 64) e uma velocidade de 5. O evento `on_left_click()` é definido para mover o jogador para a esquerda.

Quando o jogador clica no objeto "player", o evento `on_left_click()` é acionado. A função `move_left()` é então chamada para mover o jogador para a esquerda.

Aqui está um exemplo de como detectar colisão no Game Maker Studio:

```gml
// Cria um objeto chamado "block"
object block
{
    // Define a posição inicial do bloco
    position = (64, 64);
}

// Cria uma sala chamada "room1"
room room1
{
    // Adiciona o objeto "block" à sala
    add_object(block);

    // Define o evento que será acionado quando o jogador colidir com o bloco
    event on_collision_begin(other)
    {
        // Executa uma ação quando o jogador colidir com o bloco
        print("Você colidiu com o bloco!");
    }
}
```

Neste exemplo, o objeto "block" é criado com uma posição inicial de (64, 64). O evento `on_collision_begin()` é definido para executar uma ação quando o jogador colidir com o bloco.

Quando o jogador colidir com o bloco, o evento `on_collision_begin()` será acionado. A mensagem "Você colidiu com o bloco!" será então impressa na tela.