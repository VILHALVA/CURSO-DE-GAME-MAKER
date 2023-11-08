# VIDA 
Para criar um sistema de vida do jogador no Game Maker Studio, você precisará criar uma variável para representar a vida do jogador. Esta variável deve ser do tipo inteiro e ter um valor inicial de 100.

```gml
// Cria uma variável para representar a vida do jogador
var hp = 100;
```

Depois de criar a variável para representar a vida do jogador, você precisará definir o comportamento do jogador quando seu HP cair para zero. Isso pode ser feito usando um evento.

```gml
// Evento on_death()
event on_death()
{
    // Termina o jogo
    game_over();
}
```

Este código terminará o jogo quando o HP do jogador cair para zero.

Para causar dano ao jogador, você pode usar a função `hp -= damage`. Por exemplo:

```gml
// Causa dano ao jogador
hp -= damage;
```

Este código reduzirá o HP do jogador em uma quantidade igual ao dano causado.

Aqui está um exemplo de como criar um sistema de vida do jogador no Game Maker Studio:

```gml
// Cria uma variável para representar a vida do jogador
var hp = 100;

// Evento on_death()
event on_death()
{
    // Termina o jogo
    game_over();
}

// Evento on_collision_begin()
event on_collision_begin(other)
{
    // Causa dano ao jogador
    hp -= other.damage;
}
```

Este código criará uma variável para representar a vida do jogador e definirá o comportamento do jogador quando seu HP cair para zero. Ele também definirá o comportamento do jogador quando ele colidir com um objeto que causa dano.

Aqui estão algumas dicas para criar um sistema de vida do jogador eficaz no Game Maker Studio:

* **Use uma variável do tipo inteiro para representar a vida do jogador.** Isso garantirá que a vida do jogador seja um valor inteiro.
* **Determine o valor inicial da vida do jogador.** O valor inicial da vida do jogador determina a quantidade de dano que o jogador pode suportar antes de morrer.
* **Defina o comportamento do jogador quando seu HP cair para zero.** Isso pode incluir terminar o jogo, reiniciar o jogador ou exibir uma mensagem de aviso.

Você também pode personalizar o sistema de vida do jogador de acordo com suas necessidades. Por exemplo, você pode adicionar um sistema de regeneração de vida ou um sistema de cura.