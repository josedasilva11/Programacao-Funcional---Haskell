{- 1. Apresente uma definição recursiva da função (pré-definida) enumFromTo :: Int -> Int ->
[Int] que constrói a lista dos números inteiros compreendidos entre dois limites.
Por exemplo, enumFromTo 1 5 corresponde à lista [1,2,3,4,5]-}

enumFromTo :: Int -> Int -> [Int]
enumFromTo m n
    | m > n     = []    -- Caso base: se m for maior que n, retornamos uma lista vazia
    | otherwise = m : enumFromTo (m + 1) n

{-
- m é o limite inferior.
- n é o limite superior.
- A primeira condição verifica se m é maior que n. Se for o caso, a função retorna uma lista vazia, encerrando a recursão.
Caso contrário, incluímos m na lista resultante e chamamos a função enumFromTo novamente com m + 1 como novo limite inferior. -}

------------------------------------------------------------------------------------------------------------------------------------



{- 2. Apresente uma definição recursiva da função (pré-definida) enumFromThenTo :: Int -> Int
-> Int -> [Int] que constrói a lista dos números inteiros compreendidos entre dois limites
e espaçados de um valor constante. -}

enumFromThenTo :: Int -> Int -> Int -> [Int]
enumFromThenTo x y z
    | x > z     = []  -- Caso base: se x for maior que z, retornamos uma lista vazia
    | otherwise = x : enumFromThenTo y (y + (y - x)) z

{-
- x é o primeiro elemento da lista.
- y é o segundo elemento da lista, que define o espaço entre os elementos.
- z é o limite superior da lista.
- A primeira condição verifica se x é maior que z. Se for o caso, a função retorna uma lista vazia, encerrando a recursão.
Caso contrário, incluímos x na lista resultante e chamamos a função enumFromThenTo novamente com y como o novo primeiro elemento e (y + (y - x)) como o novo segundo elemento (para manter o espaço constante) até que x seja maior que z.
-}