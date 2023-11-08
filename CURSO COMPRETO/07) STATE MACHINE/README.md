# STATE MACHINE
**State Machine** é um padrão de design de software que permite que um objeto ou sistema alterne entre diferentes estados, cada um com seu próprio comportamento.

No Game Maker Studio, as máquinas de estados são uma maneira poderosa de controlar o comportamento de objetos e sistemas. Elas permitem que você crie personagens, inimigos, obstáculos e outros elementos de jogo que podem mudar seu comportamento em resposta a eventos no jogo.

**Como funciona uma State Machine?**

Uma máquina de estados é composta de estados e transições. Cada estado representa um comportamento específico, e cada transição representa uma mudança de um estado para outro.

Quando um estado é definido, você especifica o comportamento desse estado. Isso pode incluir o movimento do objeto, a animação do objeto, a lógica de colisão do objeto e outras ações.

Quando uma transição é definida, você especifica os eventos que precisam ocorrer para que o objeto mude de um estado para outro. Isso pode incluir pressionar uma tecla, clicar no mouse ou colidir com outro objeto.

**Como criar uma State Machine no Game Maker Studio?**

Para criar uma máquina de estados no Game Maker Studio, você precisará criar um objeto para representar o estado atual do objeto ou sistema. Esse objeto deve ter uma variável para armazenar o estado atual do objeto ou sistema.

Você também precisará criar eventos para lidar com as transições de estado. Esses eventos devem verificar se os eventos especificados ocorreram e, se forem, mudar a variável de estado para o novo estado.

**Exemplo de uma State Machine no Game Maker Studio**

Considere um personagem que pode andar, correr e atacar. A máquina de estados para esse personagem pode ser representada da seguinte forma:

```gml
// Cria uma variável para armazenar o estado atual do personagem
var state = "walking";

// Estado "walking" (andar)
event on_left_click()
{
    // Muda para o estado "running" (correr)
    state = "running";
}

event on_right_click()
{
    // Muda para o estado "attacking" (atacar)
    state = "attacking";
}

// Estado "running" (correr)
event on_key_press(key, scancode)
{
    if (key == "s")
    {
        // Muda para o estado "shooting" (atirar)
        state = "shooting";
    }
}

// Estado "attacking" (atacar)
event on_collision_begin(other)
{
    // Causa dano ao alvo
    other.hp -= damage;
}

// Estado "shooting" (atirar)
event on_left_click()
{
    // Dispara um tiro
    instance_create(player.x, player.y, projectile);
}
```

Neste exemplo, o personagem começa no estado "walking" (andar). Quando o jogador clica com o botão esquerdo do mouse, o personagem muda para o estado "running" (correr). Quando o jogador clica com o botão direito do mouse, o personagem muda para o estado "attacking" (atacar). Quando o jogador pressiona a tecla "s", o personagem muda para o estado "shooting" (atirar). Quando o personagem colide com outro objeto, o personagem causa dano ao alvo. Quando o personagem dispara um tiro, um novo objeto de projétil é criado.

**Vantagens de usar State Machines**

As máquinas de estados têm várias vantagens em comparação com outros métodos de controle de comportamento. Elas são:

* **Fáceis de entender e manter:** As máquinas de estados são fáceis de entender e manter, pois elas representam o comportamento do objeto ou sistema de uma maneira clara e organizada.
* **Flexíveis:** As máquinas de estados são flexíveis, pois elas podem ser facilmente alteradas para acomodar novos comportamentos ou requisitos.
* **Reutilizáveis:** As máquinas de estados podem ser reutilizadas para diferentes objetos ou sistemas, o que pode economizar tempo e esforço de desenvolvimento.

**Conclusão**

As máquinas de estados são uma ferramenta poderosa que pode ser usada para criar comportamentos complexos e dinâmicos em jogos. Elas são fáceis de entender, flexíveis e reutilizáveis, tornando-as uma escolha ideal para desenvolvedores de jogos.