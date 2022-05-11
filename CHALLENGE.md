# README

Este repositório foi criado para propor a solução da conversão de números Arábicos para números Inteiros.

## <a name="tech_info"></a>Requisitos
* Docker: (v 20.10.14)

## Setup
1) Possuir Docker instalado na sua máquina (versão utilizada neste projeto de preferência)
2) Possuir Docker Compose instalado
3) Baixar este repositório com o comando: git clone git@github.com:renanmaringolo/RomanArabicCalculator.git

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
- Gostaria de pontuar que, ao desenvolver essa APP, tentei de forma simples e objetiva resolver o problema em questão. Usei recursão para lidar com iterações de números, que são infinitos. A arquitetura é simples, mas bem dividida em: `App.rb`, responsável por rodar a aplicação em si - `Controller` responsável por chamar os `Services` e, os `Services`, responsáveis por receberem a lógica.

## Gems
* RSpec (Ferramenta para criar testes automatizados. Gosto muito do padrão do RSpec, documentação bem tranquila de ler);
* Simplecov (indica o percentual de cobertura de testes do seu projeto);
* Byebug (ferramenta para debuggin, caso eu precise identificar alguma falha no meu teste e analisar como estão chegando dados);
* Rubocop (responsável por checar se o desenvolvedor está seguindo boas práticas de desenvolvimento em identação, atribuição de variáveis, definição de métodos, entre outros. Possui um arquivo onde o desenvolvedor pode escolher o que será checado pela gem, no meu caso configurei para que não visualizasse em aluns pontos de todo o projeto);
* Fuubar (cria uma barra carregável ao rodar os testes)
