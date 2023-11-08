# TIROS
Para criar tiros de bala no Game Maker Studio, você precisará criar um objeto para representar os tiros. Este objeto deve ter as seguintes propriedades:

* **Imagem:** A imagem que representa o tiro.
* **Velocidade:** A velocidade com que o tiro se move.
* **Alcance:** A distância que o tiro pode viajar antes de desaparecer.
* **Dano:** A quantidade de dano que o tiro causa ao atingir um alvo.
* **Precisão:** A probabilidade de o tiro atingir um alvo.

Aqui está um exemplo de como criar um objeto para representar tiros de bala:

```gml
// Cria um objeto chamado "bullet"
object bullet
{
    // Define a imagem do tiro
    image = "bullet.png";

    // Define a velocidade do tiro
    speed = 10;

    // Define o alcance do tiro
    range = 100;

    // Define o dano do tiro
    damage = 10;

    // Define a precisão do tiro
    accuracy = 0.8;
}
```

Depois de criar o objeto para representar os tiros, você precisará definir o comportamento do tiro. Isso pode ser feito usando eventos e ações.

Por exemplo, você pode definir o evento `on_create()` para iniciar o tiro movendo-se para a frente. Você também pode definir o evento `on_collision_begin()` para causar dano a um alvo quando o tiro colidir com ele.

Aqui está um exemplo de como definir o comportamento de um tiro:

```gml
// Cria um objeto chamado "bullet"
object bullet
{
    // Define a imagem do tiro
    image = "bullet.png";

    // Define a velocidade do tiro
    speed = 10;

    // Define o alcance do tiro
    range = 100;

    // Define o dano do tiro
    damage = 10;

    // Define a precisão do tiro
    accuracy = 0.8;

    // Evento on_create()
    event on_create()
    {
        // Move o tiro para a frente
        move_towards_point(mouse_x, mouse_y);
    }

    // Evento on_collision_begin()
    event on_collision_begin(other)
    {
        // Causa dano ao alvo
        other.hp -= damage;
    }
}
```

Para disparar um tiro, você pode usar a função `instance_create()` para criar um novo objeto de tiro. Por exemplo:

```gml
// Cria um novo tiro
instance_create(player.x, player.y, bullet);
```

Este código criará um novo tiro no local do jogador. O tiro será então movido para a frente e causará dano a qualquer alvo que colidir com ele.

Aqui estão algumas dicas para criar tiros de bala eficazes no Game Maker Studio:

* **Use uma imagem de alta resolução para os tiros.** Isso os tornará mais visíveis para os jogadores.
* **Determine o alcance e a velocidade dos tiros.** O alcance determina a distância que os tiros podem viajar antes de desaparecerem. A velocidade determina a rapidez com que os tiros se movem.
* **Determine o dano dos tiros.** O dano determina a quantidade de dano que os tiros causam a um alvo.
* **Determine a precisão dos tiros.** A precisão determina a probabilidade de os tiros atingirem um alvo.