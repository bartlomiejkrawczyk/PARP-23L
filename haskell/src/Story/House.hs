module Story.House where

import Rules.Inventory
import Rules.Location
import Rules.Person

-- Items

-- TODO: add fingerprints functionality to item + add description
vodka =
  Item
    "vodka"
    ["TODO"]
    "Tim"

-- People

dorothy =
  Person
    "Dorothy"
    [ Subject "love" "I love you sweety!",
      Subject "dinner" "Dinner will be ready soon!"
    ]

-- Locations

house =
  Location
    "Detective's house"
    [ "Your house has a cozy living room with a fireplace and vintage posters,",
      "and a fully-equipped modern kitchen with a sleek fridge. Outside, the mailbox",
      "stands by the front door, waiting for the detective''s daily dose of letters,",
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
        "Baker Street"
        ""
        "Fridge"
        "Mailbox"
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
        ""
        ""
        ""
        "Detective's house"
    )

-- TODO: implement message when letter is available

mailbox =
  Location
    "Mailbox"
    [ "Your mailbox stands by the front door, painted in a faded red hue and adorned",
      "with small dents and scratches."
    ]
    []
    []
    ( Paths
        ""
        ""
        "Detective's house"
        ""
    )

houseLocations =
  [ house,
    mailbox,
    fridge
  ]