:- multifile at/2.

% Info
info(desk) :- write('Your desk is neat and tidy').
info(fingerprints_detector) :-
    write('You can inspect objects for fingerprints in here.').

% People

% Items

at(pen, desk).
at(blank_paper, desk).
at(notepad, desk).
at(calendar, desk).

