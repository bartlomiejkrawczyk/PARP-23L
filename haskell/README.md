# Haskell

## Problem

W ramach zadania należy zaimplementować w języku Haskell (korzystając z kompilatora GHC) grę stworzoną wcześniej w SWI-Prolog (patrz dokument PARP - zadanie z języka Prolog). Jako punkt startowy można wykorzystać plik `adventure.hs`. Zawiera on pętlę gry, z wczytywaniem prostych poleceń (bez ich analizy) i wyświetlaniem komunikatów.


### Szczegóły

Gra powinna zawierać akcję `main`, której wywołanie powinno uruchomić grę w GHCi (podobnie, jak w przykładowym pliku). Po skompilowaniu, gra powinna dać się uruchomić z linii poleceń. Wydawanie poleceń powinno mieć postać
typową dla tekstowych przygodówek, czyli np.:
```
You walk into a small gloomy room. By the open window,
there is a corpse, next to which an elderly policeman
stands with a cigarette in his hand.

> ask policeman about corpse

"She's definitely dead." - he replies in a bored voice.

>
```


