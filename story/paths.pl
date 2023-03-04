/* These rules define the positioning of places */

two_way_path(someplace1, n, someplace2).
path(someplace1, e, someplace3).

path(Here, Direction, There) :- two_way_path(Here, Direction, There).
path(Here, Direction, There) :-
        opposite_directions(Direction, OppositeDirection),
        two_way_path(There, OppositeDirection, Here).

/* These rules define the opposite world directions */

opposite_directions(n, s).
opposite_directions(e, w).

opposite_directions(From, To) :- opposite_directions(To, From), !.
