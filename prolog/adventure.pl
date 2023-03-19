/** 
 *   "The Case of the Missing Artifact", 
 *    by Mateusz Brzozowski, Bartłomiej Krawczyk and Jakub Winter. 
 */

:- dynamic
        i_am_at/1, 
        at/2, 
        holding/1,
        items_number/1,
        subject/3,
        conversation_result/2,
        seen_closed_exhibit/0,
        asked_for_criminal_record/0,
        talked_with_mike/0,
        asked_mike_about_criminal_record/0,
        gossiped_with_renovator_theodore/0,
        janitors_house_available/0,
        old_tree_available/0,
        statue_scanned/0,
        red_jacket_scanned/0,
        white_gloves_scanned/0,
        can_finish/0.

:- 
    retractall(at(_, _)),
    retractall(i_am_at(_)), 
    retractall(holding(_)),
    retractall(alive(_)),
    retractall(items_number(_)),
    retractall(subject(_, _, _)),
    retractall(conversation_result(_, _)),
    retractall(seen_closed_exhibit),
    retractall(asked_for_criminal_record),
    retractall(talked_with_mike),
    retractall(asked_mike_about_criminal_record),
    retractall(gossiped_with_renovator_theodore),
    retractall(janitors_house_available),
    retractall(old_tree_available),
    retractall(statue_scanned),
    retractall(red_jacket_scanned),
    retractall(white_gloves_scanned),
    retractall(can_finish).

:-
    ensure_loaded(rules/talk),
    ensure_loaded(story/story),
    ensure_loaded(story/paths),
    ensure_loaded(story/office),
    ensure_loaded(story/house),
    ensure_loaded(story/city),
    ensure_loaded(story/museum),
    ensure_loaded(story/police),
    ensure_loaded(story/janitor),
    ensure_loaded(rules/help),
    ensure_loaded(rules/inventory),
    ensure_loaded(rules/look),
    ensure_loaded(rules/movement),
    ensure_loaded(rules/scan),
    ensure_loaded(rules/use).
