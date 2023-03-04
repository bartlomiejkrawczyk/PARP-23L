# Paradygmaty Programowania

Studenci:
```
Mateusz Brzozowski
Bartłomiej Krawczyk
Jakub Winter
```

## Problem

W ramach zadania należy napisać grę przygodową w SWI-Prolog. Gry tego typu nazywane są też interaktywną fikcją (ang. interactive fiction). Wyobrażenie na temat takich gier daje krótki przewodnik pod adresem: https://prif.org/doc/play-if-card/. Temat gry może być dowolny, ale zachęcamy do bycia kreatywnym. Gry potrafią być medium na miarę literatury, filmu, czy innych dziedzin sztuki.

Jako punkt startowy można wykorzystać plik adventure.pl. Zawiera on szkielet gry z jedną lokacją, z której można pójść tylko na północ (po czym wraca się w to samo miejsce) oraz jednym przedmiotem, który można podnieść lub upuścić. Dostępne polecenia należy potraktować jako przykładowe.

## Szczegóły

W grze powinien wystąpić jeden (lub więcej) z motywów:
- zamknięte drzwi, które trzeba jakoś otworzyć;
- ukryty przedmiot, który trzeba znaleźć;
- niekompletny przedmiot, który trzeba skompletować;
- ograniczone zasoby, jak czas lub pieniądze, do wykonania zadania (może to wymagać użycia arytmetyki w Prologu).

Gra powinna zawierać predykat start/0 (0-argumentowy), służący do rozpoczęcia gry i dowiedzenia się jakie są dostępne polecenia (podobnie, jak w przykładowym pliku). Granie powinno polegać na wpisywaniu zapytań.