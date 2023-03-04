% Starting position and inventory

i_am_at(someplace1).

time_to_death(100).

at(thing, someplace1).

describe(Place) :- write('You are '), write(Place), nl, fail.

describe(_).