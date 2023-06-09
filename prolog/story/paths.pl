:- multifile holding/1, old_tree_available/0, janitors_house_available/0.

/* These rules define the positioning of places */

% City
two_way_path(baker_street, n, detectives_office).
two_way_path(baker_street, s, detectives_house).
two_way_path(baker_street, e, city_square).
two_way_path(city_square, s, police_station).
two_way_path(city_square, e, westbourne_road).
two_way_path(westbourne_road, n, museum).
two_way_path(westbourne_road, e, forest).

% Forest
two_way_path(forest, n, forest).
two_way_path(forest, e, forest_path).
two_way_path(forest_path, e, forest_glade) :- janitors_house_available.
two_way_path(forest_glade, n, toms_house).
two_way_path(forest_glade, s, old_tree) :- old_tree_available.

% Museum
two_way_path(museum, n, reception).
two_way_path(reception, w, gift_shop).
two_way_path(reception, e, bathroom).
two_way_path(reception, n, greek_exhibit_hall).
two_way_path(greek_exhibit_hall, n, egyptian_exhibit_hall).
two_way_path(egyptian_exhibit_hall, w, display_case).
two_way_path(egyptian_exhibit_hall, e, garden).
two_way_path(egyptian_exhibit_hall, n, roman_exhibit_hall).
two_way_path(bathroom, n, womens_bathroom).
two_way_path(bathroom, s, mens_bathroom).

% House
two_way_path(detectives_house, e, mailbox).
two_way_path(detectives_house, w, fridge).

% Police
two_way_path(police_station, e, policeman_office).
two_way_path(police_station, w, cage).

% Office
two_way_path(detectives_office, n, desk).
locked_two_way_path(detectives_office, e, fingerprints_detector, powder).

locked_two_way_path(greek_exhibit_hall, w, janitors_closet, old_key).
locked_two_way_path(greek_exhibit_hall, e, cctv_room, key_card).
locked_two_way_path(roman_exhibit_hall, n, renovated_exhibit, key_to_the_exhibit) :-
        retractall(seen_closed_exhibit),
        assert(seen_closed_exhibit).

locked_two_way_path(old_tree, e, digging_marks, shovel) :-
        retractall(person_at(guard_mike, _)),
        retractall(person_at(janitor_tom, _)).

% One-way forest roads
path(forest_glade, s, forest) :- not(old_tree_available).
path(forest_path, e, forest) :- not(janitors_house_available).

path(forest_glade, e, forest).

path(toms_house, n, forest).
path(toms_house, e, forest).
path(toms_house, w, forest).

path(digging_marks, n, forest).
path(digging_marks, e, forest).
path(digging_marks, s, forest).

path(old_tree, s, forest).
path(old_tree, w, forest).

path(forest_path, n, forest).
path(forest_path, s, forest).

path(Here, Direction, There) :-
        locked_path(Here, Direction, There, Object),
        holding(Object),
        !.

/* These rules define the possible movement in two directions */

path(Here, Direction, There) :- two_way_path(Here, Direction, There).
path(Here, Direction, There) :-
    opposite_directions(Direction, OppositeDirection),
    two_way_path(There, OppositeDirection, Here).

/* These rules define the locked doors mechanic */

locked_path(Here, Direction, There, Object) :- locked_two_way_path(Here, Direction, There, Object).

locked_path(Here, Direction, There, Object) :-
        opposite_directions(Direction, OppositeDirection),
        locked_two_way_path(There, OppositeDirection, Here, Object), !.


/* These rules define the opposite world directions */

opposite_directions(n, s).
opposite_directions(e, w).

opposite_directions(From, To) :- opposite_directions(To, From), !.
