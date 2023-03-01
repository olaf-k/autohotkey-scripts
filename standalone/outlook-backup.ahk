#NoEnv
#SingleInstance, Force
SendMode, Input
SetBatchLines, -1

if (WinExist("ahk_class rctrl_renwnd32") && WinExist("ahk_exe OUTLOOK.EXE"))
{
	MsgBox, 1, Outlook backup automation, Proceed with export?
	IfMsgBox, OK
		WinActivate, ahk_exe OUTLOOK.EXE
		Send, !foi
		WinWaitActive, Import and Export Wizard
		Control, ChooseString, Export to a file, ListBox1, Import and Export Wizard
		WinWaitActive, Export to a File
		Control, ChooseString, Outlook Data File (.pst), ListBox1, Export to a File
		
		; ControlGet, OutputVar, FindString, Export to a file, ListBox1
		; MsgBox, %OutputVar%

		; ControlGet, Items, List,, ListBox1, Import and Export Wizard
		; Loop, Parse, Items, `n
		; 	MsgBox, Item number %A_Index% is %A_LoopField%.		
	return
}
