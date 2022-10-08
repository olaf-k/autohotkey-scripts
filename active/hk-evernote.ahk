;------------------------------------------------------------------------------
; Win+n = shows Evernote
;------------------------------------------------------------------------------
EvernoteWindow := "ahk_class ENMainFrame"
#n::
if WinExist(EvernoteWindow)
    Winactivate, %EvernoteWindow%
else
    Run, "C:\Program Files (x86)\Evernote\Evernote\Evernote.exe"
return