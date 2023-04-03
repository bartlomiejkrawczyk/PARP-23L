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
subject(attendant_julie, missing_artifact, 'The burglary happened a few days ago, the burglars broke into the Egyptian hall, they stole the artifact from there.').
subject(attendant_julie, alibi, 'As for me, I couldn''t do it, I spent the whole day with my husband, he is a police officer, you can talk to him, you will find him at the police station.').
subject(attendant_julie, potential_witnesses, 'You can try to talk to the cashier who is on the left in the gift shop, she must have been in the museum at the time, she must have been closing the shop. You can also try to interrogate the renovator who is at the end of the hall and is still renovating the hall.').
subject(attendant_julie, gossip, 'I would bet that the restorer must have stolen the statue, he seemed suspicious to me from the beginning, only he is constantly hanging around monuments.').
subject(attendant_julie, janitor, 'He called sick and haven''t shown in work for a while.') :-
    seen_closed_exhibit.
subject(attendant_julie, closed_exhibit, 'Here you go! You can take this key to the renovated exhibit!') :-
    seen_closed_exhibit.

conversation_result(attendant_julie, closed_exhibit) :-
    assert(at(key_to_the_exhibit, reception)),
    retractall(subject(attendant_julie, closed_exhibit, _)),
    assert(subject(attendant_julie, closed_exhibit, 'I have already given you the key to the exibit!')),
    retractall(conversation_result(attendant_julie, closed_exhibit)).

person_at(guard_mike, cctv_room) :- talked_with_anne.

subject(guard_mike, alibi, '
I am clean as you can see on camera number 1, here I am sitting in front of the camera screen in the camera room. And if there are burglars, you can see on the fourth camera that I go into the women''s toilet.').
conversation_result(guard_mike, alibi) :-
    retractall(talked_with_mike),
    assert(talked_with_mike).

subject(guard_mike, key_card, 'Each of the museum employees has such a card, it is used to move around the museum').

subject(guard_mike, artifact_dvd, 'Hmm ... on camera number 10 there is a man in a red jacket, black trousers and a black hat, doing something in the Egyptian hall, also wearing white gloves.') :-
    asked_about_fingerprints.
subject(guard_mike, artifact_dvd, 'Oh, look at camera number 9 here for a moment there is a man in a red jacket') :-
    \+ asked_about_fingerprints.

subject(guard_mike, anna_dvd, 'Look at camera number 20, our cashier Anna was standing behind the counter at the time, looking through some leaflet').
subject(guard_mike, womans_toilet, 'Have you ever been to the men''s toilet at our museum? they are terrible, I hate going there, that''s why I always go to the women''s toilet.').
subject(guard_mike, criminal_record, 'These are some slander and fabricated evidence, and besides, even if it were me, I haven''t been dealing with such things for twelve years, I''m a different person, I''ve changed, really if it were me, I certainly wouldn''t do such things things, I have a family of children to feed.') :-
    holding(mikes_criminal_record).

conversation_result(guard_mike, criminal_record) :-
    retractall(asked_mike_about_criminal_record),
    assert(asked_mike_about_criminal_record).

person_at(cashier_anne, gift_shop).
subject(cashier_anne, missing_artifact, 'I liked this golden statue, customers of the souvenir shop were eager to buy its replica.').
subject(cashier_anne, artifact_replica, 'How can I help you? Maybe you want to buy a gold statue artifact replica?').
subject(cashier_anne, gossip, 'Did you talk to the guide, maybe he stole it when no one was looking, he often walks around with unaware kids, he seems strange').

subject(cashier_anne, alibi, 'There are cameras all over the store, you can check them and you''ll find out I was behind the counter at the time.').
conversation_result(cashier_anne, alibi) :-
    retractall(talked_with_anne),
    assert(talked_with_anne).

person_at(guide_mary, roman_exhibit_hall).
subject(guide_mary, tour, 'To the right we can see a large statue of Julius Ceraz, from the Battle of Alesia, this battle was fought between the Roman army besieging the Gallic city of Alesia and the forces of the rebel Gauls. It took place in 52 BCE. during the conquest of Gaul by Gaius Julius Caesar. The actions of Roman forces near Alesia are the largest siege operation in the history of ancient wars.').
subject(guide_mary, missing_artifact, 'Golden statue shows the god Amun first came into prominence at the beginning of the Middle Kingdom. From the New Kingdom onward, Amun was arguably the most important god in the Egyptian pantheon').
subject(guide_mary, alibi, 'I not only work at the museum here, I have many other activities, that day I was anticipating a school trip, we were in the nearby park at the time').
subject(guide_mary, gossip, 'I don''t know anything, but they say in the city that he''s an orchard, after all, he always closes the whole museum.').

person_at(renovator_theodore, renovated_exhibit).
subject(renovator_theodore, admire, 'I''m glad there are people like you, I hope you get things sorted out as soon as possible.').
subject(renovator_theodore, missing_artifact, 'And there''s always someone hanging around this statue, I''m not surprised that someone stole it.').
subject(renovator_theodore, alibi, 'That day I had a lot of work, I was very busy and I spent the whole day in the renovated hall, you will surely find someone who will confirm it.').

subject(renovator_theodore, gossip, 'A terrible mess is still in the Egyptian hall, there is no one to clean it up, the janitor just after the burglary says that he got sick.').
conversation_result(renovator_theodore, gossip) :-
    retractall(gossiped_with_renovator_theodore),
    assert(gossiped_with_renovator_theodore).

subject(renovator_theodore, missing_tool, 'Wait, I''ll check right now, I don''t think so ... And that''s your fate, I don''t see my hammer anywhere, I must have left it somewhere.') :-
    hammer_scanned.

conversation_result(renovator_theodore, missing_tool) :-
        retractall(asked_about_hammer),
        assert(asked_about_hammer).

subject(renovator_theodore, fingerprints, 'Well, if my fingerprints are normal, unless it''s my tool? Then the thief must have had gloves, I haven''t used it in days') :-
    asked_about_hammer.

conversation_result(renovator_theodore, fingerprints) :-
    retractall(asked_about_fingerprints),
    assert(asked_about_fingerprints).


person_at(museum_director_john, museum) :-
    statue_scanned,
    red_jacket_scanned,
    white_gloves_scanned.

subject(museum_director_john, missing_statue, 'Hello, we are very grateful to you for helping us solve the mystery of the missing golden statue. Not only did you find the criminals, but you also found the missing artifact, thanks to you, visitors will still be able to admire it after we reopen the Egyptian hall. The thieves, unfortunately, Mike and Tom managed to escape, but I''m not worried because thanks to you, they are wanted by the police and they will be caught.').
conversation_result(museum_director_john, missing_statue) :-
    drop(missing_statue),
    retractall(at(missing_statue, _)),
    retractall(can_finish),
    assert(can_finish),
    finish.

% Items

at(wobbly_shovel, janitors_closet).
produce(wobbly_shovel, screwdriver, shovel).
info(wobbly_shovel) :- write('This shovel is too weak, I''m about to break it, I need to find something to make it stronger.').
info(shovel) :- write('Now the shovel is suitable for work, it is certainly much stronger, maybe now it will be possible to dig something with it').

at(shattered_glass, display_case).
at(metal_debris, display_case).
at(hammer, display_case).

at(key_card, garden).
at(red_piece_of_fabric, garden).

at(dvd, cctv_room) :- talked_with_anne.
info(dvd) :- write('You review the CCTV footage from the museum''s security cameras, but it doesn''t\nprovide any clear visuals of the thief''s face. However, you do notice that\nthe thief was wearing a distinctive red jacket.').

info(hammer) :- write('The burglars must have broken the protective glass with this hammer, I have to take it and see if there are any fingerprints on it').
fingerprints(hammer, renovator_theodore):-
    retractall(hammer_scanned),
    assert(hammer_scanned).

