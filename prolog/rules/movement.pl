:- multifile look/0, look_around/0, i_am_at/1, path/3, locked_path/4, holding/1.

/* These rules define the direction letters as calls to go/1. */

n :- go(n).

s :- go(s).

e :- go(e).

w :- go(w).

/* This rule tells how to move in a given direction. */

go(Direction) :-
    i_am_at(Here),
    locked_path(Here, Direction, There, Object), 
    holding(Object),
    write('You successfully entered '), write(Here), write(' with '), write(Object), write('!'), nl,
    retract(i_am_at(Here)),
    assert(i_am_at(There)),
    !, 
    look, 
    look_around.

go(Direction) :-
    i_am_at(Here),
    locked_path(Here, Direction, _, Object),
    not(holding(Object)),
    write('This place is available only with '), write(Object), write('!'), nl,
    !, 
    look, 
    look_around.

go(Direction) :-
    i_am_at(Here),
    path(Here, Direction, There),
    retract(i_am_at(Here)),
    assert(i_am_at(There)),
    !, 
    look, 
    look_around.

go(_) :-
    write('You can''t go that way.').
