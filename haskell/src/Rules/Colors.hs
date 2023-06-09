module Rules.Colors where

colorDefault = "\ESC[0m"

colorBlack = "\ESC[30m"

colorBlack' = "\ESC[90m"

colorRed = "\ESC[31m"

colorRed' = "\ESC[91"

colorGreen = "\ESC[32m"

colorGreen' = "\ESC[92m"

colorYellow = "\ESC[33m"

colorYellow' = "\ESC[93"

colorBlue = "\ESC[34m"

colorBlue' = "\ESC[94"

colorMagenta = "\ESC[35m"

colorMagenta' = "\ESC[95m"

colorCyan = "\ESC[36m"

colorCyan' = "\ESC[96m"

colorWhite = "\ESC[37m"

colorWhite' = "\ESC[97m"

applyColor color string = color ++ string ++ colorDefault