import XMonad
import Solarized
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.ManageHelpers
import qualified Data.Map as M

myKeys conf@(XConfig {XMonad.modMask = modm}) = M.fromList $
  [ ((modm .|. shiftMask, xK_l), spawn "slock") ]

main = do
    xmonad defaultConfig {
       modMask = mod4Mask
     , normalBorderColor = solarizedBase01
     , focusedBorderColor = solarizedRed
     , terminal = "xterm"
     , manageHook = manageDocks <+> manageHook defaultConfig
     , layoutHook = avoidStruts $ layoutHook defaultConfig
     , handleEventHook = handleEventHook defaultConfig <+> docksEventHook
     , keys = \c -> myKeys c `M.union` keys defaultConfig c
    }
