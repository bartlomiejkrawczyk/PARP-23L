module Story.City where

import Rules.Fact
import Rules.Item
import Rules.Location
import Rules.Person
import Story.House

-- Items
stickCane =
  Item
    "stick_cane"
    ["Some kid must have brought it from the forest"]
    Nothing

fourLeafClover =
  Item
    "four_leaf_clover"
    [ "It's your lucky day!",
      "Not every day you find a four leaf clover!",
      "Better keep it to bring you luck on your case"
    ]
    Nothing

-- People
bookWorms =
  Person
    "book_worms"
    [Subject "book" "I'am reading now! Can't you see!" Nothing]

politician =
  Person
    "politician"
    [Subject "money" "We are working to make our future brighter!" Nothing]

-- TODO: Activate Tom when asked_mike_about_criminal_record, gossiped_with_renovator_theodore

janitorTom =
  Person
    "janitor_Tom"
    [ Subject "sick" "*Caugh* *Caugh* Good morning, I'd like some meds, because recently... uh... I've had a very... uh... cold, I've caught a cold and... I'm very sick." Nothing,
      Subject "alibi" "I? yyyy .... I was at ... home, yes I was at home ... why are you looking at me so suspiciously? all day ... yy *Caugh* *Caugh* ... I spent with my wife, yes I spent all day with my wife ... ask her *Caugh* *Caugh*" $ Just (ConversationResult $ Fact "talked_with_janitor_Tom")
    ]

tourists =
  Person
    "tourists"
    [Subject "missing_artifact" "Nie mówię po angielsku.\nNie rozumiem co do mnie mówisz!" Nothing]

playingPopularKid =
  Person
    "playing_popular_kid"
    [Subject "something_suspicious" "I? ha, you hear it guys, he's asking me about some shady things. I haven't seen anything, nor do I do anything suspicious." Nothing]

playingQuietKid =
  Person
    "playing_quiet_kid"
    [Subject "something_suspicious" "Who are you? I don't talk to strangers ... I saw someone bury something in the woods near an old tree" $ Just (ConversationResult $ Fact "something_suspicious")]

playingAthleticKid =
  Person
    "playing_athletic_kid"
    [Subject "something_suspicious" "You have a strange coat hahaha, you look like an old grandpa. ... Pass it to me! ... I didn't see anything ... Who are you passing to !? ... I'm going to play, I don't have time" Nothing]

oldFreak =
  Person
    "old_freak"
    [ Subject "age" "I'am 104 years old!" Nothing,
      Subject "knowledge" "I know it all!" Nothing,
      Subject "food" "Boss! Can you give me some spare change? I'd like to buy something to eat!" Nothing,
      ConditionalSubject (HoldingCondition "beer") "give_beer" "How can I thank you?" Nothing
    ]

-- Locations

bakerStreet =
  Location
    "Baker Street"
    [ "You see Baker Street is a quaint, off-the-beaten-track street nestled between two hills.",
      "It's lined with charming, old-fashioned buildings,",
      "including your office and house, as well as a cozy cafe and a vintage bookstore.",
      "The street exudes a sense of peaceful seclusion,",
      "making it the perfect spot for the detective",
      "to solve cases away from the bustle of the city."
    ]
    [bookWorms]
    [ simpleItem "litter",
      simpleItem "flyer"
    ]
    ( Paths
        (Path "Detective's office")
        (Path "Detective's house")
        (Path "City Square")
        InvalidPath
    )

citySquare =
  Location
    "City Square"
    [ "You see City Square is a bustling, energetic hub located in the heart of the city.",
      "It's surrounded by tall skyscrapers,",
      "historical buildings, and busy streets.",
      "The square is home to the police station, city hall,",
      "and other important government buildings,",
      "making it a central location for civic activities and public events."
    ]
    [ politician,
      janitorTom
    ]
    [ simpleItem "broken_glass",
      simpleItem "yesterdays_newspaper"
    ]
    ( Paths
        InvalidPath
        (Path "Police Station")
        (Path "Westbourne Road")
        (Path "Baker Street")
    )

westbourneRoad =
  Location
    "Westbourne Road"
    [ "You see Westbourne Road is a winding street that",
      "leads to a dense forest on the outskirts of the city.",
      "It's a peaceful drive, with few buildings and little traffic along the way.",
      "Visitors can find an antique museum showcasing",
      "Egyptian antiquities on this road,",
      "offering a unique and fascinating glimpse into the ancient world."
    ]
    [ tourists,
      playingPopularKid,
      playingQuietKid,
      playingAthleticKid
    ]
    [ stickCane
    ]
    ( Paths
        (Path "Museum")
        InvalidPath
        (Path "Forest")
        (Path "City Square")
    )

forest =
  Location
    "Forest"
    [ "You are in The forest located on the outskirts of the town",
      "where the hut is located is dense and lush,",
      "with tall trees reaching towards the sky.",
      "The forest floor is covered in a thick layer of moss and fallen leaves,",
      "providing a soft cushion for every step.",
      "The air is filled with the sweet scent of pine",
      "and the sound of birds chirping in the trees."
    ]
    [oldFreak]
    [ simpleItem "stone",
      simpleItem "stick",
      simpleItem "red_leaves",
      simpleItem "green_leaf",
      simpleItem "frog",
      fourLeafClover
    ]
    ( Paths
        (Path "Forest")
        (Path "Forest")
        (Path "Forest Path")
        (Path "Westbourne Road")
    )

forestPath =
  Location
    "Forest Path"
    []
    []
    []
    ( Paths
        (Path "Forest")
        (Path "Forest")
        (ConditionalPath (Path "Forest Glade") (FactCondition $ Fact "talked_with_janitor_Tom") (Path "Forest"))
        (Path "Forest")
    )

cityLocations =
  [ bakerStreet,
    citySquare,
    westbourneRoad,
    forest,
    forestPath
  ]