import XMonad

main = xmonad $ defaultConfig
  { borderWidth = 1
  , terminal = "urxvt"
  , normalBorderColor = "#cccccc"
  , focusedBorderColor = "#cd8b00" }
