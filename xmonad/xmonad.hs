-- David Beckingsale's xmonad config
--
-- Started out as avandael's xmonad.hs
-- Also uses stuff from pbrisbin.com:8080/
--

--{{{ Imports

import XMonad
import XMonad.Core
import qualified Data.Map as M

import Data.Ratio ((%))
import Data.List
import XMonad.Config.Xfce
import Graphics.X11.ExtraTypes.XF86
import Graphics.X11.Xlib
import XMonad.Util.EZConfig
import XMonad.Util.Run
import XMonad.Util.Replace


import XMonad.Layout
import XMonad.Layout.Grid
import XMonad.Layout.IM
import XMonad.Layout.NoBorders
import XMonad.Layout.PerWorkspace
import XMonad.Layout.ResizableTile
import XMonad.Layout.StackTile
import XMonad.Layout.Fullscreen
import XMonad.Layout.Spiral
import XMonad.Layout.Tabbed
import XMonad.Hooks.SetWMName
import XMonad.Hooks.ICCCMFocus
import XMonad.Actions.GridSelect

import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.ManageHelpers

import XMonad.Util.Scratchpad
import XMonad.Util.NamedScratchpad

import qualified XMonad.StackSet as W
import qualified XMonad.Hooks.EwmhDesktops as Hook


--}}}


-- The main function.
main = do
   xmonad $ xfceConfig
      {
        normalBorderColor  = myInactiveBorderColor
      , terminal           = "urxvtc"
      , focusedBorderColor = myActiveBorderColor
      , borderWidth = myBorderWidth
      , modMask = mod1Mask
      , keys = myKeys
      , layoutHook = smartBorders $ myLayout
      , manageHook = manageDocks <+> myManageHook <+> myManageHook2 <+> manageScratchPad
      , startupHook = setWMName "LG3D"
      , logHook = takeTopFocus
      , focusFollowsMouse = False
      , workspaces = map show [1..9]
      , handleEventHook = Hook.fullscreenEventHook
     }

-- Scratchpad (W+º)
manageScratchPad :: ManageHook
manageScratchPad = scratchpadManageHook (W.RationalRect l t w h)
  where
      h = 1     -- terminal height
      w = 1     -- terminal width
      t = 0     -- distance from top edge
      l = 0     -- distance from left edge
scratchPad = scratchpadSpawnActionCustom "konsole -name scratchpad"




myManageHook = composeAll
    [ --className =? "Google-chrome"  --> doShift "2"
      resource  =? "desktop_window" --> doIgnore
    , className =? "Galculator"     --> doFloat
    , className =? "Steam"          --> doFloat
    , className =? "Gimp"           --> doFloat
    , resource  =? "gpicview"       --> doFloat
    , className =? "vlc"            --> doFloat
    , className =? "brainworkshop"  --> doFloat
    , className =? "gnome-do"       --> doFloat
    , className =? "Do"             --> doFloat
    , className =? "Goldendict"     --> doFloat
    , className =? "Pidgin"         --> doShift "5"
    , className =? "xchat"          --> doShift "5"
    , className =? "skype"          --> doShift "5"
    , className =? "guake"          --> doIgnore
    {-, className =? "yakuake"        --> doFloat-}
    , isFullscreen --> (doF W.focusDown <+> doFullFloat)
    -- Single monitor setups, or if the previous hook doesn't work
     --, isFullscreen --> doFullFloat
    ]

myManageHook2 = composeAll. concat $
                [ [ className =? c --> doCenterFloat| c <- floats]
                , [ resource =? r --> doIgnore | r <- ignore]
                , [ resource =? "gecko" --> doF (W.shift "net") ]
                , [ isFullscreen --> (doF W.focusDown <+> doFullFloat)]
                , [ isDialog --> doCenterFloat]]
 where floats = ["sdlpal", "MPlayer", "Gimp", "qemu-system-x86_64", "Gnome-typing-monitor", "Vlc", "Dia", "DDMS", "Audacious", "Wine"]
       ignore = []




--- Borders
myActiveBorderColor = "#FF0000"
myInactiveBorderColor = "#555753"
myBorderWidth = 1


myLayout = avoidStruts (
    Tall 1 (3/100) (1/2) |||
    Mirror (Tall 1 (3/100) (1/2)) |||
    Full |||
    noBorders (fullscreenFull Full))



--{{{ Keybindings

myKeys x  = M.union (M.fromList (newKeys x)) (keys xfceConfig x)

newKeys conf@(XConfig {XMonad.modMask = modm}) = [
  ((modm, xK_d), spawn "dmenu_run -nb '#222222' -nf '#aaaaaa' -sb '#93d44f' -sf '#222222'"),  --Uses a colourscheme with dmenu
  ((modm, xK_p), spawn "dmenu_run"),  --Uses a colourscheme with dmenu
  ((modm, xK_r), scratchPad)
   ]
--}}}
