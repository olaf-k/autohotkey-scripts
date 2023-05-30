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
;------------------------------------------------------------------------------
; Move between tabs with Ctrl+PgUp/PgDown in file explorer
;------------------------------------------------------------------------------
#IfWinActive ahk_class CabinetWClass
^PgUp::Send, ^+{Tab}
^PgDn::Send, ^{Tab}
#IfWinActive
