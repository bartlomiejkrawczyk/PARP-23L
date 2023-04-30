module Story.Police where

import Rules.Item
import Rules.Location
import Rules.Person

-- Items

makeshiftKnife =
  Item
    "makeshift_knife"
    [ "Better take it from here!",
      "I don''t want it to fall into the wrong hands"
    ]
    Nothing

-- People

scaryPrisoner =
  Person
    "scary_prisoner"
    [Subject "reason" "I killed a man"]

policeman =
  Person
    "policeman"
    [Subject "help" "I cannot help you. I'm busy at the moment!"]

-- TODO: add conversation result
sheriff =
  Person
    "sheriff"
    [ Subject "case" "We are looking for a #1 wanted interpol criminal.\nHe was seen fleeing into the forest!",
      Subject "employees_criminal_record" "What are you here for? Can''t you see we don''t have time now? We''ll mail everything to you, now get out, because as you can see, we''re very busy."
    ]

-- Locations

policeStation =
  Location
    "Police Station"
    [ "You are inside of a police building that has a lot of traffic is bustling with activity,",
      "with officers and visitors moving quickly through the halls.",
      "The sound of phones ringing",
      "and radios crackling can be heard constantly in the background.",
      "The walls are lined with bulletin boards",
      "and posters filled with information and updates related to ongoing cases."
    ]
    [policeman]
    [ simpleItem "handcuffs",
      simpleItem "gun",
      simpleItem "ammunition",
      simpleItem "suitcase"
    ]
    ( Paths
        (Path "City Square")
        InvalidPath
        (Path "Policeman Office")
        (Path "Cage")
    )

policemanOffice =
  Location
    "Policeman Office"
    [ "You are in office of a policeman who is very busy is cluttered,",
      "with piles of paperwork and files,",
      "as well as various items of police equipment scattered throughout the room.",
      "The desk is usually covered with a computer,",
      "radio, phone, and other tools of the trade,",
      "with little space for anything else."
    ]
    [sheriff]
    [ simpleItem "pen",
      simpleItem "paper",
      simpleItem "blank_paper"
    ]
    ( Paths
        InvalidPath
        InvalidPath
        InvalidPath
        (Path "Police Station")
    )

-- TODO: weed if holding clover
cage =
  Location
    "Cage"
    [ "You see cells at the police station",
      "where there are many detainees are small and cramped,",
      "with just enough room",
      "for a narrow bed and a toilet in the corner.",
      "The walls are made of cold, gray concrete",
      "and the only light comes from a small window high up near the ceiling."
    ]
    [scaryPrisoner]
    [ makeshiftKnife,
      simpleItem "weed"
    ]
    ( Paths
        InvalidPath
        InvalidPath
        (Path "Police Station")
        InvalidPath
    )

policeLocations =
  [ policeStation,
    policemanOffice,
    cage
  ]