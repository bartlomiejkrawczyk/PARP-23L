
% Info

info(toms_house) :-
    write('TODO: mały przytulny domek w środku lasu').

info(old_tree) :- write('TODO: old big ass tree').

info(digging_marks) :- write('TODO: ktoś coś tu zakopał').

% People

person_at(judy, toms_house).
subject(judy, janitors_alibi, 'TODO: ').

% Objects

at(black_and_white_magazine, toms_house).
at(cobweb, toms_house).

at(old_key, toms_house).
fingerprints(old_key, janitor_tom).
info(old_key) :- write('TODO: This key leads to janitors closet').

at(missing_statue, digging_marks).
info(missing_statue) :- write('TODO: missing statue').
fingerprints(missing_statue, guard_mike) :-
    retractall(statue_scanned),
    assert(statue_scanned).

at(red_jacket, digging_marks).
info(red_jacket) :- write('TODO: jacket belonging to thief').
fingerprints(red_jacket, janitor_tom) :-
    retractall(red_jacket_scanned),
    assert(red_jacket_scanned).

at(white_gloves, digging_marks).
info(white_gloves) :- write('TODO: gloves belonging to thief').
fingerprints(white_gloves, janitor_tom) :-
    retractall(white_gloves_scanned),
    assert(white_gloves_scanned).
