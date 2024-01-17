# Sintaxe Básica de Haskell
Imagine que Haskell é uma linguagem onde dás instruções ao computador de maneira diferente do que estás acostumado noutras linguagens como Python ou Java.

Exemplo de Função:

```haskell
soma a b = a + b
```
Aqui, soma é o nome da função. a e b são os parâmetros (valores que passas para a função). Esta função simplesmente soma a e b.

## Tipos de Dados em Haskell
Haskell é muito específico com os tipos de dados:

- Int: Para números inteiros. Exemplo: 5, -3, 42.
- Float: Para números decimais. Exemplo: 3.14, -0.001.
- Char: Para caracteres individuais. Exemplo: 'a', 'z', '2'.
- String: Para textos ou sequências de caracteres. Exemplo: "Olá, mundo".
  
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
