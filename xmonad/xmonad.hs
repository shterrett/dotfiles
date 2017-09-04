import XMonad
import Solarized
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.ManageHelpers

main = do
    xmonad defaultConfig {
       normalBorderColor = solarizedBase01
     , focusedBorderColor = solarizedRed
     , terminal = "xterm"
     , manageHook = manageDocks <+> manageHook defaultConfig
     , layoutHook = avoidStruts $ layoutHook defaultConfig
    }
