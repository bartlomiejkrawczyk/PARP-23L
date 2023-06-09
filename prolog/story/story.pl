% Starting position and inventory
:- multifile info/1.

i_am_at(detectives_office).

introduction :- 
        write('Welcome to '), ansi_format([bold, fg(green)], '"The Case of the Missing Artifact"', []),
        write(', a text game about detective work.'), nl,
        write('In this game, you play the role of a seasoned detective tasked with solving'), nl,
        write('a mysterious theft of a valuable artifact from a museum.'), nl,
        nl,
        write('You receive a call from the museum director who informs you that'), nl, 
        write('the prized artifact, an ancient Egyptian statue, has been stolen from'), nl,
        write('the museum''s exhibit hall. The museum staff has no leads, and the local police'), nl, 
        write('are overwhelmed with other cases.'), nl, 
        nl,
        write('You''re the last hope to find the thief and retrieve the statue.'), nl.

at(thing, detectives_office).

describe(Place) :-
        ansi_format([bold, fg(cyan)], 'Place:', []), nl,
        write(Place),
        nl, nl, 
        info(Place),
        nl,
        fail.

describe(_).
