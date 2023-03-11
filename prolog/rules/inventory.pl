:- multifile i_am_at/1, at/2, holding/1.

/* These rules describe how to pick up an object. */

take(Item) :-
    holding(Item),
    write('You''re already holding it!'),
    !, nl.

take(Item) :-
    items_number(CurrentItemsNumber),
    ItemsNumber is CurrentItemsNumber + 1,
    ItemsNumber > 5,
    write('Your inventory is full! Drop something before picking '), write(Item), write(' up!'),
    !, nl.

take(Item) :-
    i_am_at(Place),
    at(Item, Place),
    retract(at(Item, Place)),
    assert(holding(Item)),

    items_number(CurrentItemsNumber),
    retract(items_number(CurrentItemsNumber)),
    ItemsNumber is CurrentItemsNumber + 1,
    assert(items_number(ItemsNumber)),

    write('OK.'),
    !, nl.

take(_) :-
    write('I don''t see it here.'),
    nl.


/* These rules describe how to put down an object. */

drop(Item) :-
    holding(Item),
    i_am_at(Place),
    retract(holding(Item)),
    assert(at(Item, Place)),

    items_number(CurrentItemsNumber),
    retract(items_number(CurrentItemsNumber)),
    ItemsNumber is CurrentItemsNumber - 1,
    assert(items_number(ItemsNumber)),

    write('OK.'),
    !, nl.

drop(_) :-
    write('You aren''t holding it!'),
    nl.

/* These rules describe how to list objects from inventory. */

inventory :-
    items_number(CurrentItemsNumber),
    write('Items '), write(CurrentItemsNumber), write('/5:'),
    nl,
    list_items,
    nl. 

list_items :-
    holding(Item), 
    write(Item), 
    nl, 
    fail.

list_items.

items_number(0).
