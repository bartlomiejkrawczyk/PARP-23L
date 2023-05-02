module Story.House where

import Rules.Fact
import Rules.Item
import Rules.Location
import Rules.Person

-- Items

vodka =
  Item
    "vodka"
    ["Your friend tim left if after a party!"]
    (Just "Tim")
    Nothing

letter =
  Item
    "letter"
    ["Police Station, Chief Tony Hank. Registered letter from the police, I need to find a knife to open it"]
    (Just "Sheriff Tony Hank")
    (Just $ MultiCondition [FactCondition (Fact "asked_for_criminal_record"), FactCondition (Fact "talked_with_mike")])

-- People

dorothy =
  Person
    "Dorothy"
    [ Subject "love" "I love you sweety!" Nothing,
      Subject "dinner" "Dinner will be ready soon!" Nothing,
      ConditionalSubject (HoldingCondition "vodka") "vodka" "You shouldn't be parading with vodka around town!" Nothing
    ]

-- Locations

house =
  Location
    "Detective's house"
    [ "Your house has a cozy living room with a fireplace and vintage posters,",
      "and a fully-equipped modern kitchen with a sleek fridge. Outside, the mailbox",
      "stands by the front door, waiting for the detective's daily dose of letters,",
      "packages, and clues."
    ]
    [dorothy]
    [ simpleItem "fork",
      simpleItem "spoon",
      simpleItem "tea_spoon",
      simpleItem "knife",
      simpleItem "cup",
      simpleItem "screwdriver",
      simpleItem "plate",
      simpleItem "bowl"
    ]
    ( Paths
        (Path "Baker Street")
        InvalidPath
        (Path "Mailbox")
        (Path "Fridge")
    )

fridge =
  Location
    "Fridge"
    [ "Your fridge is sleek and modern, with a stainless steel finish and a minimalist",
      "design. Inside it is well stocked with a variety of products"
    ]
    []
    [ simpleItem "water",
      simpleItem "milk",
      simpleItem "beer",
      vodka,
      simpleItem "whiskey",
      simpleItem "ice",
      simpleItem "cheese",
      simpleItem "ham",
      simpleItem "chicken_wings",
      simpleItem "leftovers",
      simpleItem "fish",
      simpleItem "pizza",
      simpleItem "watermelon",
      simpleItem "banana",
      simpleItem "lettuce",
      simpleItem "salad",
      simpleItem "powder",
      simpleItem "ice_cream",
      simpleItem "cola",
      simpleItem "egg",
      simpleItem "butter",
      simpleItem "honey",
      simpleItem "jam",
      simpleItem "turkey",
      simpleItem "ketchup"
    ]
    ( Paths
        InvalidPath
        InvalidPath
        (Path "Detective's house")
        InvalidPath
    )

mailbox =
  Location
    "Mailbox"
    [ "Your mailbox stands by the front door, painted in a faded red hue and adorned",
      "with small dents and scratches."
    ]
    []
    [letter]
    ( Paths
        InvalidPath
        InvalidPath
        InvalidPath
        (Path "Detective's house")
    )

houseLocations =
  [ house,
    mailbox,
    fridge
  ]
