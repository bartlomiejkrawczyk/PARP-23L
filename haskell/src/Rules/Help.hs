module Rules.Help where

import Rules.Colors

introductionText =
  [ "",
    "Welcome to " ++ applyColor colorGreen' "The Case of the Missing Artifact" ++ ", a text game about detective work.",
    "In this game, you play the role of a seasoned detective tasked with solving",
    "a mysterious theft of a valuable artifact from a museum.",
    "",
    "You receive a call from the museum director who informs you that",
    "the prized artifact, an ancient Egyptian statue, has been stolen from",
    "the museum's exhibit hall. The museum staff has no leads, and the local police",
    "are overwhelmed with other cases.",
    "",
    "You're the last hope to find the thief and retrieve the statue.",
    ""
  ]

instructionsText =
  [ applyColor colorBlue "Available commands are:",
    "",
    "n / s / e / w      -- to go in that direction.",
    "take OBJECT        -- to pick up an object.",
    "drop OBJECT        -- to put down an object.",
    "inspect OBJECT     -- to take a closer look at an object.",
    "scan OBJECT        -- to scan objects for fingerprints.",
    "use ITEM TOOL      -- to use the tool on the item.",
    "inventory          -- to list all currently held items.",
    "people             -- to look for all nearby people.",
    "talk PERSON        -- to list all available subjects you can ask a person.",
    "ask PERSON SUBJECT -- to ask person about a subject.",
    "look               -- to search for things.",
    "look around        -- to look around you.",
    "instructions       -- to see these instructions.",
    "quit               -- to end the game.",
    ""
  ]

wonText =
  [ applyColor colorGreen "You WON! The game is over!",
    ""
  ]

finishText =
  [ applyColor colorRed "The game is not over yet!",
    "If you still want to finish despite it.",
    "Please enter the " ++ applyColor colorRed "halt" ++ " command.",
    ""
  ]
