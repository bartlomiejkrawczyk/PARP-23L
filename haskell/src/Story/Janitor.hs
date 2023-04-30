module Story.Janitor where

import Rules.Item
import Rules.Location
import Rules.Person

-- Items

oldKey =
  Item
    "old_key"
    ["This old key leads to janitors closet, I should try to open that door"]
    $ Just "Janitor Tom"

-- TODO: check if statue was scaned
missingStatue =
  Item
    "missing_statue"
    ["Golden statue from the museum! but why did someone bury her here? It's a good thing I found it, but maybe there are fingerprints on it that will help me find the burglars, I'll have to check it out."]
    $ Just "Guard Mike"

-- TODO: check if jacket was scaned
redJacket =
  Item
    "red_jacket"
    ["Red torn jacket, wasn't the burglar wearing one during the burglary? I wonder if there's any fingerprints on it, I'll have to check it out"]
    $ Just "Janitor Tom"

-- TODO: check if gloves were scaned
whiteGloves =
  Item
    "white_gloves"
    ["About the white gloves, they must be the same gloves the burglar was wearing on the win, I need to check for fingerprints."]
    $ Just "Janitor Tom"

-- People

judy =
  Person
    "Judy"
    [Subject "janitors_alibi" "My husband? spent the whole day outside by the house chopping wood"]

-- Locations

tomsHouse =
  Location
    "Tom's house"
    [ "You see the small cozy house in the middle of the forest,",
      "You notice a white picket fence surrounding the property.",
      "The windows of the house are covered with dark curtains,",
      "making it difficult to see inside.",
      "A rusty old mailbox hangs on a post near the entrance."
    ]
    [judy]
    [ simpleItem "black_and_white_magazine",
      simpleItem "cobweb",
      oldKey
    ]
    ( Paths
        (Path "Forest")
        (Path "Forest glade")
        (Path "Forest")
        (Path "Forest")
    )

oldTree =
  Location
    "Old tree"
    [ "You see ancient and massive tree,",
      "Its gnarled roots stretch out from the base, and the bark is rough and textured",
      "Its branches stretch high into the sky, providing shelter and shade for the creatures that call the forest home."
    ]
    []
    []
    ( Paths
        (Path "Forest glade") -- TODO: if avalaible
        (Path "Forest")
        (LockedPath "Digging marks" "shovel")
        (Path "Forest")
    )

diggingMarks =
  Location
    "Digging marks"
    [ "You see the freshly dug hole that is already filled,",
      "the soil is still loose and there are no footprints around the area, ",
      "suddenly something must have buried here"
    ]
    []
    [ missingStatue,
      redJacket,
      whiteGloves
    ]
    ( Paths
        (Path "Forest")
        (Path "Forest")
        (Path "Forest")
        (LockedPath "Old tree" "shovel")
    )

-- TODO: Link forest and janitors locations
janitorLocations =
  [ tomsHouse,
    oldTree,
    diggingMarks
  ]
