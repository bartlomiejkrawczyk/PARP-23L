module Story.City where

import Rules.Location
import Story.House

-- Items

-- People

-- Locations

bakerStreet =
  Location
    "Baker Street"
    [ "You see Baker Street is a quaint, off-the-beaten-track street nestled between two hills.",
      "It''s lined with charming, old-fashioned buildings,",
      "including your office and house, as well as a cozy cafe and a vintage bookstore.",
      "The street exudes a sense of peaceful seclusion,",
      "making it the perfect spot for the detective",
      "to solve cases away from the bustle of the city."
    ]
    []
    []
    ( Paths
        InvalidPath
        (Path "Detective's house")
        InvalidPath
        InvalidPath
    )

cityLocations =
  [ bakerStreet
  ]