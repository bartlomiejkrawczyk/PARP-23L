
% Info

info(toms_house) :-
    write('You see the small cozy house in the middle of the forest,'), nl,
    write('You notice a white picket fence surrounding the property.'), nl,
    write('The windows of the house are covered with dark curtains,'), nl,
    write('making it difficult to see inside.'), nl,
    write('A rusty old mailbox hangs on a post near the entrance.').

info(old_tree) :-
    write('You see ancient and massive tree,'), nl,
    write('Its gnarled roots stretch out from the base, and the bark is rough and textured'), nl,
    write('Its branches stretch high into the sky, providing shelter and shade for the creatures that call the forest home.').

info(digging_marks) :-
    write('You see the freshly dug hole that is already filled,'), nl,
    write('the soil is still loose and there are no footprints around the area, '), nl,
    write('suddenly something must have buried here').

% People

person_at(judy, toms_house).
subject(judy, janitors_alibi, 'My husband? spent the whole day outside by the house chopping wood').

% Objects

at(black_and_white_magazine, toms_house).
at(cobweb, toms_house).

at(old_key, toms_house).
fingerprints(old_key, janitor_tom).
info(old_key) :- write('This old key leads to janitors closet, I should try to open that door').

at(missing_statue, digging_marks).
info(missing_statue) :- write('Golden statue from the museum! but why did someone bury her here? It''s a good thing I found it, but maybe there are fingerprints on it that will help me find the burglars, I''ll have to check it out.').
fingerprints(missing_statue, guard_mike) :-
    retractall(statue_scanned),
    assert(statue_scanned).

at(red_jacket, digging_marks).
info(red_jacket) :- write('Red torn jacket, wasn''t the burglar wearing one during the burglary? I wonder if there''s any fingerprints on it, I''ll have to check it out').
fingerprints(red_jacket, janitor_tom) :-
    retractall(red_jacket_scanned),
    assert(red_jacket_scanned).

at(white_gloves, digging_marks).
info(white_gloves) :- write('About the white gloves, they must be the same gloves the burglar was wearing on the win, I need to check for fingerprints.').
fingerprints(white_gloves, janitor_tom) :-
    retractall(white_gloves_scanned),
    assert(white_gloves_scanned).
