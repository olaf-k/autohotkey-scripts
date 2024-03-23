;------------------------------------------------------------------------------
; Win+n = shows Evernote
;------------------------------------------------------------------------------
EvernoteWindow := "ahk_exe Evernote.exe"
#n::
if WinExist(EvernoteWindow)
    Winactivate, %EvernoteWindow%
else
    Send, #+{F}
    Sleep, 25
    Send, {Esc}
return