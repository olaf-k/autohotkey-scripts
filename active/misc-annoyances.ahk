;------------------------------------------------------------------------------
; Media Play/Pause = Play/Stop if Winamp is playing (radio most of the time)
;------------------------------------------------------------------------------
$Media_Play_Pause:: ; $ prevents AHK from infinite loop when we send the key again
DetectHiddenWindows On ; necessary when Winamp is in the tray
IfWinExist ahk_class Winamp v1.x
{
    SendMessage, 0x400, 0, 104, ,ahk_class Winamp v1.x
    if (ErrorLevel = 1) ; 1 = playing / 3 = paused / 0 = not playing
        PostMessage, 0x111, 40047, , ,ahk_class Winamp v1.x  ; Stop
        return
}
Send {Media_Play_Pause}
return
;------------------------------------------------------------------------------
; mouse middle button = browser back
;------------------------------------------------------------------------------
MButton::Send !{Left}
;------------------------------------------------------------------------------
; Win+z = sends Keypirinha shortcut Ctrl+Win+z to bypass Win10 original mapping
;------------------------------------------------------------------------------
#z::^#z
;------------------------------------------------------------------------------
; Disable Firefox's annoying shift+enter
;------------------------------------------------------------------------------
#IfWinActive ahk_class MozillaWindowClass
+Enter::Send {Enter}
#IfWinActive
