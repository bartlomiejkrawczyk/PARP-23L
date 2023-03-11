:- multifile at/2.

% Info

info(detectives_house) :- write('Your house is very cosy').
info(mailbox) :- at(letter, mailbox), write('There is a letter here. You can pick it up.').
info(mailbox) :- write('The mailbox is empty! Check it later').

% People

% Items
at(fork, detectives_house).
at(spoon, detectives_house).
at(tea_spoon, detectives_house).
at(knife, detectives_house).
at(cup, detectives_house).
at(plate, detectives_house).
at(bowl, detectives_house).


at(letter, mailbox).

