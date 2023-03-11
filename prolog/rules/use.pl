:- multifile holding/1, produce/3.

/* These rules define how to make objects */

info(Item) :-
    produce(Item, Tool, Outcome),
    write('You can make '), write(Outcome), write(' from '),
    write(Item), write(' using '), write(Tool), write('.'), nl.

use(Item, Tool) :-
    holding(Item),
    holding(Tool),
    produce(Item, Tool, Outcome),
    retract(holding(Item)),
    assert(holding(Outcome)),
    write('You made '), write(Outcome), write(' from '),
    write(Item), write(' using '), write(Tool), write('!'), nl,
    !.

use(Item, _) :-
        \+ holding(Item), write('You don''t have the '), write(Item), write('!'), nl, !.

use(_, Tool) :-
    \+ holding(Tool),  write('You don''t have the '), write(Tool), write('!'), nl, !.

use(Item, Tool) :-
    \+ produce(Item, Tool, _),
    write('You can''t use a '), write(Tool), write(' on an '), write(Item), write('!'), nl.
