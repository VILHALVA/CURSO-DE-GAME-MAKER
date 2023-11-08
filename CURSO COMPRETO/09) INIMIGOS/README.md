# INIMIGOS
Para colocar inimigos no Game Maker Studio, você precisará criar um objeto para representar o inimigo. Este objeto deve ter as seguintes propriedades:

* **Imagem:** A imagem que representa o inimigo.
* **Velocidade:** A velocidade com que o inimigo se move.
* **Dano:** A quantidade de dano que o inimigo causa ao jogador.
* **Vida:** A quantidade de vida que o inimigo tem.

Aqui está um exemplo de como criar um objeto para representar um inimigo:

```gml
// Cria um objeto chamado "enemy"
object enemy
{
    // Define a imagem do inimigo
    image = "enemy.png";

    // Define a velocidade do inimigo
    speed = 10;

    // Define o dano do inimigo
    damage = 10;

    // Define a vida do inimigo
    life = 100;
}
```

Depois de criar o objeto para representar o inimigo, você precisará definir o comportamento do inimigo. Isso pode ser feito usando eventos e ações.

Por exemplo, você pode definir o evento `on_create()` para iniciar o inimigo movendo-se para a frente. Você também pode definir o evento `on_collision_begin()` para causar dano ao jogador quando o inimigo colidir com ele.

Aqui está um exemplo de como definir o comportamento de um inimigo:

```gml
// Cria um objeto chamado "enemy"
object enemy
{
    // Define a imagem do inimigo
    image = "enemy.png";

    // Define a velocidade do inimigo
    speed = 10;

    // Define o dano do inimigo
    damage = 10;

    // Define a vida do inimigo
    life = 100;

    // Evento on_create()
    event on_create()
    {
        // Move o inimigo para a frente
        move_towards_point(mouse_x, mouse_y);
    }

    // Evento on_collision_begin()
    event on_collision_begin(other)
    {
        // Causa dano ao jogador
        other.hp -= damage;
    }
}
```

Para colocar um inimigo no mapa, você pode usar a função `instance_create()`. Por exemplo:

```gml
// Cria um novo inimigo
instance_create(100, 100, enemy);
```

Este código criará um novo inimigo no local (100, 100) no mapa.

Você também pode usar a função `instance_create_layer()` para criar um inimigo em uma camada específica do mapa. Por exemplo:

```gml
// Cria um novo inimigo na camada 2
instance_create_layer(2, 100, 100, enemy);
```

Este código criará um novo inimigo na camada 2 do mapa, no local (100, 100).

Para controlar o comportamento dos inimigos no jogo, você pode usar eventos e ações. Por exemplo, você pode usar o evento `on_step()` para mover os inimigos ou o evento `on_alarm()` para executar uma ação em um determinado momento.

Aqui está um exemplo de como controlar o comportamento dos inimigos:

```gml
// Evento on_step()
event on_step()
{
    // Move os inimigos para a frente
    move_towards_point(mouse_x, mouse_y);
}

// Evento on_alarm(0)
event on_alarm(0)
{
    // Ataca o jogador
    instance_create(player.x, player.y, projectile);
}
```

Este código moverá os inimigos para a frente a cada passo do jogo e atacará o jogador a cada 1 segundo.

Você pode usar a criatividade para criar inimigos variados e desafiantes para seus jogos.