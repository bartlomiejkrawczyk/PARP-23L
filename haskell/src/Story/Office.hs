module Story.Office where

import Rules.Item
import Rules.Location
import Rules.Person

-- People

newClient =
  Person
    "new_client"
    [ Subject "magazines" "Your magazine collection is overwhelming!",
      Subject "wait" "Ok. I will wait till you solve your current case!"
    ]

-- Locations

office =
  Location
    "Detective's office"
    [ "Your office is a compact yet efficient space, with a sturdy wooden desk",
      "positioned against one wall. A state-of-the-art fingerprint detector",
      "is mounted on another wall nearby, which the detective uses",
      "to analyze crime scenes and identify suspects. The walls are lined",
      "with bookshelves filled with forensic manuals and reference materials,",
      "and a large window offers a panoramic view of the city's skyline."
    ]
    [newClient]
    []
    ( Paths
        (Path "Desk")
        (Path "Baker Street")
        (LockedPath "Fingerprints detector" "powder")
        InvalidPath
    )

desk =
  Location
    "Desk"
    [ "Your desk is a sturdy wooden piece of furniture positioned against one wall",
      "of the office. It's cluttered with files, folders, a lamp, and various office",
      "supplies, reflecting the detective's busy and methodical work style."
    ]
    []
    [ simpleItem "files",
      simpleItem "folders",
      simpleItem "lamp",
      simpleItem "pen",
      simpleItem "blank_paper",
      simpleItem "notepad",
      simpleItem "calendar",
      simpleItem "ashtray",
      simpleItem "vase"
    ]
    ( Paths
        InvalidPath
        (Path "Detective's office")
        InvalidPath
        InvalidPath
    )

fingerprintsDetector =
  Location
    "Fingerprints detector"
    [ "Your fingerprint detector is a state-of-the-art device mounted on the wall",
      "of the office. It's used to collect and analyze fingerprints found at crime",
      "scenes, helping the detective to identify suspects and solve cases."
    ]
    []
    []
    ( Paths
        InvalidPath
        InvalidPath
        InvalidPath
        (LockedPath "Detective's office" "powder")
    )

officeLocations =
  [ office,
    desk,
    fingerprintsDetector
  ]