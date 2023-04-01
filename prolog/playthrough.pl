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

:- show('talk(policeman).').
?- talk(policeman), show_result.

:- show('ask(policeman, hello).').
?- ask(policeman, hello), show_result.
:- show('ask(policeman, help).').
?- ask(policeman, help), show_result.

:- show('w.').
?- w, show_result.

:- show('talk(scary_prisoner).').
?- talk(scary_prisoner), show_result.

:- show('ask(scary_prisoner, hello).').
?- ask(scary_prisoner, hello), show_result.
:- show('ask(scary_prisoner, reason).').
?- ask(scary_prisoner, reason), show_result.

:- show('take(makeshift_knife).').
?- take(makeshift_knife), show_result.

:- show('inspect(makeshift_knife).').
?- inspect(makeshift_knife), show_result.

:- show('look_around.').
?- look_around, show_result.

:- show('e.').
?- e, show_result.

:- show('e.').
?- e, show_result.

:- show('talk(sheriff).').
?- talk(sheriff), show_result.

:- show('ask(sheriff, hello).').
?- ask(sheriff, hello), show_result.
:- show('ask(sheriff, case).').
?- ask(sheriff, case), show_result.
:- show('ask(sheriff, employees_criminal_record).').
?- ask(sheriff, employees_criminal_record), show_result.

:- show('drop(makeshift_knife).').
?- drop(makeshift_knife), show_result.

:- show('w.').
?- w, show_result.

:- show('n.').
?- n, show_result.

:- show('w.').
?- w, show_result.

:- show('s.').
?- s, show_result.

:- show('e.').
?- e, show_result.

:- show('take(letter).').
?- take(letter), show_result.

:- show('inspect(letter).').
?- inspect(letter), show_result.

:- show('instructions.').
?- instructions, show_result.

:- show('w.').
?- w, show_result.

:- show('take(knife).').
?- take(knife), show_result.

:- show('inventory.').
?- inventory, show_result.

:- show('drop(dvd).').
?- drop(dvd), show_result.

:- show('take(knife).').
?- take(knife), show_result.

:- show('use(letter, knife).').
?- use(letter, knife), show_result.

:- show('inventory.').
?- inventory, show_result.

:- show('inspect(mikes_criminal_record).').
?- inspect(mikes_criminal_record), show_result.

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

:- show('n.').
?- n, show_result.

:- show('e.').
?- e, show_result.

:- show('talk(guard_mike).').
?- talk(guard_mike), show_result.

:- show('ask(guard_mike, criminal_record).').
?- ask(guard_mike, criminal_record), show_result.

:- show('w.').
?- w, show_result.

:- show('s.').
?- s, show_result.

:- show('s.').
?- s, show_result.

:- show('s.').
?- s, show_result.

:- show('w.').
?- w, show_result.

:- show('talk(janitor_tom).').
?- talk(janitor_tom), show_result.

:- show('ask(janitor_tom, hello).').
?- ask(janitor_tom, hello), show_result.
:- show('ask(janitor_tom, sick).').
?- ask(janitor_tom, sick), show_result.
:- show('ask(janitor_tom, alibi).').
?- ask(janitor_tom, alibi), show_result.

:- show('talk(politician).').
?- talk(politician), show_result.

:- show('ask(politician, hello).').
?- ask(politician, hello), show_result.
:- show('ask(politician, money).').
?- ask(politician, money), show_result.

:- show('e.').
?- e, show_result.

:- show('talk(tourists).').
?- talk(tourists), show_result.

:- show('ask(tourists, missing_artifact).').
?- ask(tourists, missing_artifact), show_result.

:- show('talk(playing_popular_kid).').
?- talk(playing_popular_kid), show_result.

:- show('ask(playing_popular_kid, hello).').
?- ask(playing_popular_kid, hello), show_result.
:- show('ask(playing_popular_kid, something_suspicious).').
?- ask(playing_popular_kid, something_suspicious), show_result.

:- show('talk(playing_quiet_kid).').
?- talk(playing_quiet_kid), show_result.

:- show('ask(playing_quiet_kid, hello).').
?- ask(playing_quiet_kid, hello), show_result.
:- show('ask(playing_quiet_kid, something_suspicious).').
?- ask(playing_quiet_kid, something_suspicious), show_result.

:- show('talk(playing_athletic_kid).').
?- talk(playing_athletic_kid), show_result.

:- show('ask(playing_athletic_kid, hello).').
?- ask(playing_athletic_kid, hello), show_result.
:- show('ask(playing_athletic_kid, something_suspicious).').
?- ask(playing_athletic_kid, something_suspicious), show_result.

:- show('e.').
?- e, show_result.

:- show('talk(old_freak).').
?- talk(old_freak), show_result.

:- show('ask(old_freak, hello).').
?- ask(old_freak, hello), show_result.
:- show('ask(old_freak, age).').
?- ask(old_freak, age), show_result.
:- show('ask(old_freak, knowledge).').
?- ask(old_freak, knowledge), show_result.
:- show('ask(old_freak, food).').
?- ask(old_freak, food), show_result.

:- show('n.').
?- n, show_result.

:- show('s.').
?- s, show_result.

:- show('e.').
?- e, show_result.

:- show('e.').
?- e, show_result.

:- show('s.').
?- s, show_result.

:- show('n.').
?- n, show_result.

:- show('n.').
?- n, show_result.

:- show('talk(judy).').
?- talk(judy), show_result.

:- show('ask(judy, hello).').
?- ask(judy, hello), show_result.
:- show('ask(judy, janitors_alibi).').
?- ask(judy, janitors_alibi), show_result.

:- show('take(old_key).').
?- take(old_key), show_result.

:- show('inventory.').
?- inventory, show_result.

:- show('drop(mikes_criminal_record).').
?- drop(mikes_criminal_record), show_result.
:- show('drop(knife).').
?- drop(knife), show_result.

:- show('take(old_key).').
?- take(old_key), show_result.

:- show('n.').
?- n, show_result.

:- show('w.').
?- w, show_result.

:- show('n.').
?- n, show_result.

:- show('n.').
?- n, show_result.

:- show('n.').
?- n, show_result.

:- show('w.').
?- w, show_result.

:- show('take(wobbly_shovel).').
?- take(wobbly_shovel), show_result.

:- show('inspect(wobbly_shovel).').
?- inspect(wobbly_shovel), show_result.

:- show('e.').
?- e, show_result.

:- show('s.').
?- s, show_result.

:- show('s.').
?- s, show_result.

:- show('s.').
?- s, show_result.

:- show('w.').
?- w, show_result.

:- show('w.').
?- w, show_result.

:- show('s.').
?- s, show_result.

:- show('inventory.').
?- inventory, show_result.

:- show('drop(key_card).').
?- drop(key_card), show_result.

:- show('take(screwdriver).').
?- take(screwdriver), show_result.

:- show('use(wobbly_shovel, screwdriver).').
?- use(wobbly_shovel, screwdriver), show_result.

:- show('inventory.').
?- inventory, show_result.

:- show('n.').
?- n, show_result.

:- show('e.').
?- e, show_result.

:- show('e.').
?- e, show_result.

:- show('e.').
?- e, show_result.

:- show('e.').
?- e, show_result.

:- show('e.').
?- e, show_result.

:- show('s.').
?- s, show_result.

:- show('e.').
?- e, show_result.

:- show('inventory.').
?- inventory, show_result.

:- show('drop(hammer).').
?- drop(hammer), show_result.

:- show('drop(old_key).').
?- drop(old_key), show_result.

:- show('drop(screwdriver).').
?- drop(screwdriver), show_result.

:- show('take(missing_statue).').
?- take(missing_statue), show_result.
:- show('inspect(missing_statue).').
?- inspect(missing_statue), show_result.

:- show('take(red_jacket).').
?- take(red_jacket), show_result.
:- show('inspect(red_jacket).').
?- inspect(red_jacket), show_result.

:- show('take(white_gloves).').
?- take(white_gloves), show_result.
:- show('inspect(white_gloves).').
?- inspect(white_gloves), show_result.


:- show('n.').
?- n, show_result.

:- show('w.').
?- w, show_result.

:- show('w.').
?- w, show_result.

:- show('w.').
?- w, show_result.

:- show('n.').
?- n, show_result.

:- show('e.').
?- e, show_result.

:- show('scan(missing_statue).').
?- scan(missing_statue), show_result.

:- show('scan(red_jacket).').
?- scan(red_jacket), show_result.

:- show('scan(white_gloves).').
?- scan(white_gloves), show_result.

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

:- show('talk(museum_director_john).').
?- talk(museum_director_john), show_result.

:- show('ask(museum_director_john, hello).').
?- ask(museum_director_john, hello), show_result.
:- show('ask(museum_director_john, missing_statue).').
?- ask(museum_director_john, missing_statue), show_result.

:- show('halt.').
:- halt.

