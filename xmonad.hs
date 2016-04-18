import XMonad
import XMonad.Actions.SpawnOn
import XMonad.Hooks.DynamicLog
import XMonad.Util.EZConfig
import XMonad.Config.Desktop
import qualified XMonad.StackSet as W

myTerminal = "urxvt"

myWorkspaces = map show [1..9]

myKeys = [ (otherModMasks ++ "M-" ++ [key], action tag)
         | (tag, key) <- zip myWorkspaces "123456789"
         , (otherModMasks, action) <- [ ("", windows . W.view)
                                      , ("S-", windows . W.shift)
                                      ]
         ]

myConfig =
  desktopConfig { borderWidth = 1
                , terminal = myTerminal
                , normalBorderColor = "#444444"
                , focusedBorderColor = "#cd8b00"
                , workspaces = myWorkspaces }
  `additionalKeysP` myKeys

main = xmonad =<< xmobar myConfig
