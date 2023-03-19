:- multifile at/2, i_am_at/1, person_at/2, describe/1, locked_path/4, path/3.

/* This rule tells how to look around the place. */

look :-
    i_am_at(Place),
    describe(Place),
    nl,
    people,
    nl, nl,
    list_objects_at(Place),
    nl,
    nl.

/* These rules set up a loop to mention all the objects in your vicinity. */

list_objects_at(Place) :-
    at(_, Place), !,
    ansi_format([bold, fg(cyan)], 'Items:', []), nl,
    notice_object_at(Place).

list_objects_at(_) :- write('There is nothing interesting to pick up here').

notice_object_at(Place) :-
    at(X, Place),
    write(X),
    nl,
    fail.

notice_object_at(_).

/* These rules set up a loop to mention all the people in your vicinity. */

people :-
    i_am_at(Place),
    person_at(_, Place), !,
    ansi_format([bold, fg(cyan)], 'People:', []), nl,
    notice_person_at(Place).

people :- write('You are alone here!').

notice_person_at(Place) :-
    person_at(Person, Place),
    write(Person),
    fail.

notice_person_at(_).

/* These rules define how to look around you to search for available places you can go to. */

look_around :- 
    ansi_format([bold, fg(cyan)], 'Directions:', []), nl,
    look_direction(n),
    look_direction(e),
    look_direction(s),
    look_direction(w).

look_direction(Direction) :-
    i_am_at(Place),
    locked_path(Place, Direction, OtherPlace, Object),
    write(Direction), write(': '), write(OtherPlace),
    write(' - you need '), write(Object), nl, !.

look_direction(Direction) :-
    i_am_at(Place),
    path(Place, Direction, OtherPlace),
    write(Direction), write(': '), write(OtherPlace), nl, !.

look_direction(Direction) :- write(Direction), write(':'), nl, !.
