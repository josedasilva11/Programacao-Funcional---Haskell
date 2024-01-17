# Sintaxe Básica de Haskell
Imagine que Haskell é uma linguagem onde dás instruções ao computador de maneira diferente do que estás acostumado noutras linguagens como Python ou Java.

Exemplo de Função:

```haskell
soma a b = a + b
```
Aqui, soma é o nome da função. a e b são os parâmetros (valores que passas para a função). Esta função simplesmente soma a e b.

## Tipos de Dados em Haskell
Haskell é muito específico com os tipos de dados:

- **Int**: Para números inteiros. Exemplo: 5, -3, 42.
- **Float**: Para números decimais. Exemplo: 3.14, -0.001.
- **Char**: Para caracteres individuais. Exemplo: 'a', 'z', '2'.
- **String**: Para textos ou sequências de caracteres. Exemplo: "Olá, mundo".
  
## Construtores de Tipo

Podes criar os teus próprios tipos de dados. Por exemplo:

```haskell
data Ampulheta = Cheia | Meia | Vazia
```
Aqui, Ampulheta é um tipo de dado que definiste, que pode ser Cheia, Meia ou Vazia.

## Recursão
Recursão é uma maneira de fazer repetições ou loops. Diferente de outras linguagens, Haskell usa muito a recursão.

Exemplo de Fatorial:

```haskell
fatorial 0 = 1
fatorial n = n * fatorial (n - 1)
```
Esta função calcula o fatorial de um número. Se chamares fatorial 5, ela fará 5 * 4 * 3 * 2 * 1.

## Funções Puras vs. Impuras
Funções Puras: Retornam sempre o mesmo resultado com os mesmos argumentos e não alteram nada fora delas. Exemplo:

```haskell
dobraNumero x = x * 2
dobraNumero 4 sempre retornará 8.
```

Funções Impuras: Podem ter resultados diferentes com os mesmos argumentos ou afetar outras partes do programa. Exemplo: uma função que lê a hora atual. Cada vez que a chamas, o resultado pode ser diferente.

## Listas

Em Haskell, uma lista é uma sequência de elementos do mesmo tipo. Imagina uma fila de pessoas, onde todas devem ser adultas, ou todas crianças. Da mesma forma, uma lista em Haskell deve ter elementos do mesmo tipo.

Operações com Listas:

***head***: Esta função pega no primeiro elemento da lista.

Exemplo: head [1, 2, 3] resulta em 1, porque 1 é o primeiro elemento da lista [1, 2, 3].
***tail***: Esta função pega em tudo exceto no primeiro elemento da lista.

Exemplo: tail [1, 2, 3] resulta em [2, 3], que são todos os elementos da lista exceto o primeiro.
***length***: Esta função conta quantos elementos existem na lista.

Exemplo: length [1, 2, 3] resulta em 3, porque há três elementos na lista [1, 2, 3].
***reverse***: Esta função inverte a ordem dos elementos da lista.

Exemplo: reverse [1, 2, 3] resulta em [3, 2, 1], que é a lista [1, 2, 3] com a ordem dos elementos invertida.





























