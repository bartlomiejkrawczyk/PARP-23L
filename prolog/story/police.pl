:- multifile holding/1.

% Info

info(police_station) :-
    write('You are inside of a police building that has a lot of traffic is bustling with activity,'), nl,
    write('with officers and visitors moving quickly through the halls.'), nl,
    write('The sound of phones ringing'), nl,
    write('and radios crackling can be heard constantly in the background.'), nl,
    write('The walls are lined with bulletin boards'), nl,
    write('and posters filled with information and updates related to ongoing cases.').

info(policeman_office) :-
    write('You are in office of a policeman who is very busy is cluttered'), nl,
    write('with piles of paperwork and files,'), nl,
    write('as well as various items of police equipment scattered throughout the room.'), nl,
    write('The desk is usually covered with a computer,'), nl,
    write('radio, phone, and other tools of the trade,'), nl,
    write('with little space for anything else.').

info(cage) :-
    write('You see cells at the police station'), nl,
    write('where there are many detainees are small and cramped,'), nl,
    write('with just enough room'), nl,
    write('for a narrow bed and a toilet in the corner.'), nl,
    write('The walls are made of cold, gray concrete'), nl,
    write('and the only light comes from a small window high up near the ceiling.').

% People

person_at(scary_prisoner, cage).
subject(scary_prisoner, reason, 'I killed a man').

person_at(policeman, police_station).
subject(policeman, help, 'I cannot help you. I''m busy at the moment!').

person_at(sheriff, policeman_office).
subject(sheriff, case, 'We are looking for a #1 wanted interpol criminal.\nHe was seen fleeing into the forest!').
subject(sheriff, employees_criminal_record, 'TODO: jestesmy zajeci, wyslemy poczta').

conversation_result(sheriff, employees_criminal_record) :- 
    retractall(asked_for_criminal_record), 
    assert(asked_for_criminal_record).

% Items

at(makeshift_knife, cage).
info(makeshift_knife) :- 
    write('Better take it from here!'), nl,
    write('I don''t want it to fall into the wrong hands'), nl.

at(weed, cage) :- holding(four_leaf_clover).

at(handcuffs, police_station).
at(gun, police_station).
at(ammunition, police_station).
at(suitcase, police_station).

at(pen, policeman_office).
at(paper, policeman_office).
at(blank_paper, policeman_office).
