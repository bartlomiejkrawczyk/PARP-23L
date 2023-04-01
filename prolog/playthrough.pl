show(TEXT) :-
    ansi_format([bold, fg(green)], '\n?- ', []),
    ansi_format([bold, fg(green)], TEXT, []),
    write('\n').

show_result :- ansi_format([bold, fg(white)], 'true.\n', []).

:- show('start.').
?- start, show_result.

:- show('e.').
?- e, show_result.
:- show('n.').
?- n, show_result.
:- show('s.').
?- s, show_result.

:- show('talk(new_client).').
?- talk(new_client), show_result.

:- show('ask(new_client, hello).').
?- ask(new_client, hello), show_result.
:- show('ask(new_client, magazines).').
?- ask(new_client, magazines), show_result.
:- show('ask(new_client, wait).').
?- ask(new_client, wait), show_result.

:- show('take(thing).').
?- take(thing), show_result.
:- show('inventory.').
?- inventory, show_result.
:- show('inspect(thing).').
?- inspect(thing), show_result.
:- show('drop(thing).').
?- drop(thing), show_result.

:- show('s.').
?- s, show_result.

:- show('s.').
?- s, show_result.

:- show('talk(dorothy).').
?- talk(dorothy), show_result.

:- show('ask(dorothy, hello).').
?- ask(dorothy, hello), show_result.
:- show('ask(dorothy, love).').
?- ask(dorothy, love), show_result.
:- show('ask(dorothy, dinner).').
?- ask(dorothy, dinner), show_result.

:- show('w.').
?- w, show_result.

:- show('take(powder).').
?- take(powder), show_result.
:- show('inspect(powder).').
?- inspect(powder), show_result.

:- show('e.').
?- e, show_result.

:- show('e.').
?- e, show_result.

:- show('w.').
?- w, show_result.

:- show('n.').
?- n, show_result.

:- show('e.').
?- e, show_result.

:- show('e.').
?- e, show_result.

:- show('n.').
?- n, show_result.

:- show('n.').
?- n, show_result.

:- show('talk(attendant_julie).').
?- talk(attendant_julie), show_result.

:- show('ask(attendant_julie, hello).').
?- ask(attendant_julie, hello), show_result.
:- show('ask(attendant_julie, missing_artifact).').
?- ask(attendant_julie, missing_artifact), show_result.
:- show('ask(attendant_julie, alibi).').
?- ask(attendant_julie, alibi), show_result.
:- show('ask(attendant_julie, potential_witnesses).').
?- ask(attendant_julie, potential_witnesses), show_result.
:- show('ask(attendant_julie, gossip).').
?- ask(attendant_julie, gossip), show_result.
?- ask(attendant_julie, janitor), show_result.

:- show('n.').
?- n, show_result.

:- show('n.').
?- n, show_result.

:- show('w.').
?- w, show_result.

:- show('take(shattered_glass).').
?- take(shattered_glass), show_result.
:- show('inspect(shattered_glass).').
?- inspect(shattered_glass), show_result.

:- show('scan(shattered_glass).').
?- scan(shattered_glass), show_result.

:- show('take(metal_debris).').
?- take(metal_debris), show_result.
:- show('inspect(metal_debris).').
?- inspect(metal_debris), show_result.

:- show('take(hammer).').
?- take(hammer), show_result.
:- show('inspect(hammer).').
?- inspect(hammer), show_result.

:- show('inventory.').
?- inventory, show_result.

:- show('e.').
?- e, show_result.

:- show('n.').
?- n, show_result.

:- show('n.').
?- n, show_result.

:- show('talk(guide_mary).').
?- talk(guide_mary), show_result.

:- show('ask(guide_mary, hello).').
?- ask(guide_mary, hello), show_result.
:- show('ask(guide_mary, tour).').
?- ask(guide_mary, tour), show_result.
:- show('ask(guide_mary, missing_artifact).').
?- ask(guide_mary, missing_artifact), show_result.
:- show('ask(guide_mary, alibi).').
?- ask(guide_mary, alibi), show_result.
:- show('ask(guide_mary, gossip).').
?- ask(guide_mary, gossip), show_result.

:- show('s.').
?- s, show_result.

:- show('s.').
?- s, show_result.

:- show('s.').
?- s, show_result.

:- show('w.').
?- w, show_result.

:- show('talk(cashier_anne).').
?- talk(cashier_anne), show_result.

:- show('ask(cashier_anne, hello).').
?- ask(cashier_anne, hello), show_result.
:- show('ask(cashier_anne, missing_artifact).').
?- ask(cashier_anne, missing_artifact), show_result.
:- show('ask(cashier_anne, artifact_replica).').
?- ask(cashier_anne, artifact_replica), show_result.
:- show('ask(cashier_anne, gossip).').
?- ask(cashier_anne, gossip), show_result.
:- show('ask(cashier_anne, alibi).').
?- ask(cashier_anne, alibi), show_result.

:- show('e.').
?- e, show_result.

:- show('s.').
?- s, show_result.

:- show('s.').
?- s, show_result.

:- show('w.').
?- w, show_result.

:- show('w.').
?- w, show_result.

:- show('n.').
?- n, show_result.

:- show('e.').
?- e, show_result.

:- show('inventory.').
?- inventory, show_result.

:- show('scan(hammer).').
?- scan(hammer), show_result.
:- show('scan(metal_debris).').
?- scan(metal_debris), show_result.
:- show('scan(shattered_glass).').
?- scan(shattered_glass), show_result.

:- show('drop(metal_debris).').
?- drop(metal_debris), show_result.
:- show('drop(shattered_glass).').
?- drop(shattered_glass), show_result.

:- show('look.').
?- look, show_result.

:- show('inventory.').
?- inventory, show_result.

:- show('w.').
?- w, show_result.

:- show('s.').
?- s, show_result.

:- show('e.').
?- e, show_result.

:- show('e.').
?- e, show_result.

:- show('n.').
?- n, show_result.

:- show('n.').
?- n, show_result.

:- show('talk(attendant_julie).').
?- talk(attendant_julie), show_result.

:- show('ask(attendant_julie, janitor).').
?- ask(attendant_julie, janitor), show_result.
:- show('ask(attendant_julie, closed_exhibit).').
?- ask(attendant_julie, closed_exhibit), show_result.
:- show('ask(attendant_julie, closed_exhibit).').
?- ask(attendant_julie, closed_exhibit), show_result.

:- show('look.').
?- look, show_result.

:- show('take(key_to_the_exhibit).').
?- take(key_to_the_exhibit), show_result.

:- show('n.').
?- n, show_result.

:- show('n.').
?- n, show_result.

:- show('n.').
?- n, show_result.

:- show('n.').
?- n, show_result.

:- show('talk(renovator_theodore).').
?- talk(renovator_theodore), show_result.

:- show('ask(renovator_theodore, hello).').
?- ask(renovator_theodore, hello), show_result.
:- show('ask(renovator_theodore, admire).').
?- ask(renovator_theodore, admire), show_result.
:- show('ask(renovator_theodore, missing_artifact).').
?- ask(renovator_theodore, missing_artifact), show_result.
:- show('ask(renovator_theodore, alibi).').
?- ask(renovator_theodore, alibi), show_result.
:- show('ask(renovator_theodore, gossip).').
?- ask(renovator_theodore, gossip), show_result.
:- show('ask(renovator_theodore, missing_tool).').
?- ask(renovator_theodore, missing_tool), show_result.

:- show('s.').
?- s, show_result.

:- show('s.').
?- s, show_result.

:- show('e.').
?- e, show_result.

:- show('take(key_card).').
?- take(key_card), show_result.

:- show('inventory.').
?- inventory, show_result.

:- show('drop(key_to_the_exhibit).').
?- drop(key_to_the_exhibit), show_result.

:- show('w.').
?- w, show_result.

:- show('s.').
?- s, show_result.

:- show('e.').
?- e, show_result.

:- show('take(dvd).').
?- take(dvd), show_result.

:- show('inspect(dvd).').
?- inspect(dvd), show_result.

:- show('talk(guard_mike).').
?- talk(guard_mike), show_result.

:- show('ask(guard_mike, hello).').
?- ask(guard_mike, hello), show_result.
:- show('ask(guard_mike, alibi).').
?- ask(guard_mike, alibi), show_result.
:- show('ask(guard_mike, key_card).').
?- ask(guard_mike, key_card), show_result.
:- show('ask(guard_mike, artifact_dvd).').
?- ask(guard_mike, artifact_dvd), show_result.
:- show('ask(guard_mike, anna_dvd).').
?- ask(guard_mike, anna_dvd), show_result.
:- show('ask(guard_mike, womans_toilet).').
?- ask(guard_mike, womans_toilet), show_result.

:- show('w.').
?- w, show_result.

:- show('s.').
?- s, show_result.

:- show('e.').
?- e, show_result.

:- show('n.').
?- n, show_result.

:- show('s.').
?- s, show_result.

:- show('s.').
?- s, show_result.

:- show('n.').
?- n, show_result.

:- show('w.').
?- w, show_result.

:- show('s.').
?- s, show_result.

:- show('s.').
?- s, show_result.

:- show('w.').
?- w, show_result.

:- show('s.').
?- s, show_result.


