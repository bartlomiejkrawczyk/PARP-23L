:- multifile person_at/2, i_am_at/1, subject/3.

/* These rules define how list person available subjects */

talk(Person) :-
    person_at(Person, Place),
    i_am_at(Place),
    write('You can ask '), write(Person), write(' about:'), 
    nl, 
    fail.

talk(Person) :-
    person_at(Person, Place),
    i_am_at(Place),
    subject(Person, Subject, _),
    write(Subject),
    nl,
    fail.

talk(Person) :-
    person_at(Person, Place),
    i_am_at(Place), 
    !.

talk(Person) :-
    write('There is no one named '), write(Person), write(' nearby!'), 
    nl, !.

/* These rules define to ask a person about a subject */

ask(Person, Subject) :-
    person_at(Person, Place),
    i_am_at(Place), 
    subject(Person, Subject, Message),
    write(Message), 
    nl, 
    !.

ask(Person, Subject) :-
    person_at(Person, Place),
    i_am_at(Place), 
    write(Person), write(' does not know anything about '), write(Subject),
    nl,
    !.

ask(Person, _) :-
    write('There is no one named '), write(Person), write(' nearby!'), 
    nl, !.