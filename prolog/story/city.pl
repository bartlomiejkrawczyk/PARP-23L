:- multifile
    holding/1,
    items_number/1,
    person_at/2,
    subject/3,
    drop/1,
    conversation_result/2,
    asked_mike_about_criminal_record/0,
    gossiped_with_renovator_theodore/0.

% Info

info(baker_street) :-
    write('You see Baker Street is a quaint, off-the-beaten-track street nestled between two hills.'), nl,
    write('It''s lined with charming, old-fashioned buildings,'), nl,
    write('including your office and house, as well as a cozy cafe and a vintage bookstore.'), nl,
    write('The street exudes a sense of peaceful seclusion,'), nl,
    write('making it the perfect spot for the detective'), nl,
    write('to solve cases away from the bustle of the city.').

info(city_square) :-
    write('You see City Square is a bustling, energetic hub located in the heart of the city.'), nl,
    write('It''s surrounded by tall skyscrapers,'), nl,
    write('historical buildings, and busy streets.'), nl,
    write('The square is home to the police station, city hall,'), nl,
    write('and other important government buildings,'), nl,
    write('making it a central location for civic activities and public events.').

info(westbourne_road) :-
    write('You see Westbourne Road is a winding street that'), nl,
    write('leads to a dense forest on the outskirts of the city.'), nl,
    write('It''s a peaceful drive, with few buildings and little traffic along the way.'), nl,
    write('Visitors can find an antique museum showcasing'), nl,
    write('Egyptian antiquities on this road,'), nl,
    write('offering a unique and fascinating glimpse into the ancient world.').

info(forest) :-
    write('You are in The forest located on the outskirts of the town'), nl,
    write('where the hut is located is dense and lush,'), nl,
    write('with tall trees reaching towards the sky.'), nl,
    write('The forest floor is covered in a thick layer of moss and fallen leaves,'), nl,
    write('providing a soft cushion for every step.'), nl,
    write('The air is filled with the sweet scent of pine'), nl,
    write('and the sound of birds chirping in the trees.').

% People

person_at(book_worms, baker_street).
subject(book_worms, book, 'I''am reading now! Can''t you see!').

person_at(politician, city_square).
subject(politician, money, 'We are working to make our future brighter!').

person_at(janitor_tom, city_square) :- asked_mike_about_criminal_record, gossiped_with_renovator_theodore.
subject(janitor_tom, sick, '*Caugh* *Caugh* Good morning, I''d like some meds, because recently... uh... I''ve had a very... uh... cold, I''ve caught a cold and... I''m very sick.').
subject(janitor_tom, alibi, 'I? yyyy .... I was at ... home, yes I was at home ... why are you looking at me so suspiciously? all day ... yy *Caugh* *Caugh* ... I spent with my wife, yes I spent all day with my wife ... ask her *Caugh* *Caugh*').
conversation_result(janitor_tom, alibi) :- retractall(janitors_house_available), assert(janitors_house_available).

person_at(tourists, westbourne_road).
subject(tourists, missing_artifact, 'Nie mówię po angielsku.\nNie rozumiem co do mnie mówisz!').

person_at(playing_popular_kid, westbourne_road).
subject(playing_popular_kid, something_suspicious, 'I? ha, you hear it guys, he''s asking me about some shady things. I haven''t seen anything, nor do I do anything suspicious.').

person_at(playing_quiet_kid, westbourne_road).
subject(playing_quiet_kid, something_suspicious, 'Who are you? I don''t talk to strangers ... I saw someone bury something in the woods near an old tree').
conversation_result(playing_quiet_kid, something_suspicious) :- retractall(old_tree_available), assert(old_tree_available).

person_at(playing_athletic_kid, westbourne_road).
subject(playing_athletic_kid, something_suspicious, 'You have a strange coat hahaha, you look like an old grandpa. ... Pass it to me! ... I didn''t see anything ... Who are you passing to !? ... I''m going to play, I don''t have time').

person_at(old_freak, forest).
subject(old_freak, age, 'I''am 104 years old!').
subject(old_freak, knowledge, 'I know it all!').
subject(old_freak, food, 'Boss! Can you give me some spare change? I''d like to buy something to eat!').
subject(old_freak, give_beer, 'How can I thank you?') :- holding(beer).
conversation_result(old_freak, give_beer) :-
    drop(beer),
    retract(at(beer, forest)).

% Items

at(flyer, baker_street).
at(litter, baker_street).

at(broken_glass, city_square).
at(yesterdays_newspaper, city_square).

at(stick_cane, westbourne_road).
info(stick_cane) :-
    write('Some kid must have brought it from the forest').

at(stone, forest).
at(stick, forest).
at(red_leaves, forest).
at(green_leaf, forest).
at(frog, forest).
at(four_leaf_clover, forest).
info(four_leaf_clover) :-
    write('It''s your lucky day!'), nl,
    write('Not every day you find a four leaf clover!'), nl,
    write('Better keep it to bring you luck on your case').

