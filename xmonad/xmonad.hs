import XMonad
import Solarized

main = do
    xmonad defaultConfig {
       normalBorderColor = solarizedBase01
     , focusedBorderColor = solarizedRed
     , terminal = "xterm"
    }
