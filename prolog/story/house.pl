:- multifile at/2.

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

% Items
at(fork, detectives_house).
at(spoon, detectives_house).
at(tea_spoon, detectives_house).
at(knife, detectives_house).
at(cup, detectives_house).
at(plate, detectives_house).
at(bowl, detectives_house).

at(water, fridge).
at(milk, fridge).
at(beer, fridge).
at(vodka, fridge).
fingerprints(vodka, tom).
info(vodka) :- write('Your friend tom left if after a party!').
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

at(letter, mailbox).
