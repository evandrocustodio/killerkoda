# Integração Contínua


## 🚀 Atividade 01 - Git Básico

Faça o exercício na sequencia e sempre copiando os passos já executados.

Caso passe de 1h será necessário reiniciar a atividade.


### 📋 Configure o autor e email padrão 
```
  git config --global user.email "you@example.com"
  git config --global user.name "Your Name"
```

1. Crie uma pasta chamada **Atividade01**.

```
mkdir Atividade01
```

2. Entre na pasta **Atividade01**.

```
cd Atividade01
```

3. Crie um novo repositório git a partir da pasta **Atividade01**.

```
git init
```

4. Crie um arquivo **README.md** no branch master

```
echo "OLÁ!!! Criando arquivo README" > README.md
```

5. Verifique o status do projeto git

```
git status
```

6. Adicione o arquivo README.md ao projeto git criado

```
git add README.md
```

7. Verifique o status novamente do projeto git

```
git status
```

8. Faça o primeiro commit;

```
git commit -m "commit inicial"
```


9. Verifique o histórico de logs do projeto
```
git log
```

10. Verifique a árvore de commits
```
git log --graph --decorate --oneline
```

11. Liste os branchs existente no projeto
```
git branch
```

12. Crie o branch develop
```
git checkout develop
```

13. Liste os branchs existente no projeto
```
git branch
```

14. Crie um arquivo arquivo01.txt, Adicione o arquivo arquivo01.txt ao branch develop, faça o commit; 

```
echo "Criando arquivo arquivo01.txt" > arquivo01.txt
git add arquivo01.txt
git commit -m "Adicionando arquivo01.txt ao develop"
```

15. Crie um arquivo arquivo02.txt. Adicione o arquivo arquivo02.txt ao branch develop e faça o commit.

```
echo "Criando arquivo arquivo02.txt" > arquivo02.txt
git add arquivo02.txt
git commit -m "Adicionando arquivo02.txt ao develop"
```

16. Crie o branch featureA a partir do branch Develop
```
git checkout -b featureA
```

17. Liste os branchs existente no projeto
```
git branch
```

18. Crie um arquivo arquivo03.txt, Adicione o arquivo arquivo03.txt ao branch featureA, faça o commit; 

```
echo "Criando arquivo arquivo03.txt" > arquivo03.txt
git add arquivo03.txt
git commit -m "Adicionando arquivo03.txt ao featureA"
```

19. Crie um arquivo arquivo04.txt, Adicione o arquivo arquivo04.txt ao branch featureA, faça o commit; 

```
echo "Criando arquivo arquivo04.txt" > arquivo04.txt
git add arquivo04.txt
git commit -m "Adicionando arquivo04.txt ao featureA"

```

20. Crie um arquivo arquivo05.txt, Adicione o arquivo arquivo05.txt ao branch develop, faça o commit; 

```
git checkout develop
echo "Criando arquivo arquivo05.txt" > arquivo05.txt
git add arquivo05.txt
git commit -m "Adicionando arquivo05.txt ao featureA"
```

21. Crie o branch **featureB** a partir do branch Develop
```
git checkout -b featureB
```


22. Crie um arquivo arquivo06.txt, Adicione o arquivo arquivo06.txt ao branch featureB, faça o commit; 

```
echo "Criando arquivo arquivo06.txt" > arquivo06.txt
git add arquivo06.txt
git commit -m "Adicionando arquivo06.txt ao featureB"
```

23. Crie um arquivo arquivo07.txt, Adicione o arquivo arquivo07.txt ao branch featureB, faça o commit; 

```
echo "Criando arquivo arquivo07.txt" > arquivo07.txt
git add arquivo07.txt
git commit -m "Adicionando arquivo07.txt ao featureB"
```


24. Crie um arquivo arquivo08.txt, Adicione o arquivo arquivo08.txt ao branch featureB, faça o commit; 

```
echo "Criando arquivo arquivo08.txt" > arquivo08.txt
git add arquivo07.txt
git commit -m "Adicionando arquivo08.txt ao featureB"
```

25. Retorne para o branch develop
```
git checkout develop
```

26. Crie um arquivo arquivo09.txt. Adicione o arquivo arquivo09.txt ao branch develop e faça o commit; 

```
echo "Criando arquivo arquivo09.txt" > arquivo09.txt
git add arquivo09.txt
git commit -m "Adicionando arquivo09.txt ao develop"
```

27. Crie o branch featureC a partir do branch Develop
```
git checkout -b featureC
```

28. Crie um arquivo arquivo10.txt, Adicione o arquivo arquivo10.txt ao branch featureC, faça o commit; 

```
echo "Criando arquivo arquivo10.txt" > arquivo10.txt
git add arquivo10.txt
git commit -m "Adicionando arquivo10.txt ao featureC"
```

29. Crie um arquivo arquivo11.txt, Adicione o arquivo arquivo11.txt ao branch featureC, faça o commit; 

```
echo "Criando arquivo arquivo11.txt" > arquivo11.txt
git add arquivo11.txt
git commit -m "Adicionando arquivo11.txt ao featureC"
```

30. Retorne para o branch master
```
git checkout master
```

31. Altere o arquivo README.md, Adicione a alteração ao branch master, faça o commit; 

```
echo "Alterando o arquivos README.md" > README.md
git add README.md
git commit -m "Alterando o conteúdo do README.md"
```

32. Retorne para o branch develop
```
git checkout develop
```

33. Faça o merge do featureC no branch develop
```
git merge featureC
```

34. Faça o merge do master no develop
```
git merge master
```

35. retorne para o branch master
```
git checkout master
```

36. Faça o merge do develop para o  master
```
git merge develop
```
