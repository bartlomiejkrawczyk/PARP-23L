# Wykład 1

**Zadanie 1.** Napisz funkcję zwracającą największy wspólny dzielnik dwóch liczb. Skorzystaj z algorytmu Euklidesa:
```
NWD(𝑎, 0) = 𝑎,
NWD(𝑎, 𝑏) = NWD(𝑏, 𝑎 mod 𝑏)
```

```haskell
nwd a b | b == 0    = a
        | otherwise = nwd b (mod a b)
-- lub
nwd a 0 = a
nwd a b = nwd b (mod a b)
```

**Zadanie 2.** Prześledź proces obliczania wartości funkcji dla liczb: 234 i 45

```haskell
=> nwd 234 45
=> nwd 45 (mod 234 45)
=> nwd 45 (9)
=> nwd 9 (mod 9 45)
=> nwd 9 (0)
=> 9
```
**Zadanie 3.** Wzór Herona na pole trójkąta ma postać:

A(𝑎, 𝑏, 𝑐) = √(𝑠(𝑠 − 𝑎)(𝑠 − 𝑏)(𝑠 − 𝑐)), 𝑠 = (𝑎 + 𝑏 + 𝑐) / 2

Znajdź trzy błędy w poniższej implementacji tego wzoru:

```haskell
area a b c = sqrt s * (s - a) * (s - b) * (s - c)
    where
        Abc = a + b + c
          s = Abc / 2
```

Poprawiony:
```haskell
area a b c = sqrt (s * (s - a) * (s - b) * (s - c))
    where
        abc = a + b + c
        s = abc / 2
```

# Wykład 2

**Zadanie 1.** Przeanalizuj złożoność operatora konkatenacji:
```haskell
[] ++ ys = ys
(x:xs) ++ ys = x : (xs ++ ys)
```

Czy lepiej, żeby ten operator był lewostronnie, czy prawostronnie łączny?
```haskell
                        ("abc" ++ "de") ++ "fg"
"abc" ++ "de" ++ "fg" = 
                        "abc" ++ ("de" ++ "fg")
```

Lepiej, żeby był prawostronnie łączny, ponieważ złożoność operatora `++` zależy od długości pierwszej/lewej listy. Jeśli najpierw byśmy połączyli listy na lewo to byśmy utrudnili zadanie kolejnym złączeniom. Jak zastosujemy prawostronną łączność to łączenie sumarycznie wszystkich list będzie zależało liniowo od ilości elementów w listach do przedostatniej listy.

**Zadanie 2.** Napisz funkcję `concat :: [[a]] -> [a]`, konkatenującą listy na podanej liście:
```haskell
> concat ["ab",[],"c"]
"abc"
```

```haskell
concat xss = [x | xs <- xss, x <- xs]
-- lub
concat [] = []
concat (xs:xss) = xs ++ concat xss
```

**Zadanie 3.** Napisz operator `(!!) :: [a] -> Int -> a`, zwracający element listy pod podanym indeksem:
```haskell
> "Ala" !! 1
'l'
```
To jest poprawne rozwiązanie, ale nie chce się kompilować `(!!)` dla zwykłej nazwy działa xD
```haskell
(!!) :: [a] -> Int -> a
(!!) [] _ = error "Nie istnieje taki indeks"
(!!) (x : xs) y
  | y == 0 = x
  | otherwise = (!!) xs (y - 1)
```




