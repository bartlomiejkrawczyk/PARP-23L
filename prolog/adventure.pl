/** 
 *   "The Case of the Missing Artifact", 
 *    by Mateusz Brzozowski, Bartłomiej Krawczyk and Jakub Winter. 
 */

:- dynamic
        i_am_at/1, 
        at/2, 
        holding/1,
        items_number/1.

:- 
    retractall(at(_, _)), 
    retractall(i_am_at(_)), 
    retractall(holding(_)),
    retractall(alive(_)).

:-
    ensure_loaded(story/story),
    ensure_loaded(story/paths),
    ensure_loaded(story/office),
    ensure_loaded(story/house),
    ensure_loaded(rules/help),
    ensure_loaded(rules/inventory),
    ensure_loaded(rules/look),
    ensure_loaded(rules/movement),
    ensure_loaded(rules/talk),
    ensure_loaded(rules/scan),
    ensure_loaded(rules/use).
