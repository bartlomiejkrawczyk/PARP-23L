:- multifile seen_closed_exhibit/0, statue_scanned/0, hammer_scanned/0, asked_about_hammer/0, asked_about_fingerprints/0, red_jacket_scanned/0, talked_with_anne/0, white_gloves_scanned/0, drop/1, finish/0, holding/1, sgossiped_with_renovator_theodore/0.
% Info

info(reception) :-
    write('You see reception desk at the museum located near the entrance'), nl,
    write('and is staffed by friendly personnel who welcome visitors and provide information.'), nl,
    write('The desk is adorned with brochures,'), nl,
    write('maps, and other promotional materials to help guide visitors through the museum.').

info(gift_shop) :-
    write('You see gift shop filled with an assortment of souvenirs'), nl,
    write('and merchandise related to the museum''s exhibits.'), nl,
    write('Visitors can purchase books, postcards, toys,'), nl,
    write('and other items as a memento of their visit.').

info(bathroom) :-
    write('You are in bathrooms in museums have tiled floors and walls,'), nl,
    write('and are usually maintained regularly to ensure cleanliness.'), nl,
    write('They are separated by gender.'), nl,
    write('Basic amenities such as soap, paper towels, and toilet paper are provided.').

info(womens_bathroom) :-
    write('You are in women''s bathroom. There is dimly lit'), nl,
    write('and has a flickering fluorescent light above the sink,'), nl,
    write('with graffiti scrawled on the walls and a clogged toilet in the corner.').

info(mens_bathroom) :-
    write('You are in men''s bathroom which is in ruins.'), nl,
    write('There are broken tiles on the floor,'), nl,
    write('a cracked mirror above the sink, and a musty odor from the leaky pipes in the wall.').

info(greek_exhibit_hall) :-
    write('You are at Greek exhibition in the museum showcases'), nl,
    write('a collection of ancient artifacts, including pottery, statues, and jewelry.'), nl,
    write('The items are displayed in glass cases'), nl,
    write('with detailed information about their history and significance.'), nl,
    write('The exhibit provides a fascinating glimpse'), nl,
    write('into the art and culture of ancient Greece.').

info(egyptian_exhibit_hall) :-
    write('You are at Egyptian museum exhibit without an ancient statue,'), nl,
    write('there are numerous other treasures such as hieroglyphics on stone tablets,'), nl,
    write('ornately decorated sarcophagi, and intricate jewelry.'), nl,
    write('Additionally, there are mysterious footprints leading to'), nl,
    write('and from one of the artifacts,'), nl,
    write('leaving visitors wondering about their significance'), nl,
    write('and potential connection to ancient Egyptian beliefs and customs.').

info(display_case) :-
    write('You see display case where the statue was kept'), nl,
    write('appears to have been forcefully opened by the thief using some kind of tool,'), nl,
    write('with shattered glass and metal debris scattered around the base.').

info(garden) :-
    write('You are in museum garden is a tranquil oasis filled with lush greenery'), nl,
    write('and colorful blooms,'), nl,
    write('offering visitors a peaceful escape from the hustle and bustle of the city.'), nl,
    write('The garden features winding pathways, benches for seating,'), nl,
    write('and artistic sculptures that blend seamlessly with the natural surroundings.').

info(roman_exhibit_hall) :-
    write('You are at Roman exhibition in the museum features an impressive collection of artifacts,'), nl,
    write('including statues, mosaics, and architectural fragments.'), nl,
    write('Visitors can immerse themselves in the history of the Roman Empire'), nl,
    write('and gain insights into the daily life'), nl,
    write('and cultural achievements of its people.').

info(janitors_closet) :-
    write('You are in janitor''s closet.'), nl,
    write('It is a small and cluttered space filled with cleaning supplies,'), nl,
    write('mops, brooms, and other maintenance tools.'), nl,
    write('It is typically located in a discreet corner of the building,'), nl,
    write('out of sight of visitors.').

info(cctv_room) :-
    write('You are in CCTV room is a secure area of the building'), nl,
    write('where trained personnel monitor the various cameras installed throughout the premises.'), nl,
    write('The room typically features multiple screens displaying live footage'), nl,
    write('from different areas of the building,'), nl,
    write('allowing the staff to keep a watchful eye on the premises'), nl,
    write('and ensure the safety of visitors and staff.').

info(renovated_exhibit) :-
    write('You see an exhibition under renovation.'), nl,
    write('Due to ongoing renovation work,'), nl,
    write('the exhibition in the museum is currently inaccessible to visitors,'), nl,
    write('with restricted access signs posted at the entrance.'), nl,
    write('The museum staff is working hard to improve and update the exhibition,'), nl,
    write('and visitors can look forward to a renewed'), nl,
    write('and refreshed experience once the work is complete.').

% People

person_at(attendant_julie, reception).
subject(attendant_julie, missing_artifact, 'TODO: ona odpowiada, że ukradziono go z hali egipskiej').
subject(attendant_julie, alibi, 'TODO: byłam w domu z mężem - jest on policjantem i może potwierdzić').
subject(attendant_julie, potental_witnesses, 'TODO: kasjerka - która zamykała wtedy sklep - po lewo w sklepie z pamiątkam, renowator - który siedział dalej nad renowacją, na końcu sal').
subject(attendant_julie, gossip, 'TODO').
subject(attendant_julie, janitor, 'He called sick and haven''t shown in work for a while.'). % TODO
subject(attendant_julie, closed_exhibit, 'Here you go! You can take this key to the renovated exhibit!') :-
    seen_closed_exhibit.

conversation_result(attendant_julie, closed_exhibit) :- 
    assert(at(key_to_the_exhibit, reception)),
    retractall(subject(attendant_julie, closed_exhibit, _)),
    assert(subject(attendant_julie, closed_exhibit, 'I have already given you the key to the exibit!')),
    retractall(conversation_result(attendant_julie, closed_exhibit)).

person_at(guard_mike, cctv_room) :- talked_with_anne.

subject(guard_mike, alibi, 'TODO: cctv room - nagranie jak siedzi przed ekranem i kilka razy wychodzi do toalety - akurat był w toalecie (damskiej) gdy ukradli').
conversation_result(guard_mike, alibi) :- 
    retractall(talked_with_mike), 
    assert(talked_with_mike).

subject(guard_mike, key_card, 'TODO: odpowiada, że każdy z pracowników ma taką kartę').

subject(guard_mike, artifact_dvd, 'TODO: widać tylko złodzieja w czerwonej kurtce + rekawiczkach') :-
    asked_about_fingerprints.
subject(guard_mike, artifact_dvd, 'TODO: na początku widać tylko złodzieja w czerwonej kurtce') :-
    \+ asked_about_fingerprints.

subject(guard_mike, anna_dvd, 'TODO: potwierdza jej alibi').
subject(guard_mike, womans_toilet, 'TODO: w męskiej jest brudno, więc po godzinach chodzi do damskiej').
subject(guard_mike, criminal_record, 'TODO: tłumaczy się, że ma nie podważalne alibi, a teraz jest zmienionym człowiekiem') :-
    holding(mikes_criminal_record).

conversation_result(guard_mike, criminal_record) :- 
    retractall(asked_mike_about_criminal_record),
    assert(asked_mike_about_criminal_record).

person_at(cashier_anne, gift_shop).
subject(cashier_anne, missing_artifact, 'TODO').
subject(cashier_anne, artifact_replica, 'TODO: mozesz kupic').
subject(cashier_anne, gossip, 'TODO').

subject(cashier_anne, alibi, 'TODO: widać ją na kamerze - możesz sprawdzić czy w tym czasie było ją widać ').
conversation_result(cashier_anne, alibi) :- 
    retractall(talked_with_anne), 
    assert(talked_with_anne).

person_at(guide_mary, roman_exhibit_hall).
subject(guide_mary, tour, 'TODO').
subject(guide_mary, missing_artifact, 'TODO').
subject(guide_mary, alibi, 'TODO').
subject(guide_mary, gossip, 'TODO').

person_at(renovator_theodore, renovated_exhibit).
subject(renovator_theodore, admire, 'TODO: podziwiasz prace').
subject(renovator_theodore, missing_artifact, 'TODO').
subject(renovator_theodore, alibi, 'TODO: siedział w closed_exhibit cały czas, nie ma tu kamer - nikt tego nie potwierdzi').

subject(renovator_theodore, gossip, 'TODO: od kilku dni nie ma woźnego (he called in sick) i nie ma kto posprzątać zniszczonego wokół wystawy').
conversation_result(renovator_theodore, gossip) :- 
    retractall(gossiped_with_renovator_theodore), 
    assert(gossiped_with_renovator_theodore).

subject(renovator_theodore, missing_tool, 'TODO: czy coś ci nie zniknęło ostatnio - tak zniknęło (hammer)') :-
    hammer_scanned.

conversation_result(renovator_theodore, missing_tool) :- 
        retractall(asked_about_hammer), 
        assert(asked_about_hammer).

subject(renovator_theodore, fingerprints, 'TODO: tłumaczy się, że to jest narzędzie które zgubił i złodziej musiał mieć rękawiczki - na płycie dvd która nagrała złodzieja teraz widnieje kurtka czerwona + białe rękawiczki xD') :-
    asked_about_hammer.

conversation_result(renovator_theodore, fingerprints) :- 
    retractall(asked_about_fingerprints), 
    assert(asked_about_fingerprints).


person_at(museum_director_john, museum) :-
    statue_scanned,
    red_jacket_scanned,
    white_gloves_scanned.

subject(museum_director_john, missing_statue, 'TODO: congratulate on finding statue and say that mike and tom escaped and thanks to you are looked by police').
conversation_result(museum_director_john, missing_statue) :-
    drop(missing_statue),
    retractall(at(missing_statue, _)),
    retractall(can_finish),
    assert(can_finish),
    finish.

% Items

at(wobbly_shovel, janitors_closet).
produce(wobbly_shovel, screwdriver, shovel).
info(wobbly_shovel) :- write('TODO: nic nie uda się wykopać łopatą w tym stanie, muszę ją wzmocnić').
info(shovel) :- write('TODO: po przykręceniu luźnej śrubki łopata jest w dobrym stanie').

at(shattered_glass, display_case).
at(metal_debris, display_case).
at(hammer, display_case).

at(key_card, garden).
at(red_piece_of_fabric, garden).

at(dvd, cctv_room) :- talked_with_anne.
info(dvd) :- write('You review the CCTV footage from the museum''s security cameras, but it doesn''t\nprovide any clear visuals of the thief''s face. However, you do notice that\nthe thief was wearing a distinctive red jacket.').

info(hammer) :- write('TODO: młotek musiał być użyty do zniszczenia szkła ochronnego, mogę przetestować go w poszukiwaniu śladów palców').
fingerprints(hammer, renovator_theodore):- 
    retractall(hammer_scanned),
    assert(hammer_scanned).

