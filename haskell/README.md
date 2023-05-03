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

## Wymagania
- Poniższe pakiety można zainstalować korzystąc z `ghcup` (The GHCup Haskell Installer)
- ghc-9.4.4 (The Glorious Glasgow Haskell Compilation System, version 9.4.4)
- cabal 3.10 (cabal-install version 3.10.1.0)

## Sposób uruchomienia
- Aby zbudować program i uruchomić rozgrywkę, w katalogu `haskell` należy wywołać:
```bash
cabal run
```
- Aby uruchomić automatyczne przejście gry, w katalogu `haskell` należy wywołać: 
```bash
cabal run < playthrough.txt
```
