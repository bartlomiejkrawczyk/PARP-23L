:- multifile introduction/0, look/0, look_around/0, can_finish/0.

/* Under UNIX, the "halt." command quits Prolog but does not
   remove the output window. On a PC, however, the window
   disappears before the final output can be seen. Hence this
   routine requests the user to perform the final "halt." */

finish :-
    nl,
    can_finish,
    ansi_format([bold, fg(green)], 'You WON! The game is over!', []), nl,
    write('Please enter the '),
    ansi_format([bold, fg(red)], '"halt."', []),
    write(' command.'),
    nl, !.

finish :- 
    nl, ansi_format([bold, fg(red)], 'The game is not over yet!', []), nl,
    write('If you still want to finish despit it.\nPlease enter the '),
        ansi_format([bold, fg(red)], '"halt."', []),
        write(' command.'),
        nl.



/* This rule prints out instructions and tells where you are. */

start :-
    introduction,
    instructions,
    look,
    look_around.

/* This rule just writes out game instructions. */

instructions :-
    nl,
    write('Enter commands using standard Prolog syntax.'), nl,
    ansi_format([bold, fg(cyan)], 'Available commands:', []), nl,
    write('start.                -- to start the game.'), nl,
    write('n.  s.  e.  w.        -- to go in that direction.'), nl,
    write('take(Object).         -- to pick up an object.'), nl,
    write('drop(Object).         -- to put down an object.'), nl,
    write('inspect(Object).      -- to take a closer look at an object.'), nl,
    write('scan(Object).         -- to scan objects for fingerprints.'), nl,
    write('use(Item, Tool).      -- to use the tool on the item.'), nl,
    write('inventory.            -- to list all currently held items.'), nl,
    write('people.               -- to look for all nearby people.'), nl,
    write('talk(Person).         -- to list all available subjects you can ask a person.'), nl,
    write('ask(Person, Subject). -- to ask person about a subject.'), nl,
    write('look.                 -- to search for things.'), nl,
    write('look_around.          -- to look around you.'), nl,
    write('instructions.         -- to see this message again.'), nl,
    write('halt.                 -- to end the game and quit.'), nl,
    nl.

/* This rule tells how to die. */

die :-
    finish.
