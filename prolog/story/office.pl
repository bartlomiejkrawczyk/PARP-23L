:- multifile at/2.

% Info

info(detectives_office) :-
    write('Your office is a compact yet efficient space, with a sturdy wooden desk'), nl,
    write('positioned against one wall. A state-of-the-art fingerprint detector'), nl,
    write('is mounted on another wall nearby, which the detective uses'), nl,
    write('to analyze crime scenes and identify suspects. The walls are lined'), nl,
    write('with bookshelves filled with forensic manuals and reference materials,'), nl,
    write('and a large window offers a panoramic view of the city''s skyline.').

info(desk) :-
    write('Your desk is a sturdy wooden piece of furniture positioned against one wall'), nl,
    write('of the office. It''s cluttered with files, folders, a lamp, and various office'), nl,
    write('supplies, reflecting the detective''s busy and methodical work style.').

info(fingerprints_detector) :-
    write('Your fingerprint detector is a state-of-the-art device mounted on the wall'), nl,
    write('of the office. It''s used to collect and analyze fingerprints found at crime'), nl,
    write('scenes, helping the detective to identify suspects and solve cases.').

% People

% Items

at(files, desk).
at(folders, desk).
at(lamp, desk).
at(pen, desk).
at(blank_paper, desk).
at(notepad, desk).
at(calendar, desk).
at(ashtray, desk).
at(vase, desk).