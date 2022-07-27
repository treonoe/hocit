#include <main.au3>
#RequireAdmin
Sleep(2000)

$link = 'https://wn.nr/jRYhYV'


; login bang twitter


For $i =  54 to 852	Step 1

ToolTip('      dang chay '&$i&'  ',840,0,'bo dem',1)
_FileCreate('G:\autoit\$i.txt')
Sleep(200)
FileWrite('G:\autoit\$i.txt',$i)
$wallet = FileReadLine('G:\autoit\wallet.txt',$i-1)



$a = Mod($i,9)
If $a = 0 Then
;MsgBox(0,0,'rs wifi')
	Call('rswifi')
	Sleep(115000)
Else
	Sleep(100)

EndIf





$userdir0 = ('C:\Windows\system32\cmd.exe /d /s /c ""C:\Users\Administrator\.gologin\browser\orbita-browser\chrome.exe"')

$tib = ('  --lang=en-US --disable-encryption --font-masking-mode=2 ')

$userdir = ('  --user-data-dir="F:\')

$userdir1 = ($userdir&$i&'"')
$cmd = $userdir0&$userdir1&$tib
$a = ($cmd&'""'&'{ENTER}')
Run('cmd.exe','', @SW_HIDE)
Sleep(300)
ControlSend('Administrator: C:\Windows\SYSTEM32\cmd.exe','','',$a)
Sleep(1000)
ProcessClose('cmd.exe')
Sleep(200)

ProcessWait('chrome.exe',120000)
Sleep(600)
WinSetState('[ACTIVE]','',@SW_MAXIMIZE)
Sleep(300)

#cs
WinWait($i&' - Untitled','',12000)
Sleep(200)
WinActivate($i&' - Untitled')
Sleep(500)
Send('{F5}')
Sleep(500)
WinWaitActive($i&' - Check browser fingerprints','',10000)
Sleep(200)
WinSetState($i&' - Check browser fingerprints','',@SW_MAXIMIZE)
#ce
Send('^t')
Sleep(500)
Send($link)
Sleep(500)
Send('{ENTER}')

	;tam dung lam tay

	;MsgBox(0,0,0)


	call ('lam')



Next




Func lam ()


	MouseMove(100,100,10)
	Call('checkreload')


	$x = 0
	$y = 0
	$x1 = 0
	$y1 = 0
	$x2 = 0
	$y2 = 0
	$x3 = 0
	$y3 = 0
	$x = 0
	$y = 0

	$waitTime = 3

	$picture1 = 'G:\autoit\picture\teleicon.bmp'
	$picture2 = 'G:\autoit\picture\done.bmp'
	$picture3 = 'G:\autoit\picture\start.bmp'
	$picture4 = 'G:\autoit\picture\wallet.bmp'
	$picture5 = 'G:\autoit\picture\retw.bmp'



For $ii = 1 to 1 Step 1
	$result3 = _WaitForImageSearch ($picture3, $waitTime, 1, $x3, $y3, 0,0)
	If $result3 = 0 Then
		Send('{F5}')
		Sleep(3000)
	Else
		MouseClick('left',$x3, $y3,1)
		MouseWheel('down',100)
		Sleep(300)
		Call('baned')
		MouseWheel('down',100)
		Sleep(300)
	MouseMove(100,100,2)
		ExitLoop
	EndIf
Next
Call('checkreload')

; dien wallet


		MouseClick('left',544, 670,1)
		Sleep(300)
		MouseWheel('down',100)
		Sleep(300)
		Send($wallet)
		Sleep(500)
		MouseClick('left',773, 836,1)
		Sleep(500)
;------------------------------------
#ce


;tele
MouseClick('left',549, 588,1)
Sleep(450)
MouseClick('left',802, 666,1)
Sleep(400)
Send('^w')
MouseClick('left',743, 725,1)
Sleep(900)


;-----------------------------------






WinClose("[ACTIVE]")

ProcessWaitClose('chrome.exe',10)
ProcessClose('chrome.exe')




EndFunc







Func baned ()

	$x = 0
	$y = 0
	$waitTime = 1
	$picture4 = 'G:\autoit\picture\baned.bmp'
	$result1 = _WaitForImageSearch ($picture4, $waitTime, 1, $x, $y, 0,0)
	If $result1 = 1 Then
		Local $title = WinGetTitle("[ACTIVE]")
	Call('rswifi')
	Sleep(120000)
WinActivate($title)
Sleep(500)
WinWaitActive($title,'',10000)
Sleep(200)
	Send('{F5}')
	Sleep(2000)
	MouseMove(100,100,10)
	Call('checkreload')
	MouseWheel('down',200)
	Sleep(500)


	Else
		Sleep(200)
	EndIf

EndFunc

	Func veri ()

	$x = 0
	$y = 0
	$waitTime = 1
	$picture4 = 'G:\autoit\picture\tick.bmp'
	$result1 = _WaitForImageSearch ($picture4, $waitTime, 1, $x, $y, 0,0)
	If $result1 = 1 Then

	Sleep(200)
	Else
		FileWriteLine('G:\autoit\veri.txt', $i & @CRLF)
	Sleep(500)

	EndIf

EndFunc

















