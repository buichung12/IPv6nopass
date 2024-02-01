#RequireAdmin
#include <MsgBoxConstants.au3>
#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <File.au3>
#include <String.au3>
#include <AutoItConstants.au3>
#include <_HttpRequest.au3>
HotKeySet("{ESC}", "_Exit")
HotKeySet("{f9}", "AutoRun")
#Region ### START Koda GUI section ### Form=Trình tạo mới hồ sơ
$Form1 = GUICreate("ban 1.0.0", 615, 437, 192, 124)
$Label1 = GUICtrlCreateLabel("tool doi MK Gmail-gmal Khoi phuc", 16, 300, 300,300)
$Label2 = GUICtrlCreateLabel("STT may ao", 16, 64, 44, 17)
$giatri0 = GUICtrlCreateInput("25", 88, 64, 73, 21)
$batdau=GUICtrlCreateButton("BAT DAU", 16, 216, 75, 25)
$Label1 = GUICtrlCreateLabel('IP may that' , 300, 50,100, 50)
$Label2 = GUICtrlCreateLabel("STT may ao", 300, 90,100, 30)
$Label3 = GUICtrlCreateLabel("So nhom", 300, 135, 100, 50)
$giatriA = GUICtrlCreateInput("nhap o DOC 5 chu", 400, 48, 113, 21)
$giatriB = GUICtrlCreateInput("0", 400, 88, 113, 21)
$giatriC = GUICtrlCreateInput("Nhap o DOC 25", 400, 130, 113, 21)
;$Label4 = GUICtrlCreateLabel("copy full", 300, 170, 113, 50)
;$giatriD = GUICtrlCreateInput("", 400, 170, 113, 21)
$Label4 = GUICtrlCreateLabel("xoa file Fundev", 300, 170, 113, 50)
$giatriE = GUICtrlCreateInput("0", 400,170,113, 21)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###

While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $batdau
			Sleep(1000)

		While 1

			   $STTmayao=GUICtrlRead($giatri0)
			   $IPmaythat=GUICtrlRead($giatriA)
			   ;$STTmayao=GUICtrlRead($giatriB)
			   $sonhom=GUICtrlRead($giatriC)
				;$copyfull=GUICtrlRead($giatriD)
			   $xoafile=GUICtrlRead($giatriE)

               WinSetState('','',@SW_MINIMIZE)

                $i2=0
			   Sleep(200)
                FileDelete(@ScriptDir&'\linkkenhchayview.txt')
                FileDelete(@ScriptDir&'\http.txt')   ; x�a file http
				FileDelete(@ScriptDir&'\ipconfig.txt')
				FileDelete('C:\Users\'&@UserName&'\Downloads\DuLieuDauVao.txt')
;$tongsoviewkq=100
$check=0

		ToolTip('tool copy file stt khoi dong may ao:'&$STTmayao&'	so nhom:'&$sonhom,0,30)
		Sleep(1000)

        _resetMang()
		_closeTrinhDuyet(1)

       _requetGooGleDOC('https://docs.google.com/document/d/1QioeFifQFHiJxdXueMenDHvGcFIJBzhjULs6oyhHIUU/export?format=txt','DuLieuDauVao.txt')     ; luu y Link phai co duoi /export?format=txt
       Sleep(4000)
	   $IPmaythat=FileReadLine('C:\Users\'&@UserName&'\Downloads\DuLieuDauVao.txt',1)
	   Sleep(200)
	   $sonhom   =FileReadLine('C:\Users\'&@UserName&'\Downloads\DuLieuDauVao.txt',2)
       Sleep(1000)
	#cs
		For $i20=1 to 100    ;tai file khoi dong
			If $i20=$STTmayao Then
				FileCopy('C:\Users\'&@UserName&'\Desktop\khoidong\khoidong'&$i20&'.exe','C:\Users\'&@UserName&'\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup',1)
                Sleep(1000)
			EndIf
		Next
		Sleep(1000)
    #ce
        For $i20=0 to 22
            FileDelete('C:\Users\'&@UserName&'\Downloads\csbphonenhom'&$i20&'.au3')
			Sleep(200)
		Next

		For $i20=0 to 22
            FileDelete('C:\Users\'&@UserName&'\Desktop\csFireFox - 10 sea\csbphonenhom'&$i20&'.au3')
			Sleep(200)
		Next
    For $i21=1 to 2                           ; tai chuong trinh chinh

        If $sonhom=0 Then
            _GetDOSOutput('start chrome "https://github.com/buichung12/IPv6nopass/blob/main/csbphonenhom0.au3"')
		EndIf
		If $sonhom=1 Then
            _GetDOSOutput('start chrome "https://github.com/buichung12/IPv6nopass/blob/main/csbphonenhom1.au3"')
		EndIf
		If $sonhom=2 Then
            _GetDOSOutput('start chrome "https://github.com/buichung12/IPv6nopass/blob/main/csbphonenhom2.au3"')
		EndIf
		If $sonhom=3 Then
           _GetDOSOutput('start chrome "https://github.com/buichung12/IPv6nopass/blob/main/csbphonenhom3.au3"')
		EndIf
		If $sonhom=4 Then
            _GetDOSOutput('start chrome "https://github.com/buichung12/IPv6nopass/blob/main/csbphonenhom4.au3"')
		EndIf
		If $sonhom=5 Then
           _GetDOSOutput('start chrome "https://github.com/buichung12/IPv6nopass/blob/main/csbphonenhom5.au3"')
		EndIf
		If $sonhom=6 Then
            _GetDOSOutput('start chrome "https://github.com/buichung12/IPv6nopass/blob/main/csbphonenhom6.au3"')
		EndIf
		If $sonhom=7 Then
            _GetDOSOutput('start chrome "https://github.com/buichung12/IPv6nopass/blob/main/csbphonenhom7.au3"')
		EndIf
		If $sonhom=8 Then
           _GetDOSOutput('start chrome "https://github.com/buichung12/IPv6nopass/blob/main/csbphonenhom8.au3"')
		EndIf
		If $sonhom=9 Then
            _GetDOSOutput('start chrome "https://github.com/buichung12/IPv6nopass/blob/main/csbphonenhom9.au3"')
		EndIf
		If $sonhom=10 Then
            _GetDOSOutput('start chrome "https://github.com/buichung12/IPv6nopass/blob/main/csbphonenhom10.au3"')
		EndIf
		If $sonhom=11 Then
           _GetDOSOutput('start chrome "https://github.com/buichung12/IPv6nopass/blob/main/csbphonenhom11.au3"')
		EndIf
		If $sonhom=12 Then
            _GetDOSOutput('start chrome "https://github.com/buichung12/IPv6nopass/blob/main/csbphonenhom12.au3"')
		EndIf
		If $sonhom=13 Then
            _GetDOSOutput('start chrome "https://github.com/buichung12/IPv6nopass/blob/main/csbphonenhom13.au3"')
		EndIf
		If $sonhom=14 Then
            _GetDOSOutput('start chrome "https://github.com/buichung12/IPv6nopass/blob/main/csbphonenhom14.au3"')
		EndIf
		If $sonhom=15 Then
            _GetDOSOutput('start chrome "https://github.com/buichung12/IPv6nopass/blob/main/csbphonenhom15.au3"')
		EndIf
		If $sonhom=16 Then
            _GetDOSOutput('start chrome "https://github.com/buichung12/IPv6nopass/blob/main/csbphonenhom16.au3"')
		EndIf
		If $sonhom=17 Then
           _GetDOSOutput('start chrome "https://github.com/buichung12/IPv6nopass/blob/main/csbphonenhom17.au3"')
		EndIf
		If $sonhom=18 Then
           _GetDOSOutput('start chrome "https://github.com/buichung12/IPv6nopass/blob/main/csbphonenhom18.au3"')
		EndIf
		If $sonhom=19 Then
            _GetDOSOutput('start chrome "https://github.com/buichung12/IPv6nopass/blob/main/csbphonenhom19.au3"')
		EndIf
		If $sonhom=20 Then
            _GetDOSOutput('start chrome "https://github.com/buichung12/IPv6nopass/blob/main/csbphonenhom20.au3"')
		EndIf
		If $sonhom=21 Then
           _GetDOSOutput('start chrome "https://github.com/buichung12/IPv6nopass/blob/main/csbphonenhom21.au3"')
		EndIf
		If $sonhom=22 Then
           _GetDOSOutput('start chrome "https://github.com/buichung12/IPv6nopass/blob/main/csbphonenhom22.au3"')
		EndIf
		Sleep(15000)
		WinMove('','',0,0,1366,768)
		Sleep(2000)
		MouseClick('left',1265, 421,1,20)
		Sleep(2000)
		MouseClick('left',1204, 340,1,20)
		Sleep(5000)

		For $i20=1 to 22
			If FileExists('C:\Users\'&@UserName&'\Downloads\csbphonenhom'&$i20&'.au3')=1 Then
				$i20=22
				$i21=2
			EndIf
            Sleep(50)
		Next

	Next

		For $i20=0 to 22
			FileCopy("C:\Users\"&@UserName&"\Downloads\csbphonenhom"&$i20&".au3","C:\Users\"&@UserName&"\Desktop\csFireFox - 10 sea", 1)
			Sleep(200)
		Next

        Sleep(1000)
		FileDelete('C:\Users\'&@UserName&'\Downloads\func3.au3')
		Sleep(1000)
		FileDelete('C:\Users\'&@UserName&'\Desktop\csFireFox - 10 sea\func3.au3')
		Sleep(1000)

    For $i20=1 to 2

		_GetDOSOutput('start chrome "https://github.com/buichung12/IPv6nopass/blob/main/func3.au3"')
        Sleep(15000)
		WinMove('','',0,0,1366,768)
		Sleep(2000)
		MouseClick('left',1265, 421,1,20)
		Sleep(2000)
		MouseClick('left',1204, 340,1,20)
		Sleep(15000)

		FileCopy("C:\Users\"&@UserName&"\Downloads\func3.au3","C:\Users\"&@UserName&"\Desktop\csFireFox - 10 sea", 1)


		If FileExists('C:\Users\admin\Downloads\csFireFox - 10 sea\func3.au3')=1 or FileExists('C:\Users\buichung\Desktop\csFireFox - 10 sea\func3.au3')=1 Then $i20=3
		Sleep(2000)
    Next

	    _closeTrinhDuyet(1)

	    FileDelete('C:\Users\'&@UserName&'\Downloads\tool update code.au3')
		Sleep(1000)
	    _GetDOSOutput('start chrome "https://github.com/buichung12/IPv6nopass/blob/main/tool%20update%20code.au3"')     ;dowload tool up date
        Sleep(15000)
		WinMove('','',0,0,1366,768)
		Sleep(2000)
		MouseClick('left',1265, 421,1,20)
		Sleep(2000)
		MouseClick('left',1204, 340,1,20)
		Sleep(15000)
		FileCopy('C:\Users\'&@UserName&'\Downloads\tool update code.au3','C:\Users\'&@UserName&'\Desktop\csFireFox - 10 sea',1)
		Sleep(3000)

		FileDelete('C:\Users\'&@UserName&'\Downloads\khoidong.au3')
		Sleep(1000)
		For $i20=1 to 100
			FileDelete('C:\Users\'&@UserName&'\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\'&'khoidong'&$i20&'.exe')
			Sleep(100)
		Next
	    _GetDOSOutput('start chrome "https://github.com/buichung12/IPv6nopass/blob/main/khoidong.au3"')     ;dowload tool khoi dong
        Sleep(15000)
		WinMove('','',0,0,1366,768)
		Sleep(2000)
		MouseClick('left',1265, 421,1,20)
		Sleep(2000)
		MouseClick('left',1204, 340,1,20)
		Sleep(10000)
		FileCopy('C:\Users\'&@UserName&'\Downloads\khoidong.au3','C:\Users\'&@UserName&'\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup',1)    ;C:\Users\buichung\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
		Sleep(1000)

		Local $sSourceFile = "C:\Users\"&@UserName&"\Desktop\csFireFox - 10 sea" & "\_HttpRequest.au3"
        Local $sDestinationFile = "C:\Users\"&@UserName&"\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup" & "\_HttpRequest.au3"
        FileCopy($sSourceFile, $sDestinationFile, 1)

		Sleep(1000)

		Local $sSourceFile = "C:\Users\"&@UserName&"\Desktop\csFireFox - 10 sea" & "\WinHttp.au3"
        Local $sDestinationFile = "C:\Users\"&@UserName&"\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup" & "\WinHttp.au3"
        FileCopy($sSourceFile, $sDestinationFile, 1)

		Sleep(1000)

		Local $sSourceFile = "C:\Users\"&@UserName&"\Desktop\csFireFox - 10 sea" & "\WinHttpConstants.au3"
        Local $sDestinationFile = "C:\Users\"&@UserName&"\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup" & "\WinHttpConstants.au3"
        FileCopy($sSourceFile, $sDestinationFile, 1)

		Sleep(1000)

		Local $sSourceFile = "C:\Users\"&@UserName&"\Desktop\csFireFox - 10 sea" & "\_HttpRequest.au3"
        Local $sDestinationFile = "C:\Users\'&@UserName&'\Desktop" & "\_HttpRequest.au3"
        FileCopy($sSourceFile, $sDestinationFile, 1)


		Sleep(1000)

		Local $sSourceFile = "C:\Users\"&@UserName&"\Desktop\csFireFox - 10 sea" & "\WinHttp.au3"
        Local $sDestinationFile = "C:\Users\'&@UserName&'\Desktop" & "\WinHttp.au3"
        FileCopy($sSourceFile, $sDestinationFile, 1)
		Sleep(1000)
		Local $sSourceFile = "C:\Users\"&@UserName&"\Desktop\csFireFox - 10 sea" & "\WinHttpConstants.au3"
        Local $sDestinationFile = "C:\Users\'&@UserName&'\Desktop" & "\WinHttpConstants.au3"
        FileCopy($sSourceFile, $sDestinationFile, 1)

		;FileCopy('C:\Users\'&@UserName&'\Desktop\khoidong\khoidong'&$STTmayao&'.exe','C:\Users\'&@UserName&'\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup',1)
		FileDelete('C:\Users\'&@UserName&'\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup'&'\vpsso.txt')
		Sleep(1000)
		FileWriteLine('C:\Users\'&@UserName&'\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup'&'\vpsso.txt',$STTmayao)
        Sleep(1000)
		If $STTmayao<1 or $STTmayao>100 Then MsgBox(0,0,'STT may ao loi')

      #cs
         FileDelete('C:\Users\'&@UserName&'\Downloads\tool update code.au3')
		 Sleep(1000)
	    _GetDOSOutput('start chrome "https://drive.google.com/u/0/uc?id=1YLYqbMLElQzwL9m9TBLvFLHppQ8aL_AX&export=download"')  ; tai file update
		Sleep(10000)
		FileCopy('C:\Users\'&@UserName&'\Downloads\tool update code.au3','C:\Users\'&@UserName&'\Desktop\csFireFox - 10 sea',1)
        Sleep(1000)
        FileCopy('C:\Users\'&@UserName&'\Downloads\tool copy khoi dong va chuong trinh chinh.exe','C:\Users\'&@UserName&'\Desktop',1)
		Sleep(1000)
	  #ce

        For $i20=1 to 100
			FileDelete('C:\Users\'&@UserName&'\Downloads\khoidong'&$i20&'.exe')
            Sleep(100)
		Next

		For $i20=1 to 100
			FileDelete('C:\Users\'&@UserName&'\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\khoidong'&$i20&'.exe')
            Sleep(100)
		Next

        _closeTrinhDuyet(1)

		If FileExists('C:\Users\'&@UserName&'\Desktop\csFireFox - 10 sea\func3.au3')=0  Then MsgBox(0,0,'loi khong co fun3.au3')
		If $sonhom=0 Then
               If FileExists('C:\Users\'&@UserName&'\Desktop\csFireFox - 10 sea\csbphonenhom'&$sonhom&'.au3')=0  Then MsgBox(0,0,'loi khong csbphonenhom'&$sonhom&'.au3')
		EndIf
		If $sonhom=1 Then
               If FileExists('C:\Users\'&@UserName&'\Desktop\csFireFox - 10 seaa\csbphonenhom'&$sonhom&'.au3')=0  Then MsgBox(0,0,'loi khong csbphonenhom'&$sonhom&'.au3')
		EndIf
		If $sonhom=2 Then
               If FileExists('C:\Users\'&@UserName&'\Desktop\csFireFox - 10 sea\csbphonenhom'&$sonhom&'.au3')=0  Then MsgBox(0,0,'loi khong csbphonenhom'&$sonhom&'.au3')
		EndIf
		If $sonhom=3 Then
               If FileExists('C:\Users\'&@UserName&'\Desktop\csFireFox - 10 sea\csbphonenhom'&$sonhom&'.au3')=0  Then MsgBox(0,0,'loi khong csbphonenhom'&$sonhom&'.au3')
		EndIf
		If $sonhom=4 Then
               If FileExists('C:\Users\'&@UserName&'\Desktop\csFireFox - 10 sea\csbphonenhom'&$sonhom&'.au3')=0  Then MsgBox(0,0,'loi khong csbphonenhom'&$sonhom&'.au3')
		EndIf
		If $sonhom=5 Then
               If FileExists('C:\Users\'&@UserName&'\Desktop\csFireFox - 10 sea\csbphonenhom'&$sonhom&'.au3')=0  Then MsgBox(0,0,'loi khong csbphonenhom'&$sonhom&'.au3')
		EndIf
		If $sonhom=6 Then
               If FileExists('C:\Users\'&@UserName&'\Desktop\csFireFox - 10 sea\csbphonenhom'&$sonhom&'.au3')=0  Then MsgBox(0,0,'loi khong csbphonenhom'&$sonhom&'.au3')
		EndIf
		If $sonhom=7 Then
               If FileExists('C:\Users\'&@UserName&'\Desktop\csFireFox - 10 sea\csbphonenhom'&$sonhom&'.au3')=0  Then MsgBox(0,0,'loi khong csbphonenhom'&$sonhom&'.au3')
		EndIf
		If $sonhom=8 Then
               If FileExists('C:\Users\'&@UserName&'\Desktop\csFireFox - 10 sea\csbphonenhom'&$sonhom&'.au3')=0  Then MsgBox(0,0,'loi khong csbphonenhom'&$sonhom&'.au3')
		EndIf
		If $sonhom=9 Then
               If FileExists('C:\Users\'&@UserName&'\Desktop\csFireFox - 10 sea\csbphonenhom'&$sonhom&'.au3')=0  Then MsgBox(0,0,'loi khong csbphonenhom'&$sonhom&'.au3')
		EndIf
		If $sonhom=10 Then
               If FileExists('C:\Users\'&@UserName&'\Desktop\csFireFox - 10 sea\csbphonenhom'&$sonhom&'.au3')=0  Then MsgBox(0,0,'loi khong csbphonenhom'&$sonhom&'.au3')
		EndIf
		If $sonhom=11 Then
               If FileExists('C:\Users\'&@UserName&'\Desktop\csFireFox - 10 sea\csbphonenhom'&$sonhom&'.au3')=0  Then MsgBox(0,0,'loi khong csbphonenhom'&$sonhom&'.au3')
		EndIf
		If $sonhom=12 Then
               If FileExists('C:\Users\'&@UserName&'\Desktop\csFireFox - 10 sea\csbphonenhom'&$sonhom&'.au3')=0  Then MsgBox(0,0,'loi khong csbphonenhom'&$sonhom&'.au3')
		EndIf
		If $sonhom=13 Then
               If FileExists('C:\Users\'&@UserName&'\Desktop\csFireFox - 10 sea\csbphonenhom'&$sonhom&'.au3')=0  Then MsgBox(0,0,'loi khong csbphonenhom'&$sonhom&'.au3')
		EndIf
		If $sonhom=14 Then
               If FileExists('C:\Users\'&@UserName&'\Desktop\csFireFox - 10 sea\csbphonenhom'&$sonhom&'.au3')=0  Then MsgBox(0,0,'loi khong csbphonenhom'&$sonhom&'.au3')
		EndIf
		If $sonhom=15 Then
               If FileExists('C:\Users\'&@UserName&'\Desktop\csFireFox - 10 sea\csbphonenhom'&$sonhom&'.au3')=0  Then MsgBox(0,0,'loi khong csbphonenhom'&$sonhom&'.au3')
		EndIf
		If $sonhom=16 Then
               If FileExists('C:\Users\'&@UserName&'\Desktop\csFireFox - 10 sea\csbphonenhom'&$sonhom&'.au3')=0  Then MsgBox(0,0,'loi khong csbphonenhom'&$sonhom&'.au3')
		EndIf
		If $sonhom=17 Then
               If FileExists('C:\Users\'&@UserName&'\Desktop\csFireFox - 10 sea\csbphonenhom'&$sonhom&'.au3')=0  Then MsgBox(0,0,'loi khong csbphonenhom'&$sonhom&'.au3')
		EndIf
		If $sonhom=18 Then
               If FileExists('C:\Users\'&@UserName&'\Desktop\csFireFox - 10 sea\csbphonenhom'&$sonhom&'.au3')=0  Then MsgBox(0,0,'loi khong csbphonenhom'&$sonhom&'.au3')
		EndIf
		If $sonhom=19 Then
               If FileExists('C:\Users\'&@UserName&'\Desktop\csFireFox - 10 sea\csbphonenhom'&$sonhom&'.au3')=0 Then MsgBox(0,0,'loi khong csbphonenhom'&$sonhom&'.au3')
		EndIf
		If $sonhom=20 Then
               If FileExists('C:\Users\'&@UserName&'\Desktop\csFireFox - 10 sea\csbphonenhom'&$sonhom&'.au3')=0  Then MsgBox(0,0,'loi khong csbphonenhom'&$sonhom&'.au3')
		EndIf
		If $sonhom=21 Then
               If FileExists('C:\Users\'&@UserName&'\Desktop\csFireFox - 10 sea\csbphonenhom'&$sonhom&'.au3')=0  Then MsgBox(0,0,'loi khong csbphonenhom'&$sonhom&'.au3')
		EndIf
		If $sonhom=22 Then
               If FileExists('C:\Users\'&@UserName&'\Desktop\csFireFox - 10 sea\csbphonenhom'&$sonhom&'.au3')=0  Then MsgBox(0,0,'loi khong csbphonenhom'&$sonhom&'.au3')
		EndIf





	    FileDelete('C:\Users\'&@UserName&'\Downloads\autoit-v3-setup.exe')
		Sleep(200)
		FileDelete('C:\Users\'&@UserName&'\Downloads\SciTE4AutoIt3.exe')
		Sleep(200)

	If FileExists("C:\Program Files (x86)\AutoIt3\AutoIt3.exe")=0 Then
		ToolTip('cai dat autoit',0,30)

		_GetDOSOutput('start chrome "https://github.com/buichung12/IPv6nopass/raw/main/autoit-v3-setup.exe"')  ; tai autoit
		Sleep(5000)
		_GetDOSOutput('start chrome "https://github.com/buichung12/IPv6nopass/raw/main/SciTE4AutoIt3.exe"')
		Sleep(20000)
        _closeTrinhDuyet(1)
		Sleep(1000)
        Run('C:\Users\'&@UserName&'\Downloads\autoit-v3-setup.exe')
		Sleep(10000)
		;WinMove('','',0,0)
		Send('{enter}')
		Sleep(3000)
		Send('{enter}')
		Sleep(3000)
		Send('{enter}')
		Sleep(3000)
		Send('{enter}')
		Sleep(3000)
		Send('{enter}')
		Sleep(3000)
		Send('{enter}')
		Sleep(60000)
		Send('{enter}')
		Sleep(3000)
		WinClose('AutoIt Help (v3.3.14.5)')
		Sleep(1000)
		Run('C:\Users\'&@UserName&'\Downloads\SciTE4AutoIt3.exe')
		Sleep(10000)
		Send('{enter}')
		Sleep(3000)
		Send('{enter}')
		Sleep(30000)
		Send('{enter}')
		Sleep(3000)

    EndIf


		_closeTrinhDuyet(1)


		Sleep(1000)
        If StringLen($IPmaythat)>5 and $xoafile=0 Then
			ToolTip('tool change VM may ao',0,0)
			Sleep(500)
			MouseClick('left',20,50,1,20)
			Sleep(2000)
			Send('Antidetect Machine')
			Sleep(1000)
			Send('{enter}')
			Sleep(15000)
			WinSetState('Antidetect Machine v4.7.0','',@SW_RESTORE)
			Sleep(2000)
            WinMove('Antidetect Machine v4.7.0','',0,0,1366,768)
			Sleep(2000)
			Send('1')
			Sleep(1000)
			Send('{enter}')
			Sleep(15000)
			Send($IPmaythat)
			Sleep(1000)
			Send('{enter}')
			Sleep(120000)
		 EndIf

		 If $xoafile=1 Then

			ToolTip('tool xoa Funydev',0,0)
            DirRemove("C:\Program Files\Funny Dev",1)
			Sleep(10000)

		 EndIf

		For $i20=0 to 22
            FileDelete('C:\Users\'&@UserName&'\Downloads\csbphonenhom'&$i20&'.au3')
			Sleep(200)
		Next
		FileDelete('C:\Users\'&@UserName&'\Downloads\khoidong.au3')
		Sleep(1000)
		FileDelete('C:\Users\'&@UserName&'\Downloads\tool update code.au3')
		Sleep(1000)
        FileDelete('C:\Users\'&@UserName&'\Downloads\func3.au3')
		Sleep(1000)

        ShellExecute('C:\Users\'&@UserName&'\Desktop\csFireFox - 10 sea\func3.au3')
		Sleep(5000)
		MouseClick('left',680,336,1,20)
		Sleep(2000)
		Send('{tab}')
		Sleep(2000)
		Send('{SPACE}')
		Sleep(2000)
		Send('{tab}')
		Sleep(2000)
		Send('{SPACE}')
		Sleep(2000)

        MsgBox(0,0,'xong')

        Sleep(2000)
        MouseClick('left',24,881,1,20)
		Sleep(2000)
		MouseClick('left',24,835,1,20)
		Sleep(2000)
		MouseClick('left',24,785,1,20)
		Sleep(1000)

  Exit


        WEnd     ;k?t th�c v�ng l?p v� t?n
	EndSwitch
WEnd
#cs

_loginGmail($f,$g,$h,$i)   ;;return 1 la ok. 0 la that bai
_xoaprofileMOI()
_taoprofile($i)
_kiemtraMangInternet()
_GetDOSOutput($sCommand)
_kiemtraMangInternetVonglap240s()
_VerryGmail()  ; return $check=1 ok. 0 khong verrry duco
#ce


     Func _requetGooGleDOC($link,$tenTXT)     ; luu y Link phai co duoi /export?format=txt
				$checkrequet=0
				$kq=''
                         $kq=_HttpRequest(2,$link,'','','','','')        ;lay link kenh va kiem tra view gio
				         Sleep(1000)
                If StringLen($kq)<>0 Then

						FileDelete('C:\Users\'&@UserName&'\Downloads\'&$tenTXT)
						FileDelete('C:\Users\'&@UserName&'\Downloads\'&"data.txt")
						Sleep(100)
						FileWriteLine('C:\Users\'&@UserName&'\Downloads\'&"data.txt",$kq)
						$sodong=_FileCountLines('C:\Users\'&@UserName&'\Downloads\'&"data.txt")
                       ; MsgBox(0,0,$sodong)
					    $data=FileReadLine('C:\Users\'&@UserName&'\Downloads\'&"data.txt",1)
						$arry=StringSplit($data,' ')
					If  $arry[0]=1 Then

                        FileWriteLine('C:\Users\'&@UserName&'\Downloads\'&$tenTXT,$kq)
                        $checkrequet=1
					Else


						For $i=1 to $sodong
	                         $data=FileReadLine('C:\Users\'&@UserName&'\Downloads'&"\data.txt",$i)
	                         $arry=StringSplit($data,' ')
                            If IsArray($arry) Then
		                        For $i20=1 to $arry[0]
			                        If StringLen($arry[$i20])>1 or IsInt($arry[$i20]) Then
				                        FileWrite(@ScriptDir&'\'&$tenTXT,$arry[$i20]&"	")
										;FileWrite(@ScriptDir&'\'&$tenTXT,"	")
										;MsgBox(0,0,'ok')
			                        EndIf
		                        Next

								FileWriteLine('C:\Users\'&@UserName&'\Downloads'&'\'&$tenTXT,"	")

                            EndIf
						Next

					    ;FileWriteLine(@ScriptDir&'/'&$tenTXT,$kq)
						$checkrequet=1

					EndIf
                EndIf

				FileDelete('C:\Users\'&@UserName&'\Downloads'&"\data.txt")

			Return $checkrequet
		EndFunc



        Func _resetMang()
					ProcessClose('Proxy Client Tinsoft.exe')
					Sleep(2000)
					$check3= WinExists('Proxy Client Tinsoft')
					If $check3=0 Then
						Run('C:\Users\'&@UserName&'\Desktop\fakeip\Proxy Client Tinsoft.exe')
						;ShellExecute('C:\Users\'&@UserName&'\Desktop\fakeip\Proxy Client Tinsoft.exe')
						Sleep(2000)
					EndIf
					Sleep(2000)
					$handLDplay = WinActivate("Proxy Client Tinsoft")
					Sleep(500)
					WinMove('Proxy Client Tinsoft','',1137,380,220,340)
					Sleep(1000)
					ControlClick('Proxy Client Tinsoft','','[NAME:button2]')   ;dissconnect
					Sleep(2000)
					ProcessClose('Proxy Client Tinsoft.exe')
					Sleep(2000)

					WinClose('Server Manager')
					WinClose('Proxy Client Tinsoft')


		EndFunc

	    Func _closeTrinhDuyet($i)

			    Sleep(500)
				Send('^w')
				Sleep(500)
				Sleep(500)
				Send('^w')
				Sleep(500)
				Send('^w')
				Sleep(500)
				Send('^w')
				Sleep(500)
				Send('^w')
				Sleep(500)
				Send('^w')


				If $i=5 Then
					For $i20=1 to 5
						Send('^w')
						Sleep(1000)
					Next
				EndIf

				If $i=5 Then ControlClick('','','','left',1,428, 27)    ; tat tab thua
				Sleep(500)
				For $i20=1 to 3
					$var = WinList ("[CLASS:Chrome_WidgetWin_1]")
				  For $i10 = 1 to $var[0][0]
					If BitAnd (WinGetState ($var[$i10][1]), 2) And $var[$i10][0] <> "" Then
						ControlSend($var[$i10][1],'','','^w')
						Sleep(1000)
						WinClose($var[$i10][1])
						Sleep(100)
						ProcessClose('Windows Security.exe')
				        Sleep(100)
					EndIf
				  Next
				Next
				For $i20=1 to 3
				    $var = WinList ("[CLASS:MozillaWindowClass]")                                                       ;x󡠴o஠b? tap
				  For $i10 = 1 to $var[0][0]
					If BitAnd (WinGetState ($var[$i10][1]), 2) And $var[$i10][0] <> "" Then
						ControlSend($var[$i10][1],'','','^w')
						Sleep(1000)
					EndIf
				  Next
				Next

			        $var = WinList ("[CLASS:Chrome_WidgetWin_1]")                                                       ;x󡠴o஠b? tap
				For $i10 = 1 to $var[0][0]
					If BitAnd (WinGetState ($var[$i10][1]), 2) And $var[$i10][0] <> "" Then
						ProcessClose($var[$i10][1])
						Sleep(2000)
						ProcessClose('chrome.exe')
				        Sleep(100)
						ProcessClose('brave.exe')
				        Sleep(100)
						ProcessClose('UCBrowser.exe')
				        Sleep(100)
						ProcessClose('Maxthon.exe')
				        Sleep(100)
						ProcessClose('AvastBrowser.exe')
				        Sleep(100)
						ProcessClose('Windows Security.exe')
				        Sleep(100)
						ProcessClose('chrome.exe')
				        Sleep(100)

					EndIf
				Next
				$var = WinList ("[CLASS:MozillaWindowClass]")                                                       ;x󡠴o஠b? tap
				For $i10 = 1 to $var[0][0]
					If BitAnd (WinGetState ($var[$i10][1]), 2) And $var[$i10][0] <> "" Then
						ProcessClose($var[$i10][1])
						Sleep(200)
						ProcessClose('chrome.exe')
				        Sleep(100)
						ProcessClose('brave.exe')
				        Sleep(100)
						ProcessClose('UCBrowser.exe')
				        Sleep(100)

					EndIf
				Next
				$a = WinExists('Google Chrome')                                                    ;x󡠴o஠b? tap
				For $i20 = 1 to 100
					ProcessClose('chrome.exe')
					Sleep(100)
				Next
				$a = WinExists('chrome')                                                    ;x󡠴o஠b? tap
				If $a=1 Then
				    For $i20 = 1 to 100
					   ControlClick('chrome','','[CLASS:Button; INSTANCE:1]')
					   Sleep(100)
					Next
				EndIf
				$a = WinExists('Brave')                                                    ;x󡠴o஠b? tap
				If $a=1 Then
				    For $i20 = 1 to 100
					   WinClose('Brave')
					   Sleep(100)
					Next
				EndIf
				$a = WinExists('Trình báo cáo lỗi của Mozilla')                                                    ;x󡠴o஠b? tap
				If $a=1 Then
				    For $i20 = 1 to 100
					   WinClose('Trình báo cáo lỗi của Mozilla')
					   Sleep(100)
					Next
				EndIf
				$a = WinExists('Đóng chrome')                                                    ;x󡠴o஠b? tap
				If $a=1 Then
				    For $i20 = 1 to 100
					   WinClose('Đóng chrome')
					   Sleep(100)
					Next
				EndIf

				$var = WinList ("[CLASS:CabinetWClass]")
				  For $i10 = 1 to $var[0][0]
					If BitAnd (WinGetState ($var[$i10][1]), 2) And $var[$i10][0] <> "" Then
						WinClose($var[$i10][1])
						Sleep(100)
					EndIf
				  Next
                WinClose('Default Host Application')
				Sleep(100)
				ProcessClose('launcher.exe')
				Sleep(100)
				ProcessClose('msdt.exe')
				Sleep(100)
				ProcessClose('chrome.exe')
                Sleep(100)
                ProcessClose('shutdown.exe')

				WinClose('7z SFX: warning')
				Sleep(100)
				WinClose('Cài đặt ')
				Sleep(100)
				ProcessClose('Windows Network Diagnostics.exe')
				Sleep(100)
				ProcessClose('download.exe')
				Sleep(100)
				ProcessClose('WerFault.exe')
				Sleep(100)
				ProcessClose('Opera_94.0.4606.38_Autoupdate_x64.exe')
				Sleep(100)
				ProcessClose('Windows Security.exe')
				Sleep(100)
				ProcessClose('opera_autoupdate.exe')
				Sleep(100)
				ProcessClose('AvastBrowser.exe.exe')
				Sleep(100)
				ProcessClose('brave.exe')
				Sleep(100)
				ProcessClose('browser_assistant.exe')
				Sleep(100)
				ProcessClose('browser.exe')
				Sleep(100)
				ProcessClose('notepad.exe')
				Sleep(100)
				ProcessClose('UCBrowser.exe')
				Sleep(100)
				ProcessClose('browser_assistant.exe')
				Sleep(100)
				ProcessClose('opera_autoupdate.exe')
				Sleep(100)
				Sleep(100)
				ProcessClose('AvastBrowserCrashHandler64.exe')
				Sleep(100)
				ProcessClose('AvastBrowserCrashHandler.exe')
				Sleep(100)
				ProcessClose('GlobusService.exe')
				Sleep(100)
                ProcessClose('GlobusPrivacyBrowser.exe')
				Sleep(100)
				ProcessClose('crashreporter.exe')
				Sleep(100)
				ProcessClose('msdt.exe')
				Sleep(100)
				ProcessClose('EpicUpdate.exe')
				Sleep(100)
                ProcessClose('slimbrowser.exe')
				Sleep(100)
				ProcessClose('gGlobusPrivacyBrowser.exe')
				Sleep(100)
				ProcessClose('epic.exe')
				Sleep(100)
				ProcessClose('iepic.exe')
				Sleep(100)
				ProcessClose('gepic.exe')
				Sleep(100)
				ProcessClose('msedge.exe')
				Sleep(100)
				ProcessClose('giTopVPNBrowser.exe')
				Sleep(100)
				ProcessClose('iTopVPNBrowser.exe')
				Sleep(100)
				ProcessClose('ibrowser.exe')
				Sleep(100)
				ProcessClose('browser.exe')
				Sleep(100)
				ProcessClose('seamonkey.exe')
				Sleep(100)
				ProcessClose('gseamonkey.exe')
				Sleep(100)
				ProcessClose('iexplore.exe')
				Sleep(100)
				ProcessClose('explore.exe')
                Sleep(100)
				ProcessClose('AvastBrowser.exe')
				Sleep(100)
				ProcessClose('gAvastBrowser.exe')
				Sleep(100)
				ProcessClose('gbrowser.exe')
				Sleep(100)
			    ProcessClose('gopera.exe')
				Sleep(100)
				ProcessClose('gvivaldi.exe')
				Sleep(100)
				ProcessClose('gMaxthon.exe')
				Sleep(100)
				ProcessClose('Maxthon.exe')
				Sleep(100)
				ProcessClose('launcher.exe')
				Sleep(100)
				ProcessClose('GoogleCrashHandler64.exe')
				Sleep(100)
				ProcessClose('GoogleCrashHandler.exe')
				Sleep(100)
				ProcessClose('Windows Security.exe')
				Sleep(100)
				ProcessClose('gchrome.exe')
				Sleep(100)
				ProcessClose('gchrome.exe')
				Sleep(100)
				ProcessClose('opera_autoupdate.exe')
				Sleep(100)
				Sleep(100)
				ProcessClose('gUCBrowser.exe')
				Sleep(100)
				ProcessClose('browser.exe')
				Sleep(100)
				ProcessClose('brave.exe')
				Sleep(100)
				ProcessClose('vivaldi.exe')
				Sleep(100)
				ProcessClose('chrome.exe')
				Sleep(100)
				ProcessClose('launcher.exe')
				Sleep(100)
				ProcessClose('Windows Security.exe')
				Sleep(100)
				ProcessClose('msedge.exe')
				Sleep(100)
				ProcessClose('gmsedge.exe')
				Sleep(100)
				ProcessClose('UCBrowser.exe')
				Sleep(100)
				ProcessClose('gbrowser.exe')
				Sleep(100)
			    ProcessClose('gopera.exe')
				Sleep(100)
				ProcessClose('gbrave.exe')
                Sleep(100)
				ProcessClose('gMaxthon.exe')
				Sleep(100)
				ProcessClose('gchrome.exe')
				Sleep(100)
				ProcessClose('gchrome.exe')
				Sleep(100)
				ProcessClose('gUCBrowser.exe')
				Sleep(100)
			    ProcessClose('opera.exe')
				Sleep(100)
				ProcessClose('brave.exe')
				Sleep(100)
				ProcessClose('slimbrowser.exe')
				Sleep(100)
				ProcessClose('msedge.exe')
				Sleep(100)
				ProcessClose('gmsedge.exe')
				Sleep(100)
				ProcessClose('AvastBrowser.exe')
				Sleep(100)
				ProcessClose('gAvastBrowser.exe')
				Sleep(100)
				ProcessClose('rundll32.exe')
				Sleep(100)
				ProcessClose('Windows Security.exe')
				Sleep(100)
				ProcessClose('seamonkey.exe')
				Sleep(100)
				ProcessClose('gseamonkey.exe')
				Sleep(100)
				ControlClick('Maxthon','','[CLASS:Button; INSTANCE:2]')
				Sleep(100)
				ControlClick('Maxthon','','[CLASS:Button; INSTANCE:2]')
				Send('{f5}')
				Sleep(100)
				WinClose("Open File - Security Warning")
				Sleep(100)
				WinClose("SeaMonkey")
				Sleep(100)
				ProcessClose('AvastBrowserCrashHandler.exe')
				Sleep(100)
				ProcessClose('BraveCrashHandler64.exe')
				Sleep(100)
				ProcessClose('BraveCrashHandler.exe')
				Sleep(100)
				ProcessClose('CocCocCrashHandler64.exe')
				Sleep(100)
				ProcessClose('CocCocCrashHandler.exe')
				Sleep(100)
				ProcessClose('GoogleCrashHandler64.exe')
				Sleep(100)
				ProcessClose('GoogleCrashHandler.exe')
				Sleep(100)
				ProcessClose('BraveCrashHandler64.exe')
				Sleep(100)
				ProcessClose('BraveCrashHandler.exe')
				Sleep(100)
				ProcessClose('EpicUpdate.exe')
				Sleep(100)
				ProcessClose('GlobusService.exe')
				Sleep(100)
				ProcessClose('UCService.exe')
				Sleep(100)
				ProcessClose('UCAgent.exe')
				Sleep(100)
				ProcessClose('Windows Security.exe')
                Sleep(100)
				Send('{f5}')
				Sleep(100)
				WinClose('Local Area Network (LAN) Settings')
				Sleep(100)
				WinClose('Internet Properties')
				Sleep(100)
				WinClose('[class:CabinetWClass]','')
				Sleep(100)
				WinClose('Proxy Client Tinsoft')
				Sleep(100)
				ProcessClose('mmc.exe')
				Sleep(100)
				ProcessClose('cmd.exe')
				Sleep(100)
				ProcessClose('cmd.exe')


	EndFunc


	 Func _xoaprofileMOI()
                            Send("#r")
							Sleep(1000)
                            Send("chrome.exe -P")
                            Sleep(500)
                            Send('{enter}')
                            Sleep(3000)
                            WinWait('chrome - Chọn hồ sơ người dùng','',10)
                            ControlClick('chrome - Chọn hồ sơ người dùng','','','left',1,579, 359)
                            Sleep(1000)
							For $ixoa=1 to 5
                              ControlClick('','','','left',1,586, 359)
                              Sleep(2000)
							  ControlClick('','','','left',1,822, 418)
							  Sleep(2000)
							Next
							WinClose('chrome - Chọn hồ sơ người dùng')
							Sleep(3000)

	EndFunc


	Func _kiemtraMangInternet()
         $cmd=_GetDOSOutput('ping google.com.vn')
      If StringLen($cmd)>100 Then
	     $Mang=1
      Else
	     $Mang=0
	  EndIf
	  Return $Mang
EndFunc


Func _GetDOSOutput($sCommand)
   Local $iPID, $sOutput = ''
   $iPID = Run('"cmd"' & @ComSpec & '" /c' & $sCommand, "",@SW_HIDE, 2)
   While 1
      $sOutput &= StdoutRead($iPID,False, False)
      If @error Then
         ExitLoop
      EndIf
      Sleep(10)
   WEnd
   Return $sOutput
EndFunc

Func _kiemtraMangInternetVonglap240s()
     		For $d=1 To 120
				$kiemtramang=_kiemtraMangInternet()
				If $kiemtramang=1 Then
					$d=120
					$Mang=1
				Else
					Sleep(5000)
					$Mang=0
				EndIf
			Next
	  Return $Mang
EndFunc


Func AutoRun()



	EndFunc

	Func _changeIPtinsoft($c)
						If $c=1 Then
							For $i20=1 to 30
						      $handLDplay = WinActivate("Proxy Client Tinsoft")
		                      Sleep(1000)
							  ControlClick('','','','left',1,1198, 650)    ; change IP tinsopt PC
							  Sleep(5000)
							  $pixcel=PixelSearch(@DesktopWidth/3, @DesktopHeight/3,@DesktopWidth,@DesktopHeight,0x008000)
							  If IsArray($pixcel) Then $i20=30
							Next
						EndIf
	EndFunc



Func _Exit()
	Exit
EndFunc   ;==>_Exit

