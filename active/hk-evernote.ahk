;------------------------------------------------------------------------------
; Win+n = shows Evernote
;------------------------------------------------------------------------------
#n::
IfWinExist, ahk_class ENMainFrame
{
    Winshow, ahk_class ENMainFrame
    Winactivate, ahk_class ENMainFrame
}
else
    Run, "C:\Program Files (x86)\Evernote\Evernote\Evernote.exe"
return