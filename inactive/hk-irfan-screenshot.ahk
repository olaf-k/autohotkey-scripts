;------------------------------------------------------------------------------
; Ctrl+F12 = Use IrfanView to capture screen region and autosave in D:\tmp
;------------------------------------------------------------------------------
^F12::Run, "C:\Program Files (x86)\IrfanView\i_view32.exe" /capture=4 /convert=D:\tmp\screenshot_`$U(`%d`%m`%Y_`%H`%M`%S).png