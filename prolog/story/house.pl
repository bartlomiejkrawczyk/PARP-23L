:- multifile at/2.

% Info

info(detectives_house) :- write('Your house is very cosy').
info(fridge) :- write('You can stock up on food from here').
info(mailbox) :- at(letter, mailbox), write('There is a letter here. You can pick it up.'), !.
info(mailbox) :- write('The mailbox is empty! Check it later'), !.

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
