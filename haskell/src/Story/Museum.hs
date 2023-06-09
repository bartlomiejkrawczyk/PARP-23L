module Story.Museum where

import Rules.Fact
import Rules.Item
import Rules.Location
import Rules.Person

-- Items
wobblyShovel =
  Item
    "wobbly_shovel"
    ["This shovel is too weak, I'm about to break it, I need to find something to make it stronger."]
    Nothing
    Nothing

dvd =
  Item
    "dvd"
    [ "You review the CCTV footage from the museum's security cameras, but it doesn't",
      "provide any clear visuals of the thief's face. However, you do notice that",
      "the thief was wearing a distinctive red jacket."
    ]
    Nothing
    (Just $ FactCondition (Fact "talked_with_anne"))

hammer =
  Item
    "hammer"
    ["'The burglars must have broken the protective glass with this hammer, I have to take it and see if there are any fingerprints on it"]
    (Just "Renovator Theodore")
    Nothing

keyToTheExhibit =
  Item
    "key_to_the_exhibit"
    []
    (Just "Attendant Julie")
    (Just $ FactCondition (Fact "asked_about_closed_exhibit"))

-- People

attendantJulie =
  Person
    "attendant_Julie"
    [ Subject "missing_artifact" "The burglary happened a few days ago, the burglars broke into the Egyptian hall, they stole the artifact from there." Nothing,
      Subject "alibi" "As for me, I couldn't do it, I spent the whole day with my husband, he is a police officer, you can talk to him, you will find him at the police station." Nothing,
      Subject "potential_witnesses" "You can try to talk to the cashier who is on the left in the gift shop, she must have been in the museum at the time, she must have been closing the shop. You can also try to interrogate the renovator who is at the end of the hall and is still renovating the hall." Nothing,
      Subject "gossip" "I would bet that the restorer must have stolen the statue, he seemed suspicious to me from the beginning, only he is constantly hanging around monuments." Nothing,
      ConditionalSubject
        (FactCondition (Fact "seen_Renovated Exhibit"))
        "janitor"
        "He called sick and haven't shown in work for a while."
        Nothing,
      ConditionalSubject
        (MultiCondition [FactCondition $ Fact "seen_Renovated Exhibit", NoFactCondition $ Fact "asked_about_closed_exhibit"])
        "closed_exhibit"
        "Here you go! You can take this key to the renovated exhibit!"
        (Just $ ConversationResult (Fact "asked_about_closed_exhibit")),
      ConditionalSubject
        (FactCondition (Fact "asked_about_closed_exhibit"))
        "closed_exhibit"
        "I have already given you the key to the exibit!"
        Nothing
    ]

guardMike =
  ConditionPerson
    "guard_Mike"
    [ Subject
        "alibi"
        "I am clean as you can see on camera number 1, here I am sitting in front of the camera screen in the camera room. And if there are burglars, you can see on the fourth camera that I go into the women's toilet."
        (Just $ ConversationResult (Fact "talked_with_mike")),
      Subject "key_card" "Each of the museum employees has such a card, it is used to move around the museum" Nothing,
      ConditionalSubject (NoFactCondition (Fact "asked_about_fingerprints")) "artifact_dvd" "Hmm ... on camera number 10 there is a man in a red jacket, black trousers and a black hat, doing something in the Egyptian hall, also wearing white gloves." Nothing,
      ConditionalSubject (FactCondition (Fact "asked_about_fingerprints")) "artifact_dvd" "Oh, look at camera number 9 here for a moment there is a man in a red jacket" Nothing,
      Subject "anna_dvd" "Look at camera number 20, our cashier Anna was standing behind the counter at the time, looking through some leaflet" Nothing,
      ConditionalSubject (FactCondition (Fact "talked_with_mike")) "womans_toilet" "Have you ever been to the men's toilet at our museum? they are terrible, I hate going there, that's why I always go to the women's toilet." Nothing,
      ConditionalSubject
        (HoldingCondition "mikes_criminal_record")
        "criminal_record"
        "These are some slander and fabricated evidence, and besides, even if it were me, I haven't been dealing with such things for twelve years, I'm a different person, I've changed, really if it were me, I certainly wouldn't do such things things, I have a family of children to feed."
        (Just $ ConversationResult (Fact "asked_mike_about_criminal_record"))
    ]
    $ MultiCondition
      [ FactCondition (Fact "talked_with_anne"),
        NoFactCondition (Fact "white_gloves_scanned"),
        NoFactCondition (Fact "red_jacket_scanned"),
        NoFactCondition (Fact "missing_statue_scanned")
      ]

cashierAnne =
  Person
    "cashier_Anne"
    [ Subject "missing_artifact" "I liked this golden statue, customers of the souvenir shop were eager to buy its replica." Nothing,
      Subject "artifact_replica" "How can I help you? Maybe you want to buy a gold statue artifact replica?" Nothing,
      Subject "gossip" "Did you talk to the guide, maybe he stole it when no one was looking, he often walks around with unaware kids, he seems strange" Nothing,
      Subject "alibi" "There are cameras all over the store, you can check them and you'll find out I was behind the counter at the time." (Just $ ConversationResult (Fact "talked_with_anne"))
    ]

guideMary =
  Person
    "guide_Mary"
    [ Subject "tour" "To the right we can see a large statue of Julius Ceraz, from the Battle of Alesia, this battle was fought between the Roman army besieging the Gallic city of Alesia and the forces of the rebel Gauls. It took place in 52 BCE. during the conquest of Gaul by Gaius Julius Caesar. The actions of Roman forces near Alesia are the largest siege operation in the history of ancient wars." Nothing,
      Subject "missing_artifact" "Golden statue shows the god Amun first came into prominence at the beginning of the Middle Kingdom. From the New Kingdom onward, Amun was arguably the most important god in the Egyptian pantheon" Nothing,
      Subject "gossip" "I don't know anything, but they say in the city that he's an orchard, after all, he always closes the whole museum." Nothing,
      Subject "alibi" "I not only work at the museum here, I have many other activities, that day I was anticipating a school trip, we were in the nearby park at the time" Nothing
    ]

renovatorTheodore =
  Person
    "renovator_Theodore"
    [ Subject "admire" "I'm glad there are people like you, I hope you get things sorted out as soon as possible." Nothing,
      Subject
        "missing_artifact"
        "And there's always someone hanging around this statue, I'm not surprised that someone stole it."
        Nothing,
      Subject
        "gossip"
        "A terrible mess is still in the Egyptian hall, there is no one to clean it up, the janitor just after the burglary says that he got sick."
        (Just $ ConversationResult (Fact "gossiped_with_renovator_theodore")),
      Subject "alibi" "That day I had a lot of work, I was very busy and I spent the whole day in the renovated hall, you will surely find someone who will confirm it." Nothing,
      ConditionalSubject
        (FactCondition (Fact "hammer_scanned"))
        "missing_tool"
        "Wait, I'll check right now, I don't think so ... And that's your fate, I don't see my hammer anywhere, I must have left it somewhere."
        $ Just (ConversationResult $ Fact "asked_about_hammer"),
      ConditionalSubject
        (FactCondition (Fact "asked_about_hammer"))
        "fingerprints"
        "Well, if my fingerprints are normal, unless it's my tool? Then the thief must have had gloves, I haven't used it in days"
        $ Just (ConversationResult $ Fact "asked_about_fingerprints")
    ]

museumDirectorJohn =
  ConditionPerson
    "museum_director_John"
    [ Subject
        "missing_artifact"
        "Hello, we are very grateful to you for helping us solve the mystery of the missing golden statue. Not only did you find the criminals, but you also found the missing artifact, thanks to you, visitors will still be able to admire it after we reopen the Egyptian hall. The thieves, unfortunately, Mike and Tom managed to escape, but I'm not worried because thanks to you, they are wanted by the police and they will be caught."
        (Just $ ConversationResult (Fact "game_over"))
    ]
    $ MultiCondition [FactCondition (Fact "missing_statue_scanned"), FactCondition (Fact "red_jacket_scanned"), FactCondition (Fact "white_gloves_scanned")]

-- Locations
museum =
  Location
    "Museum"
    []
    [museumDirectorJohn]
    []
    ( Paths
        (Path "Reception")
        (Path "Westbourne Road")
        InvalidPath
        InvalidPath
    )

reception =
  Location
    "Reception"
    [ "You see reception desk at the museum located near the entrance",
      "and is staffed by friendly personnel who welcome visitors and provide information.",
      "The desk is adorned with brochures,",
      "maps, and other promotional materials to help guide visitors through the museum."
    ]
    [attendantJulie]
    [keyToTheExhibit]
    ( Paths
        (Path "Greek Exhibit Hall")
        (Path "Museum")
        (Path "Bathroom")
        (Path "Gift Shop")
    )

giftShop =
  Location
    "Gift Shop"
    [ "You see gift shop filled with an assortment of souvenirs",
      "and merchandise related to the museum's exhibits.",
      "Visitors can purchase books, postcards, toys,",
      "and other items as a memento of their visit."
    ]
    [cashierAnne]
    []
    ( Paths
        InvalidPath
        InvalidPath
        (Path "Reception")
        InvalidPath
    )

bathroom =
  Location
    "Bathroom"
    [ "You are in bathrooms in museums have tiled floors and walls,",
      "and are usually maintained regularly to ensure cleanliness.",
      "They are separated by gender.",
      "Basic amenities such as soap, paper towels, and toilet paper are provided."
    ]
    []
    []
    ( Paths
        (Path "Women's Bathroom")
        (Path "Men's Bathroom")
        InvalidPath
        (Path "Reception")
    )

womensBathroom =
  Location
    "Women's Bathroom"
    [ "You are in women's bathroom. There is dimly lit",
      "and has a flickering fluorescent light above the sink,",
      "with graffiti scrawled on the walls and a clogged toilet in the corner."
    ]
    []
    []
    ( Paths
        InvalidPath
        (Path "Bathroom")
        InvalidPath
        InvalidPath
    )

mensBathroom =
  Location
    "Men's Bathroom"
    [ "You are in men's bathroom which is in ruins.",
      "There are broken tiles on the floor,",
      "a cracked mirror above the sink, and a musty odor from the leaky pipes in the wall."
    ]
    []
    []
    ( Paths
        (Path "Bathroom")
        InvalidPath
        InvalidPath
        InvalidPath
    )

greekExhibitHall =
  Location
    "Greek Exhibit Hall"
    [ "You are at Greek exhibition in the museum showcases",
      "a collection of ancient artifacts, including pottery, statues, and jewelry.",
      "The items are displayed in glass cases",
      "with detailed information about their history and significance.",
      "The exhibit provides a fascinating glimpse",
      "into the art and culture of ancient Greece."
    ]
    []
    []
    ( Paths
        (Path "Egyptian Exhibit Hall")
        (Path "Reception")
        (LockedPath "CCTV Room" "key_card")
        (LockedPath "Janitor's Closet" "old_key")
    )

egyptianExhibitHall =
  Location
    "Egyptian Exhibit Hall"
    [ "You are at Egyptian museum exhibit without an ancient statue,",
      "there are numerous other treasures such as hieroglyphics on stone tablets,",
      "ornately decorated sarcophagi, and intricate jewelry.",
      "Additionally, there are mysterious footprints leading to",
      "and from one of the artifacts,",
      "leaving visitors wondering about their significance",
      "and potential connection to ancient Egyptian beliefs and customs."
    ]
    []
    []
    ( Paths
        (Path "Roman Exhibit Hall")
        (Path "Greek Exhibit Hall")
        (Path "Garden")
        (Path "Display Case")
    )

displayCase =
  Location
    "Display Case"
    [ "You see display case where the statue was kept",
      "appears to have been forcefully opened by the thief using some kind of tool,",
      "with shattered glass and metal debris scattered around the base."
    ]
    []
    [ simpleItem "shattered_glass",
      simpleItem "metal_debris",
      hammer
    ]
    ( Paths
        InvalidPath
        InvalidPath
        (Path "Egyptian Exhibit Hall")
        InvalidPath
    )

garden =
  Location
    "Garden"
    [ "You are in museum garden is a tranquil oasis filled with lush greenery",
      "and colorful blooms,",
      "offering visitors a peaceful escape from the hustle and bustle of the city.",
      "The garden features winding pathways, benches for seating,",
      "and artistic sculptures that blend seamlessly with the natural surroundings."
    ]
    []
    [ simpleItem "key_card",
      simpleItem "red_piece_of_fabric"
    ]
    ( Paths
        InvalidPath
        InvalidPath
        InvalidPath
        (Path "Egyptian Exhibit Hall")
    )

romanExhibitHall =
  Location
    "Roman Exhibit Hall"
    [ "You are at Roman exhibition in the museum features an impressive collection of artifacts,",
      "including statues, mosaics, and architectural fragments.",
      "Visitors can immerse themselves in the history of the Roman Empire",
      "and gain insights into the daily life",
      "and cultural achievements of its people."
    ]
    [guideMary]
    []
    ( Paths
        (LockedPath "Renovated Exhibit" "key_to_the_exhibit")
        (Path "Egyptian Exhibit Hall")
        InvalidPath
        InvalidPath
    )

janitorsCloset =
  Location
    "Janitor's Closet"
    [ "You are in janitor's closet",
      "It is a small and cluttered space filled with cleaning supplies,",
      "mops, brooms, and other maintenance tools.",
      "It is typically located in a discreet corner of the building,",
      "out of sight of visitors."
    ]
    []
    [wobblyShovel]
    ( Paths
        InvalidPath
        InvalidPath
        (LockedPath "Greek Exhibit Hall" "old_key")
        InvalidPath
    )

cctvRoom =
  Location
    "CCTV Room"
    [ "You are in CCTV room is a secure area of the building",
      "where trained personnel monitor the various cameras installed throughout the premises.",
      "The room typically features multiple screens displaying live footage",
      "from different areas of the building,",
      "allowing the staff to keep a watchful eye on the premises",
      "and ensure the safety of visitors and staff."
    ]
    [guardMike]
    [dvd]
    ( Paths
        InvalidPath
        InvalidPath
        InvalidPath
        (LockedPath "Greek Exhibit Hall" "key_card")
    )

renovatedExhibit =
  Location
    "Renovated Exhibit"
    [ "You see an exhibition under renovation.",
      "Due to ongoing renovation work,",
      "the exhibition in the museum is currently inaccessible to visitors,",
      "with restricted access signs posted at the entrance.",
      "The museum staff is working hard to improve and update the exhibition,",
      "and visitors can look forward to a renewed",
      "and refreshed experience once the work is complete."
    ]
    [renovatorTheodore]
    []
    ( Paths
        InvalidPath
        (LockedPath "Roman Exhibit Hall" "key_to_the_exhibit")
        InvalidPath
        InvalidPath
    )

museumLocations =
  [ museum,
    reception,
    giftShop,
    bathroom,
    mensBathroom,
    womensBathroom,
    greekExhibitHall,
    egyptianExhibitHall,
    romanExhibitHall,
    displayCase,
    garden,
    renovatedExhibit,
    janitorsCloset,
    cctvRoom
  ]
