/* These rules define the positioning of places */
two_way_path(a1, n, a2).
locked_two_way_path(someplace1, n, someplace2, thing).

/* These rules define the locked doors mechanic */

locked_path(Here, Direction, There, Object) :- locked_two_way_path(Here, Direction, There, Object).

locked_path(Here, Direction, There, Object) :-
        opposite_directions(Direction, OppositeDirection), 
        locked_two_way_path(There, OppositeDirection, Here, Object), !.

path(Here, Direction, There) :-
            locked_path(Here, Direction, There, Object), 
            holding(Object),
            !.

/* These rules define the one way paths positioning */

path(someplace1, e, someplace3).

/* These rules define the possible movement in two directions */

path(Here, Direction, There) :- two_way_path(Here, Direction, There).
path(Here, Direction, There) :-
        opposite_directions(Direction, OppositeDirection),
        two_way_path(There, OppositeDirection, Here).

/* These rules define the opposite world directions */

opposite_directions(n, s).
opposite_directions(e, w).

opposite_directions(From, To) :- opposite_directions(To, From), !.
