# MANUAL
## 1. **INSTALAÇÃO DO GAMEMAKER STUDIO**
1. **Download e Instalação:**
   - Vá para o site oficial do GameMaker Studio: [GameMaker Studio](https://www.yoyogames.com/get).
   - Escolha a versão que você deseja (há uma versão gratuita e versões pagas com recursos adicionais).
   - Baixe o instalador apropriado para o seu sistema operacional (Windows ou macOS).
   - Execute o instalador e siga as instruções na tela para completar a instalação.

2. **Criação de Conta:**
   - Após a instalação, abra o GameMaker Studio.
   - Você precisará criar uma conta ou fazer login com uma conta existente se for um usuário novo.

## 2. **CONFIGURAÇÃO INICIAL**
1. **Configurar o Ambiente de Trabalho:**
   - Ao iniciar o GameMaker Studio pela primeira vez, você será guiado por um assistente de configuração. Siga as instruções para configurar o ambiente de trabalho.
   - Configure o idioma, temas e outras preferências pessoais.

2. **Atualizar o GameMaker Studio:**
   - Verifique se há atualizações disponíveis e instale-as para garantir que você está usando a versão mais recente do software.

3. **Familiarizar-se com a Interface:**
   - Explore as principais áreas da interface do GameMaker Studio, como o painel de recursos, a janela de edição de objetos, e o editor de código.

## 3. **CRIAR UM NOVO PROJETO**
1. **Iniciar um Novo Projeto:**
   - Abra o GameMaker Studio.
   - Selecione `New Project` na tela inicial.
   - Escolha `GameMaker Language` (GML) para programação com a linguagem do GameMaker ou `Drag and Drop` (DnD) para programação visual.
   - Dê um nome ao seu projeto e selecione um local para salvá-lo.

## 4. **ADICIONAR RECURSOS**
1. **Criar Sprites:**
   - Vá para a aba `Sprites` no painel de recursos.
   - Clique com o botão direito e selecione `Create Sprite`.
   - Dê um nome ao seu sprite e adicione uma imagem clicando em `Edit Image`. Crie ou importe uma imagem para seu personagem ou objeto.

2. **Criar Objetos:**
   - Vá para a aba `Objects`.
   - Clique com o botão direito e selecione `Create Object`.
   - Dê um nome ao seu objeto e defina seu sprite selecionando o sprite que você criou anteriormente.

3. **Adicionar Eventos e Ações:**
   - Com o objeto selecionado, clique em `Add Event` para adicionar eventos como `Create`, `Step`, `Collision`, etc.
   - Para cada evento, adicione ações usando `Actions` ou escreva código GML no editor de código.

## 5. **CRIAR O PRIMEIRO JOGO**
1. **Configurar o Room (Cena):**
   - Vá para a aba `Rooms`.
   - Clique com o botão direito e selecione `Create Room`.
   - Dê um nome ao seu room e configure o tamanho e as propriedades do cenário.
   - Arraste e solte os objetos que você criou no room para adicionar elementos ao jogo.

2. **Adicionar Controle ao Personagem:**
   - Adicione um evento `Step` ao objeto do personagem.
   - Use o código GML para controlar o movimento do personagem, por exemplo:

   ```gml
   // Movimento básico do personagem
   if (keyboard_check(vk_right)) {
       x += 4; // Move para a direita
   }
   if (keyboard_check(vk_left)) {
       x -= 4; // Move para a esquerda
   }
   if (keyboard_check_pressed(vk_space)) {
       // Adicione ação para pular ou atirar
   }
   ```

3. **Executar o Jogo:**
   - Clique em `Run` para compilar e executar seu jogo.
   - Teste as funcionalidades e faça ajustes conforme necessário.

## 6. **SALVAR E EXPORTAR**
1. **Salvar o Projeto:**
   - Salve seu projeto regularmente para evitar perda de dados.
   - Vá para `File` > `Save` para salvar o projeto.

2. **Exportar o Jogo:**
   - Para exportar seu jogo, vá para `File` > `Export Project`.
   - Escolha o formato de exportação desejado (por exemplo, Windows, macOS, HTML5).
   - Siga as instruções para gerar os arquivos executáveis ou de distribuição.

