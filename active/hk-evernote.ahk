;------------------------------------------------------------------------------
; Win+n = shows Evernote
;------------------------------------------------------------------------------
EvernoteWindow := "ahk_exe Evernote.exe"
#n::
if WinExist(EvernoteWindow)
    Winactivate, %EvernoteWindow%
else
    ; Run, "C:\Users\admin\AppData\Local\Programs\Evernote\Evernote.exe"
    ; WinWait, %EvernoteWindow%
    ; Winactivate, %EvernoteWindow%
    Send, #+{F}
    Sleep, 25
    Send, {Esc}
return