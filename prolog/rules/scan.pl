:- multifile i_am_at/1, fingerprints/2, info/1, holding/1.

/* These rules define how to scan objects for fingerprints */

scan(Item) :-
    i_am_at(fingerprints_detector),
    holding(Item),
    fingerprints(Item, Person),
    write('Detector found '), write(Person), write('''s fingerprints on '), write(Item), write('!'), nl,
    !.

scan(Item) :-
    i_am_at(fingerprints_detector),
    holding(Item),
    write('The only fingerprints you find on '), write(Item), write(' are your fingerprints!'), nl,
    !.

scan(Item) :- 
    holding(Item),
    write('You need a fingerprints_detector to scan for fingerprints!'),
    nl, 
    !.

scan(_) :- write('You have to hold an item to scan it for fingerprints'), nl, !.

/* These rules define how to inspect different objects */

inspect(Item) :-
    holding(Item),
    info(Item), nl, 
    !.

inspect(Item) :-
    holding(Item),
    write('The '), write(Item), write(' is a regular '), write(Item), write('.'), nl,
    write('There is nothing unusual about it!'), nl,
    !.

inspect(_) :- write('You have to hold an item to inspect it'), nl.