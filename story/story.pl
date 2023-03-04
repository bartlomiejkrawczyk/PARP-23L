% Starting position and inventory

i_am_at(someplace1).


% Someplace1

at(thing, someplace1).

describe(Place) :- write('You are '), write(Place), nl, fail.

% describe(someplace1) :- write('You are someplace1.'), nl, !.

% Someplace2

% describe(someplace2) :- write('You are someplace2.'), nl, !.
% describe(someplace3) :- write('You are someplace3.'), nl, !.

describe(_).