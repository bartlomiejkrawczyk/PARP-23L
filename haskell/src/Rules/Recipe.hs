module Rules.Recipe where

import Rules.Item

data Recipe = Recipe {recipeItem :: String, recipeTool :: String, outcome :: Item}

recipes :: [Recipe]
recipes =
  [ Recipe
      "letter"
      "knife"
      ( Item
          "mikes_criminal_record"
          [ "Mike Black, was arrested 2 years ago for stealing",
            "two very expensive new bikes from a bike shop.",
            "He was fined $5,000 and sentenced to three months of community service."
          ]
          (Just "Sheriff Tony Hank")
          Nothing
      ),
    Recipe
      "wobbly_shovel"
      "screwdriver"
      ( Item
          "shovel"
          [ "Now the shovel is suitable for work, it is certainly much stronger,",
            "maybe now it will be possible to dig something with it"
          ]
          Nothing
          Nothing
      )
  ]