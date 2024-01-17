# Sintaxe Básica de Haskell
Imagine que Haskell é uma linguagem onde dás instruções ao computador de maneira diferente do que estás acostumado noutras linguagens como Python ou Java.

Exemplo de Função:

```haskell
soma a b = a + b
```
Aqui, soma é o nome da função. a e b são os parâmetros (valores que passas para a função). Esta função simplesmente soma a e b.

# Tipos de Dados em Haskell
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

# Listas

Em Haskell, uma lista é uma sequência de elementos do mesmo tipo. Imagina uma fila de pessoas, onde todas devem ser adultas, ou todas crianças. Da mesma forma, uma lista em Haskell deve ter elementos do mesmo tipo.

## Operações com Listas:

- ***head***: Esta função pega no primeiro elemento da lista.

***Exemplo: head [1, 2, 3]*** resulta em 1, porque 1 é o primeiro elemento da lista ***[1, 2, 3]***.

- ***tail***: Esta função pega em tudo exceto no primeiro elemento da lista.

***Exemplo: tail [1, 2, 3]*** resulta em ***[2, 3]***, que são todos os elementos da lista exceto o primeiro.

- ***length***: Esta função conta quantos elementos existem na lista.

***Exemplo: length [1, 2, 3]*** resulta em 3, porque há três elementos na lista ***[1, 2, 3]***.

- ***reverse***: Esta função inverte a ordem dos elementos da lista.

***Exemplo: reverse [1, 2, 3]*** resulta em ***[3, 2, 1]***, que é a lista ***[1, 2, 3]*** com a ordem dos elementos invertida.


# Tuplas

Uma tupla é como uma caixa que pode conter uma combinação de diferentes tipos de itens. Por exemplo, podes ter uma caixa com um livro, uma maçã e uma caneta.

***Exemplo de Tupla: (1, "Hello").*** Esta tupla contém dois elementos: um número (1) e um texto ("Hello").

## Tipos de Dados Personalizados
Podes criar tipos de dados que se ajustem especificamente ao que precisas no teu programa. É como se estivesses a inventar um novo tipo de caixa para organizar as tuas coisas da maneira que quiseres.

Exemplo:

```haskell
data Shape = Circle Float | Rectangle Float Float
```
Aqui, Shape é um novo tipo de dado que criaste. Ele pode ser um Circle (Círculo) com um número a representar o raio, ou um Rectangle (Retângulo) com dois números a representar largura e altura.

- ***Circle:*** Circle 5 representa um círculo com raio 5.
- ***Rectangle:*** Rectangle 4 3 representa um retângulo com largura 4 e altura 3.


## Tipos Básicos
Resumindo assim os tipos:

- ***Int***:

É um número inteiro, como 5, -3, ou 42.
Tem um tamanho fixo, o que significa que ele tem um limite para quão grande ou pequeno pode ser.

- ***Integer***:

Também é um número inteiro, mas pode ser tão grande quanto precisares.
Útil para cálculos com números muito grandes, como em criptografia.

- ***Float***:

Representa números com casas decimais, como 3.14 ou -0.01.
Tem precisão simples, o que é suficiente para muitos cálculos, mas não todos.

- ***Double***:

Similar ao Float, mas com o dobro da precisão.
Melhor para cálculos científicos ou quando precisas de mais precisão.

- ***Bool***:

Só pode ser True ou False.
Usado para lógica e condições, como em testes se algo é verdadeiro ou falso.

- ***Char***:

Representa um único caractere, como 'a', 'z', ou '9'.
Usado para construir textos ou trabalhar com caracteres individuais.

- ***String***:

Uma sequência de caracteres.
Basicamente, é como uma palavra ou frase, como "Olá" ou "Haskell é fixe".

## Tipos Compostos

- ***Listas***:

Uma coleção de elementos do mesmo tipo.
Exemplo: [1, 2, 3] é uma lista de números inteiros.

- ***Tuplas***:

Coleção de elementos de diferentes tipos.
Exemplo: (1, "Hello", True) é uma tupla que contém um número, uma palavra e um valor booleano.

## Tipos de Dados Personalizados

- ***Tipos Algébricos de Dados (ADTs):***
- Crias os teus próprios tipos.
Exemplo: data Color = Red | Green | Blue define um tipo Color que pode ser Red, Green, ou Blue.


## Tipos de Função

- ***Funções:***
As funções em Haskell também são um tipo.
Exemplo: Uma função que soma dois números (soma x y = x + y) tem tipo Int -> Int -> Int.

## Tipos Especiais

- ***Maybe:***

Representa um valor que pode existir ou não.
Exemplo: Maybe Int pode ser Just 5 (existe um número) ou Nothing (não existe número).

- ***Either:***

Representa um valor que pode ser de um de dois tipos.
Exemplo: Either String Int pode ser Left "erro" (um erro com uma mensagem) ou Right 42 (um número inteiro válido).

## Tipos Parametrizados e Polimórficos

- ***Tipos Parametrizados:***
São tipos que funcionam com vários outros tipos.
Exemplo: A lista [a] pode ser uma lista de qualquer coisa (a é o parâmetro que pode ser qualquer tipo).

## Tipos de Restrição de Classe
- ***Restrições de Classe:***
Algumas funções só funcionam com tipos que têm certas propriedades.
Exemplo: Para comparar dois valores com ==, eles precisam ser do tipo Eq.

## Tipos de Função de Ordem Superior
- ***Funções de Ordem Superior:***
São funções que podem receber outras funções como argumentos ou retornar outras funções.
Exemplo: map é uma função que recebe uma função e uma lista, e aplica essa função a cada elemento da lista.























