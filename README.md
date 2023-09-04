<p align="center">
  <img  src="https://github.com/joselainejrs/git-github/blob/main/image.png" width="150px" alt="Imagem">
</p>

<h2 align="center">
Specflow em VSCode
</h2>

## Introdução

Para começar precisei instalar o dotnet. Nesse artigo estou levando em consideração que já tenha instalado o VSCode na sua maquina.
Então para baixar pesquise por sdk.dotnet no Google, você verá o link de download do site `https://dotnet.microsoft.com/en-us/download`.
Indico baixar a versão recomendada no site, assim que você clicar no botão de download será encaminhado para um pequeno passo a passo de como concluir o download, segue as instruções que vai dar tudo certo!

## Extensões

Precisamos baixar uma extensão de suporte na linguagem em C#, ela fornece o recurso necessário para o nosso desenvolvimento.
<p >
  <img  src="https://github.com/joselainejrs/git-github/blob/main/image.png" width="150px" alt="Imagem">
</p>
[Imagem]

Baixaremos também a extensão do Specflow Step Definition Generator, que funciona como ferramenta para gerar a definição de etapa e que auxilia na geração das classes Binding.
<p >
  <img  src="https://github.com/joselainejrs/git-github/blob/main/image.png" width="150px" alt="Imagem">
</p>
[Imagem]

E por último o Cucumber(Gherkin) Full Support que serve para habilitar os principais recursos do Specflow no VSCode.
<p >
  <img  src="https://github.com/joselainejrs/git-github/blob/main/image.png" width="150px" alt="Imagem">
</p>
[Imagem]

as instalações e a configurações foi seguindo conforme as informações do site `https://marketplace.visualstudio.com/items?itemName=alexkrechik.cucumberautocomplete`.

## Inicio do projeto

Criei uma pasta com o nome testesSpecFlow.
Para iniciar o projeto usei os comandos que temos na própria documentação do SpecFlow. São o comando para dar um start no projeto.

```
$ dotnet new specflowproject
```
O gera um projeto do zero com o comando anterior ele vem "com xUnit como provedor de teste de unidade e direcionamento ao .NET Core 3.1. Um pacote completo com estrutura pré-definidas, que auxiliar no desenvolvimento".
[Imagem]

Mas se deixarmos dessa maneira, haverá erros no terminal. O erro apresentado será sobre a versão do .NET Core.
No arquivo "testesSpecFlow.csproj", vamos alterar no campo "TargetFramework" a versão.
[Imagem]

Vou colocar versão "net7.0", para que rode na versão atual do .NET Core.
E para atualização do xnuit que é de teste de unidade rodei o comando, para que force a instalação.

```
$dotnet new xunit --force
```

## Organização das pastas

Assim que utilizamos o comando do specflow, vem algumas pastas carregadas que são:
- <b>Drives:</b> Pode ser utilizado para inclusão de objetos ou entre outros para serem utilizados para manipulação.
- <b>Features:</b> É onde criamos todos os arquivos necessário dentro da pasta que referencia a parte de cenários de teste
- <b>Steps:</b> É onde fica as implementações que mapeiam o que foi definidos nas Fetuares para configurar os testes.

## Montando os nossos testes

A criação dos testes serão feito dentro da pasta Features, assim que a pasta é gerada ela vem com um arquivo de exemplo.
[Imagem]

Conforme a imagem, os nomes apresentado no exemplo do teste é:

- <b>Feature:</b> É o local que colocamos uma descrição para que identificamos claramente o que representa o arquivo de teste;
- <b>Scenario ou Scenario Outline:</b> Ele é o nosso Cenário, indico colocar um nome que representa o que será o teste desenvolvido desse campo;
- <b>Given:</b> (em português é Dado)  Serve para o contexto inicial
- <strong>And:</strong>(em português é E) Serve para escrever caso tenha mais uma ação a seguir
- <b>When:</b> (em português é Quando) Serve para incluir um evento, quando espera que tenha uma ação de algo
- <b>Then:</b> (em português é Então) Serve para escrever o resultado esperado

O @, ele representa as tag's, que você nomeia para identifica-lo no teste. As "Tags são marcadores que podem ser atribuídos a recursos e cenários. Atribuir um tag a um recurso é equivalente a atribuir o tag a todos os cenários no arquivo de recurso".

Tenha em mente que o "SpecFlow executa cada etapa em um cenário, uma de cada vez, na sequência em que você as escreveu. Quando SpecFlow tenta executar uma etapa, ele procura uma definição de etapa correspondente para executar."
  
## O meu teste

Os cenários de teste criado foi um para os operadores lógicos e outro de cadastro básicos. Para um outro a aprendizado usei o modelo Data-Driven Design para fazer teste simultâneo para ter ações diferentes no mesmo teste que serão as tabelas.
[Imagem]
[Imagem]

## Tabela

A tabela ajuda há estruturar melhor e incluir diferentes situações para serem realizadas
Na tabela podemos usar parâmetros <> delimitados, que são tipo uma "variável" que fazem referencia ao nosso cabeçalho da tabela e no SpecFlow ele substituirá esses parâmetros por valores que estão na tabela.


Então é isso pessoal, por agora… A medida que irei mergulhar no mesmo do teste atualizo essa documentação. Grande Abraço.

<h4 align="center">
Projeto desenvolvido por: Joselaine Romão Soares
</h4>
