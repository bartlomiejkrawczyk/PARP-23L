# Prolog

## Problem

W ramach zadania należy napisać grę przygodową w SWI-Prolog. Gry tego typu nazywane są też interaktywną fikcją (ang. interactive fiction). Wyobrażenie na temat takich gier daje krótki przewodnik pod adresem: https://prif.org/doc/play-if-card/. Temat gry może być dowolny, ale zachęcamy do bycia kreatywnym. Gry potrafią być medium na miarę literatury, filmu, czy innych dziedzin sztuki.

Jako punkt startowy można wykorzystać plik adventure.pl. Zawiera on szkielet gry z jedną lokacją, z której można pójść tylko na północ (po czym wraca się w to samo miejsce) oraz jednym przedmiotem, który można podnieść lub upuścić. Dostępne polecenia należy potraktować jako przykładowe.

### Szczegóły

W grze powinien wystąpić jeden (lub więcej) z motywów:
- zamknięte drzwi, które trzeba jakoś otworzyć;
- ukryty przedmiot, który trzeba znaleźć;
- niekompletny przedmiot, który trzeba skompletować;
- ograniczone zasoby, jak czas lub pieniądze, do wykonania zadania (może to wymagać użycia arytmetyki w Prologu).

Gra powinna zawierać predykat start/0 (0-argumentowy), służący do rozpoczęcia gry i dowiedzenia się jakie są dostępne polecenia (podobnie, jak w przykładowym pliku). Granie powinno polegać na wpisywaniu zapytań.

## Opis

Witaj w grze tekstowej "Sprawa zaginionej rzeźby", która opowiada o pracy detektywa.
W tej grze wcielisz się w rolę doświadczonego detektywa, któremu powierzono zadanie rozwiązania tajemniczej kradzieży cennego artefaktu z muzeum.

Dostajesz telefon od dyrektora muzeum, który informuje Cię, że cenna rzeźba z czasów starożytnego Egiptu została skradziona z wystawowej sali muzeum. Personel muzeum nie ma żadnych wskazówek, a lokalna policja jest przytłoczona innymi sprawami.

Jesteś ostatnią nadzieją, aby odnaleźć złodzieja i odzyskać rzeźbę.

## Rozgrywka

Gracz ma dostępne liczne instrukcje które pomogą mu w znalezieniu złodziei oraz odnalezieniu zaginionego skarbu:
```
Enter commands using standard Prolog syntax.
Available commands:
start.                -- to start the game.
n.  s.  e.  w.        -- to go in that direction.
take(Object).         -- to pick up an object.
drop(Object).         -- to put down an object.
inspect(Object).      -- to take a closer look at an object.
scan(Object).         -- to scan objects for fingerprints.
use(Item, Tool).      -- to use the tool on the item.
inventory.            -- to list all currently held items.
people.               -- to look for all nearby people.
talk(Person).         -- to list all available subjects you can ask a person.
ask(Person, Subject). -- to ask person about a subject.
look.                 -- to search for things.
look_around.          -- to look around you.
instructions.         -- to see this message again.
halt.                 -- to end the game and quit.
```

## Uruchomienie

**Rozgrywka**
```shell
swipl adventure.pl
```

Następnie należy wywołać komendę `start` i dalej postępować według zamieszczonej instrukcji:
```prolog
?- start.
```

## Przykładowa rozgrywka

Dodatkowo przygotowaliśmy skrypt, który pokazuje jedną ze ścieżek przejścia przez grę. Skrypt można odpalić poprzez:
```shell
swipl adventure.pl playthrough.pl
```

Rezultat takiej rozgrywki jest także dostępny w pliku [play.txt](./play.txt)