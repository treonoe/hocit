
#RequireAdmin
#include<File.au3>
#include <FileConstants.au3>
#include <MsgBoxConstants.au3>
#include <WinAPIFiles.au3>
#include <Clipboard.au3>
#include <ImageSearch2015.au3>



Global $g_bPaused = False

HotKeySet("{PAUSE}", "HotKeyPressed")
HotKeySet("{ESC}", "HotKeyPressed")
HotKeySet("+!d", "HotKeyPressed") ; Shift-Alt-d


Func HotKeyPressed()
    Switch @HotKeyPressed ; The last hotkey pressed.
        Case "{PAUSE}" ; String is the {PAUSE} hotkey.
            $g_bPaused = Not $g_bPaused
            While $g_bPaused
                Sleep(100)
                ToolTip('Script is "Paused"', 0, 0)
            WEnd
            ToolTip("")

        Case "{ESC}" ; String is the {ESC} hotkey.
            Exit

        Case "+!d" ; String is the Shift-Alt-d hotkey.
            MsgBox($MB_SYSTEMMODAL, "", "This is a message.")

    EndSwitch
EndFunc   ;==>HotKeyPressed

Func checkreload ()

	$x = 0
	$y = 0
	$waitTime = 2
	$picreload = 'G:\autoit\picture\reload.bmp'

	$checkreload = _WaitForImageSearch($picreload,$waitTime,1,$x,$y,0,0)

	If $checkreload = 1 Then
		MouseMove(468, 846,10)
		MouseClick('left',$x,$y,1)
		Sleep(1000)
	Else
		Sleep(100)
	EndIf

	$x = 0
	$y = 0
	$waitTime = 1
	$picreload = 'G:\autoit\picture\reloadgo.bmp'

	$checkreload = _WaitForImageSearch($picreload,$waitTime,1,$x,$y,0,0)

	If $checkreload = 1 Then
		MouseMove(468, 846,10)
		MouseClick('left',$x,$y,1)
		Sleep(1000)
	Else
		Sleep(100)
	EndIf






EndFunc

Func rstinsoft ()

	WinActivate('Proxy Client Tinsoft')


	$x = 0
	$y = 0
	$waitTime = 100
	$picture = 'G:\autoit\picture\changeip.bmp'
	$result = _WaitForImageSearch($picture,$waitTime,1,$x,$y,0,0)
	If $result = 1 Then

		MouseClick('left',$x,$y,1)
		Sleep(5000)
	Else
		MsgBox(0,0,'loi')
	EndIf


EndFunc





Func rswifi ()
Run("C:\Program Files\Google\Chrome\Application\chrome.exe")
WinWait('HG8045A5-20 - Google Chrome','',10000)
WinActivate('HG8045A5-20 - Google Chrome','')
	While 1
	$x = 0
	$y = 0
	$waitTime = 5
	$picture = 'G:\autoit\picture\viettel.bmp'
	$result = _WaitForImageSearch($picture,$waitTime,1,$x,$y,0,0)
	If $result = 1 Then
		Sleep(2000)
		MouseClick('left',$x, $y,1)
		Sleep(1000)
		ExitLoop
	Else
		Send('{F5}')
		Sleep(3000)
	EndIf
WEnd
Sleep(3000)
	MouseClick('left',371, 304,1)
	Sleep(1000)
	Send('admin')
	Sleep(1000)
	Send('{TAB}')
	Sleep(500)
	Send('@Huythu6789')
	Sleep(2000)
	Send('{ENTER}')



	$x = 0
	$y = 0
	$waitTime = 55
	$picture = 'G:\autoit\picture\next.bmp'
	$result = _WaitForImageSearch($picture,$waitTime,1,$x,$y,0,0)
	If $result = 1 Then

		MouseClick('left',421, 850,6)
		Sleep(1000)
	Else
		MsgBox(0,0,'loi')
	EndIf



	$x = 0
	$y = 0
	$waitTime = 55
	$picture = 'G:\autoit\picture\reset.bmp'
	$result = _WaitForImageSearch($picture,$waitTime,1,$x,$y,0,0)
	If $result = 1 Then
		MouseClick('left',$x,$y,1)
		Sleep(1000)
	Else
		MsgBox(0,0,'loi')
	EndIf



$x = 0
	$y = 0
	$waitTime = 55
	$picture = 'G:\autoit\picture\ok.bmp'
	$result = _WaitForImageSearch($picture,$waitTime,1,$x,$y,0,0)
	If $result = 1 Then
		MouseClick('left',$x,$y,1)
		Sleep(1000)
	Else
		MsgBox(0,0,'loi')
	EndIf
Sleep(2000)

WinClose('HG8045A5-20 - Google Chrome')
Sleep(1000)



EndFunc


