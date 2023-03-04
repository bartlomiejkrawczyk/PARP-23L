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
    write('You successfully unlocked the door using the '),
    write(Object),
    write('!'),
    nl,
    retract(i_am_at(Here)),
    assert(i_am_at(There)),
    !, 
    look.

go(Direction) :-
    i_am_at(Here),
    locked_path(Here, Direction, _, Object),
    not(holding(Object)),
    write('The door is closed! Look for the '),
    write(Object),
    write(' to open the door.'),
    nl,
    !, 
    look.

go(Direction) :-
    i_am_at(Here),
    path(Here, Direction, There),
    retract(i_am_at(Here)),
    assert(i_am_at(There)),
    !, 
    look.

go(_) :-
    write('You can''t go that way.').
