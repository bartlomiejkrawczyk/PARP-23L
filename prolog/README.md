# Prolog

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