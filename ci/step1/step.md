1. Crie uma pasta `cicd-exec01-calculadora-js`

2. Acesse a pasta `cicd-exec01-calculadora-js`

3. Crie um repositório GIT para o exercicio.

4. Inicialize o projeto Javascript.
```
    npm init
```
5. Crie uma pasta `src`

6. Crie o commit inicial do seu projeto com a estrutura básica;

7. Crie um branch ```develop```

8. No branch `develop`, crie um arquivo `calculadora.js` dentro da pasta `src` com a **função adição**:

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

9. Faça o 1º Commit do projeto.

10. Ainda no branch `develop`, altere o arquivo `calculadora.js` adicionando a **função subtração**. 

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

11. Faça o 2º Commit do projeto.

12. A partir do branch develop, **crie um novo branch** chamado `feature-multiplicacao`

13. Já no branch `feature-multiplicacao`, altere o arquivo `calculadora.js` adicionando a **função multiplicação**.

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
11. Faça o 3º Commit do projeto.

14. A partir do branch develop, **crie um novo branch** chamado `feature-divisao`

13. Já no branch `feature-divisao`, altere o arquivo `calculadora.js` adicionando a **função divisão**. 

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

11. Faça o 4º Commit do projeto.


12. Vá para o branch *develop* e faça o merge com o branch `feature-multiplicacao`


11. Faça o 4º Commit do projeto.

10. Ainda no branch `develop`, altere o arquivo `calculadora.js` adicionando a **função potenciação**.

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

12. Vá para o branch *feature-divisao* e faça o merge com o branch `develop`



