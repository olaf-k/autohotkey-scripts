DetectHiddenWindows, On
; the start menu does not play well with WinMaximize/Minimize
GroupAdd, SpecialWindows, ahk_class DV2ControlHost
GroupAdd, SpecialWindows, ahk_class Shell_TrayWnd
return
;------------------------------------------------------------------------------
; Win+A = minimize window
; (native Win+Down restores maximized windows instead of minimizing them)
;------------------------------------------------------------------------------
#a::
IfWinNotActive, ahk_group SpecialWindows
	WinMinimize,A
return
;------------------------------------------------------------------------------
; Win+Q = maximize window / restore window (if already maximized)
;------------------------------------------------------------------------------
#q::
IfWinNotActive, ahk_group SpecialWindows
{
	WinGet,winState,MinMax,A
	if (winState=1)
		WinRestore,A
	else
		WinMaximize,A
}
return
;------------------------------------------------------------------------------
; Win+s = maximize vertically (alias native Win+Shift+Up)
;------------------------------------------------------------------------------
#s::#+Up
