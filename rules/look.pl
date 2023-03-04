/* This rule tells how to look about you. */

look :-
    i_am_at(Place),
    describe(Place),
    nl,
    notice_objects_at(Place),
    nl.


/* These rules set up a loop to mention all the objects
in your vicinity. */

notice_objects_at(Place) :-
    at(X, Place),
    write('There is a '), write(X), write(' here.'), nl,
    fail.

notice_objects_at(_).

look_around :- 
    look_direction(n),
    look_direction(s),
    look_direction(e),
    look_direction(w).

look_direction(Direction) :-
    i_am_at(Place),
    locked_path(Place, Direction, OtherPlace, Object),
    write(Direction), write(': '), write(OtherPlace),
    write(' - you need '), write(Object), write(' to open the door!'), nl, !.

look_direction(Direction) :-
    i_am_at(Place),
    path(Place, Direction, OtherPlace),
    write(Direction), write(': '), write(OtherPlace), nl, !.

look_direction(Direction) :- write(Direction), write(':'), nl, !.
