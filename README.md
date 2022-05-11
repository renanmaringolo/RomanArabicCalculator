# README

Este repositório foi criado para propor a solução do seguinte desafio: Algarismos Romanos.

## <a name="tech_info"></a>Requisitos
* Docker: (v 20.10.14)

## Setup
1) Possuir Docker instalado na sua máquina (versão utilizada neste projeto de preferência)
2) Possuir Docker Compose instalado
3) Baixar este repositório com o comando: git clone git@github.com:SelecaoGlobocom/renan-proenca.git

### Testando a aplicação
Atualmente o projeto conta com 71.34% de cobertura de teste, de acordo com o SimpleCov. (está baixo por causa do HomeController - pulei teste de integração)

## Rodando o projeto localmente
1) Executar 'docker-compose build web'
2) Executar 'make web'

### Convertendo os Números
* Ao rodar a aplicação:
 - selecione a opção 1 para testar a conversão de números Romanos para Arábicos. Escolha um número e observe o output em Número Romano.

 - selecione a opção 2 para testar a conversão de números Arábicos para Romanos. Escolha um número e observe o output em Número Arábico.

 - selecione a opção 0 no Menu principal para sair, ou escolha "N" para não continuar com a aplicação. 

### Observação importante sobre o desenvolvimento:
- Gostaria de pontuar que, ao desenvolver essa APP, tentei de forma simples e objetiva resolver o problema em questão. Eu limitei no método o número convertido, uma vez que o número é infinito e eu não consegui resolver para o infinito, então, tecnicamente isto pode ser considerado um BUG. Procurei testar todos os métodos que criei. Único controller não testado, é o HomeController, pois fui fazendo na mão e julgo que não precisou de teste para isso. Por fim, dei uma melhorada colocando biblioteca para coverage e joguei para tudo dentro do Docker. Usei RegEx para lidar com Matchers que vem do terminal e comparar a quantidade de caracteres, dessa forma, consegui extrair e converter para numeros Arábicos.

## Gems
* RSpec (Ferramenta para criar testes automatizados. Gosto muito do padrão do RSpec, documentação bem tranquila de ler);
* Simplecov (indica o percentual de cobertura de testes do seu projeto);
* Byebug (ferramenta para debuggin, caso eu precise identificar alguma falha no meu teste e analisar como estão chegando dados);
* Rubocop (responsável por checar se o desenvolvedor está seguindo boas práticas de desenvolvimento em identação, atribuição de variáveis, definição de métodos, entre outros. Possui um arquivo onde o desenvolvedor pode escolher o que será checado pela gem, no meu caso configurei para que não visualizasse em aluns pontos de todo o projeto);
* Fuubar (cria uma barra carregável ao rodar os testes)
