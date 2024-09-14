### PROJETO JAVASCRIPT
1.	Crie uma pasta **uf-cicd-calcjs-nomealuno**
2.	Acesse a pasta **uf-cicd-calcjs-nomealuno**
3.	Crie um repositório GIT.
4.	Configure seu usuário e email
```
 git config --global user.email "<emai@gmail.com>"
 git config --global user.name "<NOME DO ALUNO>"
```
5.	Inicialize o projeto Javascript.
```
    npm init
```
6.	Crie uma pasta `src`
7.	Crie o commit inicial do seu projeto com a estrutura básica;
8.	Crie um branch `develop`
9.	No branch `develop`, crie um arquivo `calculadora.js` dentro da pasta `src` com a **função adição**:
```
    // Função de adição
    function add(a, b) {
        return a + b;
    }   

    // Exportar as funções
    module.exports = {
        add
    };    
```

10.	Faça o 2º Commit do projeto.
11.	Ainda no branch `develop`, altere o arquivo `calculadora.js` adicionando a **função subtração**. 

```
    // Função de subtração
    function subtract(a, b) {
        return a - b;
    }

    // Exportar as funções
    module.exports = {
        add,
        subtract
    };

```

12.	Faça o 3º Commit do projeto.
13.	A partir do branch develop, **crie um novo branch** chamado `feature-multiplicacao`
14.	Já no branch `feature-multiplicacao`, altere o arquivo `calculadora.js` adicionando a **função multiplicação**.
```
    // Função de multiplicação
    function multiply(a, b) {
        return a * b;
    }

    // Exportar as funções
    module.exports = {
      add,
      subtract,
      multiply
    };
  
```
15.	Faça o 4º Commit do projeto.

16.	A partir do branch develop, **crie um novo branch** chamado `feature-divisao`
17.	Já no branch `feature-divisao`, altere o arquivo `calculadora.js` adicionando a **função divisão**. 
```
    // Função de divisão
    function divide(a, b) {
        if (b === 0) {
        throw new Error("Divisão por zero não é permitida.");
        }
        return a / b;
    }

    // Exportar as funções
    module.exports = {
      add,
      subtract,
      divide,
    };
```

18.	Faça o 5º Commit do projeto.
19.	Vá para o branch *develop* e faça o merge com o branch `feature-multiplicacao`
20.	Faça o 6º Commit do projeto.
21.	Ainda no branch `develop`, altere o arquivo `calculadora.js` adicionando a **função potenciação**.
```
    // Função de potenciação
    function power(base, exponent) {
        return Math.pow(base, exponent);
    }

    // Exportar as funções
    module.exports = {
      add,
      subtract,
      multiply,
      power
    };

```
22.	Faça o 7º Commit do projeto.
23.	Vá para o branch *feature-divisao* e faça o merge com o branch `develop`
24.	Resolva o conflito gerado e faça o  8º Commit;
25.	Vá para o branch *develop* e faça o merge com o branch `feature-divisao`
26.	Adicione a biblioteca do JEST para execução dos testes unitário
```
npm install --save-dev jest
```
27.	No branch develop, crie o arquivo `calculadora.test.js` na pasta `src` com o conteúdo a seguir;
```
const { add, subtract, multiply, divide, power } = require('./calculadora');

describe('Funções Matemáticas Básicas', () => {
  
  // Teste da função de adição
  test('Deve adicionar dois números corretamente', () => {
    expect(add(1, 2)).toBe(3);
    expect(add(-1, 1)).toBe(0);
  });

  // Teste da função de subtração
  test('Deve subtrair dois números corretamente', () => {
    expect(subtract(5, 2)).toBe(3);
    expect(subtract(10, 20)).toBe(-10);
  });

  // Teste da função de multiplicação
  test('Deve multiplicar dois números corretamente', () => {
    expect(multiply(3, 4)).toBe(12);
    expect(multiply(-3, 4)).toBe(-12);
  });

  // Teste da função de divisão
  test('Deve dividir dois números corretamente', () => {
    expect(divide(10, 2)).toBe(5);
    expect(divide(9, 3)).toBe(3);
  });

  // Teste de divisão por zero
  test('Deve lançar erro ao tentar dividir por zero', () => {
    expect(() => divide(10, 0)).toThrow("Divisão por zero não é permitida.");
  });

  // Teste da função de potenciação
  test('Deve calcular a potenciação corretamente', () => {
    expect(power(2, 3)).toBe(8);  // 2^3 = 8
    expect(power(5, 2)).toBe(25); // 5^2 = 25
    expect(power(3, 0)).toBe(1);  // 3^0 = 1
    expect(power(7, -1)).toBeCloseTo(0.142857, 6); // 7^-1 = 1/7 = 0.142857...
  });
});
```
28.	Execute os testes unitários para verificar se tudo está ok;
```
npm test
```
29.	Faça o 9º Commit do projeto.
30.	Faça login no Repositorio NPM
```
    npm login --auth-type legacy
```
31.	Publique a versao no repositório NPM
```
    npm publish
```
32.	Acesse o repositório NPM e verifique se o a versão do projeto **uf-cicd-calcjs-nomealuno** foi adicionada.

33.	Atualize a chave SSH para envio do projeto para o github
```
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
```

34.	Acesse o link do ```https://github.com/settings/keys``` para cadastro de chave SSH
35.	Crie um repositório no github com o nome **uf-cicd-calcjs-nomealuno**
36.	Crie o arquivo `.gitignore` com o conteúdo gerado pelo site `https://gitignore.io/`  para aplicações node;
37.	Faça o envio do código do projeto para o github.
38.	Crie um arquivo em ```.github/workflows/ci.yml``` com o seguinte conteúdo:
```
name: CI Pipeline
on:
  push:
    branches:
      - main
  pull_request:
    branches:
      - main
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      # Passo 1: Fazer checkout do código
      - name: Check out the repository
        uses: actions/checkout@v3
```
39.	Faça o 10º Commit do projeto.
40.	Adicione a task de configuração do NodeJS
```
      # Passo 2: Instalar o Node.js
      - name: Set up Node.js
        uses: actions/setup-node@v3
        with:
          node-version: '16'
```
41.	Faça o 11º Commit do projeto.
42.	Adicione a task responsável por instalar as dependências do projeto
```
      # Passo 3: Instalar dependências do projeto
      - name: Install dependencies
        run: npm install
```
43.	Faça o 12º Commit do projeto.
44.	Adicione a task responsável pela execução dos testes do projeto
```
      # Passo 4: Rodar os testes unitários
      - name: Run tests
        run: npm test
```
45.	Faça o 13º Commit do projeto.
46.	Crie um segundo stage comado **publish** que será responsável pela publicação no repositório NPM;
```
  publish:
    runs-on: ubuntu-latest
    needs: build
    if: github.event_name == 'push' && github.ref == 'refs/heads/main'
    steps:
      # Passo 1: Fazer checkout do código
      - name: Check out the repository
        uses: actions/checkout@v3
```
47.	Faça o 14º Commit do projeto.
48.	Adicione a task de configuração do NodeJS
```
      # Passo 2: Instalar o Node.js
      - name: Set up Node.js
        uses: actions/setup-node@v3
        with:
          node-version: '16'
```
49.	Gere um TOKEN no repositório NPM e adicione no github como secret com o nome NPM_TOKEN
50.	Adicione a task de configuração de autenticação no NPM
```
      # Passo 3: Autenticar no NPM
      - name: Authenticate to npm
        run: echo "//registry.npmjs.org/:_authToken=${{ secrets.NPM_TOKEN }}" > ~/.npmrc
```
51.	Faça o 15º Commit do projeto.
52.	Adicione a task de publicação no NPM

```
      # Passo 4: Publicar no npm, se a versão tiver sido incrementada
      - name: Publish to npm
        run: npm publish
        env:
          NODE_AUTH_TOKEN: ${{ secrets.NPM_TOKEN }}
```
53.	Faça o 16º Commit do projeto.

54.	Faça o cadastro no SONARCLOUD e crie um projeto público com o nome `uf-cicd-calcjs-nomealuno`;

55.	Gere um TOKEN no SONARCLOUD e adicione no github como secret com o nome SONAR_TOKEN

56.	Adicione a task responsável por análise estática de código com o sonarcloud antes dos testes unitários;
```
      # Passo 4: Rodar análise de código com SonarCloud
      - name: SonarCloud Scan
        uses: SonarSource/sonarcloud-github-action@master
        env:
          SONAR_TOKEN: ${{ secrets.SONAR_TOKEN }}
```
57.	Crie o arquivo ` sonar-project.properties` com as seguintes propriedades:
```
# Chave única do projeto no SonarCloud
sonar.projectKey=<your-project-key>

# Organização do projeto no SonarCloud
sonar.organization=<your-organization-key>

# Linguagem principal do projeto
sonar.language=js

# Diretório com código fonte a ser analisado
sonar.sources=./src

# Diretório dos testes
sonar.tests=./tests

# Informa o nome da branch padrão (geralmente "main")
sonar.branch.name=main
```
58.	Faça o 17º Commit do projeto.

***
