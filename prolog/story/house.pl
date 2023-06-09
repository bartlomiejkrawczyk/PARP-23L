:- multifile at/2, holding/1, person_at/2, subject/3, asked_for_criminal_record/0, talked_with_mike/0, fingerprints/2, produce/3.

% Info

info(detectives_house) :-
    write('Your house has a cozy living room with a fireplace and vintage posters,'), nl,
    write('and a fully-equipped modern kitchen with a sleek fridge. Outside, the mailbox'), nl,
    write('stands by the front door, waiting for the detective''s daily dose of letters,'), nl,
    write('packages, and clues.').

info(fridge) :-
    write('Your fridge is sleek and modern, with a stainless steel finish and a minimalist'), nl,
    write('design. Inside it is well stocked with a variety of products').

info(mailbox) :-
    at(letter, mailbox),
    write('Your mailbox stands by the front door, painted in a faded red hue and adorned'), nl,
    write('with small dents and scratches.'), nl,
    nl,
    write('There is a letter here. You can pick it up.'),
    !.

info(mailbox) :-
    write('Your mailbox stands by the front door, painted in a faded red hue and adorned'), nl,
    write('with small dents and scratches.'), nl,
    nl,
    write('The mailbox is empty! Check it later'),
    !.

% People

person_at(dorothy, detectives_house).
subject(dorothy, love, 'I love you sweety!').
subject(dorothy, dinner, 'Dinner will be ready soon!').
subject(dorothy, vodka, 'You shouldn''t be parading with vodka around town!') :- holding(vodka).

% Items

at(fork, detectives_house).
at(spoon, detectives_house).
at(tea_spoon, detectives_house).
at(knife, detectives_house).
at(cup, detectives_house).
at(screwdriver, detectives_house).
at(plate, detectives_house).
at(bowl, detectives_house).

at(water, fridge).
at(milk, fridge).
at(beer, fridge).
at(vodka, fridge).

fingerprints(vodka, tim).
info(vodka) :- write('Your friend tim left if after a party!').

at(whiskey, fridge).
at(ice, fridge).
at(cheese, fridge).
at(ham, fridge).
at(chicken_wings, fridge).
at(leftovers, fridge).
at(fish, fridge).
at(pizza, fridge).
at(watermelon, fridge).
at(banana, fridge).
at(lettuce, fridge).
at(salad, fridge).
at(powder, fridge).
at(ice_cream, fridge).
at(cola, fridge).
at(egg, fridge).
at(butter, fridge).
at(honey, fridge).
at(jam, fridge).
at(turkey, fridge).
at(ketchup, fridge).

at(letter, mailbox) :- asked_for_criminal_record, talked_with_mike.
produce(letter, knife, mikes_criminal_record).
info(letter) :- write('Police Station, Chief Tony Hank. Registered letter from the police, I need to find a knife to open it').
info(mikes_criminal_record) :- write('Mike Black, was arrested 2 years ago for stealing two very expensive new bikes from a bike shop. He was fined $5,000 and sentenced to three months of community service.').
