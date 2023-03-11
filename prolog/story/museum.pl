% Info

info(reception) :-
    write('You see reception desk at the museum located near the entrance'), nl,
    write('and is staffed by friendly personnel who welcome visitors and provide information.'), nl,
    write('The desk is adorned with brochures,'), nl,
    write('maps, and other promotional materials to help guide visitors through the museum.').

info(gift_shop) :-
    write('You see gift shop filled with an assortment of souvenirs'), nl,
    write('and merchandise related to the museum''s exhibits.'), nl,
    write('Visitors can purchase books, postcards, toys,'), nl,
    write('and other items as a memento of their visit.').

info(bathroom) :-
    write('You are in bathrooms in museums have tiled floors and walls,'), nl,
    write('and are usually maintained regularly to ensure cleanliness.'), nl,
    write('They are separated by gender.'), nl,
    write('Basic amenities such as soap, paper towels, and toilet paper are provided.').

info(womens_bathroom) :-
    write('You are in women''s bathroom. There is dimly lit'), nl,
    write('and has a flickering fluorescent light above the sink,'), nl,
    write('with graffiti scrawled on the walls and a clogged toilet in the corner.').

info(mens_bathroom) :-
    write('You are in men''s bathroom which is in ruins.'), nl,
    write('There are broken tiles on the floor,'), nl,
    write('a cracked mirror above the sink, and a musty odor from the leaky pipes in the wall.').

info(greek_exhibit_hall) :-
    write('You are at Greek exhibition in the museum showcases'), nl,
    write('a collection of ancient artifacts, including pottery, statues, and jewelry.'), nl,
    write('The items are displayed in glass cases'), nl,
    write('with detailed information about their history and significance.'), nl,
    write('The exhibit provides a fascinating glimpse'), nl,
    write('into the art and culture of ancient Greece.').

info(egyptian_exhibit_hall) :-
    write('You are at Egyptian museum exhibit without an ancient statue,'), nl,
    write('there are numerous other treasures such as hieroglyphics on stone tablets,'), nl,
    write('ornately decorated sarcophagi, and intricate jewelry.'), nl,
    write('Additionally, there are mysterious footprints leading to'), nl,
    write('and from one of the artifacts,'), nl,
    write('leaving visitors wondering about their significance'), nl,
    write('and potential connection to ancient Egyptian beliefs and customs.').

info(display_case) :-
    write('You see display case where the statue was kept'), nl,
    write('appears to have been forcefully opened by the thief using some kind of tool,'), nl,
    write('with shattered glass and metal debris scattered around the base.').

info(garden) :-
    write('You are in museum garden is a tranquil oasis filled with lush greenery'), nl,
    write('and colorful blooms,'), nl,
    write('offering visitors a peaceful escape from the hustle and bustle of the city.'), nl,
    write('The garden features winding pathways, benches for seating,'), nl,
    write('and artistic sculptures that blend seamlessly with the natural surroundings.').

info(roman_exhibit_hall) :-
    write('You are at Roman exhibition in the museum features an impressive collection of artifacts,'), nl,
    write('including statues, mosaics, and architectural fragments.'), nl,
    write('Visitors can immerse themselves in the history of the Roman Empire'), nl,
    write('and gain insights into the daily life'), nl,
    write('and cultural achievements of its people.').

info(janitors_closet) :-
    write('You are in janitor''s closet.'), nl,
    write('It is a small and cluttered space filled with cleaning supplies,'), nl,
    write('mops, brooms, and other maintenance tools.'), nl,
    write('It is typically located in a discreet corner of the building,'), nl,
    write('out of sight of visitors.').

info(cctv_room) :-
    write('You are in CCTV room is a secure area of the building'), nl,
    write('where trained personnel monitor the various cameras installed throughout the premises.'), nl,
    write('The room typically features multiple screens displaying live footage'), nl,
    write('from different areas of the building,'), nl,
    write('allowing the staff to keep a watchful eye on the premises'), nl,
    write('and ensure the safety of visitors and staff.').

info(renovated_exhibit) :-
    write('You see an exhibition under renovation.'), nl,
    write('Due to ongoing renovation work,'), nl,
    write('the exhibition in the museum is currently inaccessible to visitors,'), nl,
    write('with restricted access signs posted at the entrance.'), nl,
    write('The museum staff is working hard to improve and update the exhibition,'), nl,
    write('and visitors can look forward to a renewed'), nl,
    write('and refreshed experience once the work is complete.').