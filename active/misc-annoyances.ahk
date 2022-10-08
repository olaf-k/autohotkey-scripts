;------------------------------------------------------------------------------
; Media Play/Pause = Play/Stop if Winamp is playing (radio most of the time)
;------------------------------------------------------------------------------
WinampWindow := "ahk_class Winamp v1.x"
; #IfWinExist doesn't support vars :/
#IfWinExist ahk_class Winamp v1.x
Media_Play_Pause::
SendMessage, 0x400, 0, 104, , %WinampWindow%
; 1 = playing / 3 = paused / 0 = not playing
if (ErrorLevel = 0 or ErrorLevel = 3) 
    PostMessage, 0x111, 40045, , , %WinampWindow% ; Play
else if (ErrorLevel = 1)
    PostMessage, 0x111, 40047, , , %WinampWindow% ; Stop
return
#IfWinExist
;------------------------------------------------------------------------------
; mouse middle button = browser back
;------------------------------------------------------------------------------
MButton::Send, !{Left}
;------------------------------------------------------------------------------
; Win+z = sends Keypirinha shortcut Ctrl+Win+z to bypass Win10 original mapping
;------------------------------------------------------------------------------
#z::^#z
;------------------------------------------------------------------------------
; Disable Firefox's annoying shift+enter
;------------------------------------------------------------------------------
#IfWinActive ahk_class MozillaWindowClass
+Enter::Send, {Enter}
#IfWinActive
