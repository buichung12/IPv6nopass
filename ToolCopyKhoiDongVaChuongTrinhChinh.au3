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



        _resetMang()



		        $check=FileExists("C:\Program Files (x86)\Mozilla Firefox\firefox.exe")
				$check2=FileExists("C:\Program Files\Mozilla Firefox\firefox.exe")

			If $check=0 And $check2=0 Then

				$i=7
				Run('C:\Users\'&@UserName&'\Desktop\trinh duyet\Firefox Installer.exe')
				Sleep(15000)
				MouseClick('left',780,460,1,20)
				Sleep(5000)
				MouseClick('left',493,543,1,20)
				Sleep(3000)
				ControlClick('Open File - Security Warning','&Run','[CLASS:Button; INSTANCE:1]','left',1,40, 12)
				Sleep(60000)
				MouseClick('left',856,51,1,20)
				Sleep(15000)

				For $i20=1 to 50
					$check=WinExists('Chào mừng đến với Firefox - Mozilla Firefox')
					If $check=1 Then
						Sleep(2000)
						$i20=50
						$check=1
					EndIf
					Sleep(1000)
				Next

				MouseClick('left',1263,112,1,20)
				Sleep(5000)
	            Sleep(2000)
				WinMove('','',0,0,1366,768)
				Sleep(1000)
				_closeTrinhDuyet($i)
				Sleep(2000)

				$i=7
				 _khoidongFireFox($i)
				 Sleep(10000)
				 If $i=7 Then
					     $pixcel=PixelSearch(537, 263,735, 300,0x0061E0,5)
					    If IsArray($pixcel) Then                     ; tat trang
						    Sleep(1000)
							MouseClick('left',505, 244,1,20)
							Sleep(1000)
							MouseClick('left',804, 285,1,20)
							Sleep(1000)
					    EndIf
				 EndIf
				 _closeTrinhDuyet($i)

			Else
				$check13=1
            EndIf

			$check=FileExists("C:\Program Files\Google\Chrome\Application\chrome.exe")
		    If $check=0 Then
				$i=10
				Run('C:\Users\'&@UserName&'\Desktop\trinh duyet\ChromeSetup.exe')
				Sleep(5000)
				MouseClick('left',780,460,1,20)
				Sleep(40000)
				For $i20=1 to 50
					$pixcel=PixelSearch(600, 150,800, 350,0x1A73E8,5)
					If IsArray($pixcel) Then                     ; tat trang
						    Sleep(1000)
							MouseClick('left',720,257,1,20)
							Sleep(2000)
							Send('{tab}')
							Sleep(2000)
							Send('{enter}')
				            Sleep(5000)
							Send('{tab}')
							Sleep(2000)
							Send('{enter}')
				            Sleep(10000)
							Send('{tab}')
							Sleep(2000)
							Send('{tab}')
							Sleep(2000)
							Send('{tab}')
							Sleep(2000)
							Send('{enter}')
				            Sleep(10000)
					EndIf
					Sleep(2000)
	            Next
	            Sleep(2000)
				WinMove('','',0,0,1366,768)
				Sleep(1000)
				_closeTrinhDuyet($i)
			Else
				$check20=1
		    EndIf

        _closeTrinhDuyet(1)



        _requetGooGleDOC('https://docs.google.com/document/d/1QioeFifQFHiJxdXueMenDHvGcFIJBzhjULs6oyhHIUU/export?format=txt','DuLieuDauVao.txt')     ; luu y Link phai co duoi /export?format=txt
        Sleep(8000)
	    If FileExists('C:\Users\'&@UserName&'\Downloads\DuLieuDauVao.txt') =0 Then
			_requetGooGleDOC('https://docs.google.com/document/d/1QioeFifQFHiJxdXueMenDHvGcFIJBzhjULs6oyhHIUU/export?format=txt','DuLieuDauVao.txt')     ; luu y Link phai co duoi /export?format=txt
			Sleep(6000)

		EndIf
		If FileExists('C:\Users\'&@UserName&'\Downloads\DuLieuDauVao.txt') =0 Then
			_requetGooGleDOC('https://docs.google.com/document/d/1QioeFifQFHiJxdXueMenDHvGcFIJBzhjULs6oyhHIUU/export?format=txt','DuLieuDauVao.txt')     ; luu y Link phai co duoi /export?format=txt
			Sleep(6000)
		EndIf
	    $IPmaythat=FileReadLine('C:\Users\'&@UserName&'\Downloads\DuLieuDauVao.txt',1)
	    Sleep(200)
	    $sonhom   =FileReadLine('C:\Users\'&@UserName&'\Downloads\DuLieuDauVao.txt',2)
        Sleep(1000)
		ToolTip('tool copy file stt khoi dong may ao:'&$STTmayao&'	so nhom:'&$sonhom,0,30)
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
		Sleep(7000)
		Send('{enter}')
		Sleep(8000)

					WinClose('Install Google Translate extension to translate this page?')
					WinClose('Restore pages?')
					WinClose('Khôi phục trang')
					WinClose('Bạn có muốn khôi phục trang không?')
					WinClose('Default Client')
					WinClose('Update successful')
					Sleep(1000)
					WinClose('Restore pages?')
					WinClose('Default Client')
					WinClose('UC Browser')
					WinClose('Check Update')
					WinClose('Bright VPN - Secure Private & Free VPN Proxy is disabled')
				    WinClose('Remove "Bright VPN - Secure Private & Free VPN Proxy"?')
					WinClose('Restore pages?')


		If $i21=1 Then
			MouseClick('left',1330,112,1,20)  ; xoa khoi phuc
		    Sleep(3000)
			MouseClick('left',1300,720,1,20)  ; xoa khoi phuc
		    Sleep(3000)
		    MouseClick('left',515, 696,1,20)   ; xoa loi
			Sleep(1000)
		    $var = WinList ("[CLASS:Chrome_WidgetWin_1]")
			    Sleep(1000)
		    If $var[0][0]=0 Then $var = WinList ("[CLASS:MozillaWindowClass]")
		    Sleep(1000)
		    For $i10 = 1 to $var[0][0]
			    If BitAnd (WinGetState ($var[$i10][1]), 2) And $var[$i10][0] <> "" Then
		            WinMove($var[$i10][1],'',0,0,1366,768)
			    EndIf
		    Next
        EndIf
		Sleep(2000)
		Send('^+s')
		Sleep(7000)

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
    For $i20=1 to 2

		_GetDOSOutput('start chrome "https://github.com/buichung12/IPv6nopass/blob/main/func3.au3"')
        Sleep(7000)
		Send('{enter}')
		Sleep(8000)
		Send('^+s')
		Sleep(7000)
		Sleep(15000)

		FileCopy("C:\Users\"&@UserName&"\Downloads\func3.au3","C:\Users\"&@UserName&"\Desktop\csFireFox - 10 sea", 1)


		If FileExists("C:\Users\"&@UserName&"\Downloads\func3.au3")=1 Then $i20=3
		Sleep(2000)
    Next

	    _closeTrinhDuyet(1)

	    FileDelete('C:\Users\'&@UserName&'\Downloads\tool update code.au3')
		Sleep(1000)
	    _GetDOSOutput('start chrome "https://github.com/buichung12/IPv6nopass/blob/main/tool%20update%20code.au3"')     ;dowload tool up date
        Sleep(7000)
		Send('{enter}')
		Sleep(8000)
		Send('^+s')
		Sleep(15000)
		FileCopy('C:\Users\'&@UserName&'\Downloads\tool update code.au3','C:\Users\'&@UserName&'\Desktop\csFireFox - 10 sea',1)
		Sleep(3000)

		FileDelete('C:\Users\'&@UserName&'\Downloads\khoidong.au3')
		Sleep(1000)
		For $i20=1 to 100
			FileDelete('C:\Users\'&@UserName&'\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\'&'khoidong'&$i20&'.exe')
			Sleep(100)
		Next
		 FileDelete('C:\Users\'&@UserName&'\Downloads\khoidong.au3')
		Sleep(1000)
	    _GetDOSOutput('start chrome "https://github.com/buichung12/IPv6nopass/blob/main/khoidong.au3"')     ;dowload tool khoi dong
        Sleep(7000)
		Send('{enter}')
		Sleep(8000)
		Send('^+s')
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
               If FileExists('C:\Users\'&@UserName&'\Desktop\csFireFox - 10 sea\csbphonenhom'&$sonhom&'.au3')=0  Then MsgBox(0,0,'loi khong csbphonenhom'&$sonhom&'.au3')
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

	If FileExists("C:\Program Files (x86)\AutoIt3\AutoIt3.exe")=0 and FileExists("C:\Program Files\AutoIt3\AutoIt3.exe")=0  Then
		ToolTip('cai dat autoit',0,30)

		_GetDOSOutput('start chrome "https://github.com/buichung12/IPv6nopass/raw/main/autoit-v3-setup.exe"')  ; tai autoit
		Sleep(7000)
		Send('{enter}')
		Sleep(8000)
		_GetDOSOutput('start chrome "https://www.autoitscript.com/cgi-bin/getfile.pl?autoit3/autoit-v3-setup.exe"')  ; tai autoit
		Sleep(5000)
		_GetDOSOutput('start Firefox "https://github.com/buichung12/IPv6nopass/raw/main/SciTE4AutoIt3.exe"')
		Sleep(20000)
		_GetDOSOutput('start firefox "https://github.com/buichung12/IPv6nopass/raw/main/autoit-v3-setup.exe"')  ; tai autoit
		Sleep(20000)

        _closeTrinhDuyet(1)

		If FileExists("C:\Users\"&@UserName&"\Downloads\autoit-v3-setup.zip") Then
            ShellExecute("C:\Users\"&@UserName&"\Downloads\autoit-v3-setup.zip")
			Sleep(6000)
			WinClose('Please purchase WinRAR license')
			Sleep(2000)
			WinClose('WinRAR 6.24 Expired Notification | Your free trial period has ended!')
			Sleep(2000)
			WinMove('','',0,0,1366,768)
			Sleep(2000)
			MouseClick('left',95, 82,1,20)
			Sleep(4000)
			Send('{enter}')
			Sleep(4000)
			FileCopy("C:\Users\"&@UserName&"\Downloads\autoit-v3-setup\autoit-v3-setup.exe","C:\Users\"&@UserName&"\Downloads\autoit-v3-setup.exe")
			Sleep(1000)
			WinClose('autoit-v3-setup.zip (evaluation copy)')
		EndIf

		Sleep(5000)
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
			Sleep(20000)
			WinSetState('Antidetect Machine v4.8','',@SW_RESTORE)
			Sleep(2000)
            WinMove('Antidetect Machine v4.8','',0,0,1366,768)
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

	    Func _khoidongFireFox($i)
			        $dangnhap=0

			        WinClose('trinh duyet')
					WinClose('csFireFox - 10 sea')
			        WinClose('Proxy Client Tinsoft')
				    Send('^w')
					Sleep(1000)
                    WinClose('Server Manager')
					Sleep(2000)

                    WinClose('Proxy Client Tinsoft')
					If $i=1 Then $linkblu="C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe"
					If $i=2 Then $linkblu="C:\Program Files\BraveSoftware\Brave-Browser\Application\brave.exe"
					;If $i=3 Then $linkblu='C:\Users\'&@UserName&'\AppData\Local\Maxthon\Application\Maxthon.exe'
					If $i=3 Then $linkblu="C:\Program Files (x86)\CocCoc\Browser\Application\browser.exe"
					If $i=4 Then $linkblu='C:\portapps\brave-portable\brave-portable.exe'
					;If $i=4 Then $linkblu='C:\Program Files (x86)\AVAST Software\Browser\Application\AvastBrowser.exe'
					If $i=5 Then $linkblu='C:\Users\'&@UserName&'\AppData\Local\Programs\Opera\launcher.exe'
					;If $i=5 Then $linkblu='C:\Users\'&@UserName&'\AppData\Local\Yandex\YandexBrowser\Application\browser.exe'
					If $i=6 Then $linkblu="C:\Users\"&@UserName&"\Desktop\trinh duyet\FirefoxPortable\FirefoxPortable.exe"
					If $i=7 Then $linkblu="C:\Program Files (x86)\Mozilla Firefox\firefox.exe"
					;If $i=8 Then $linkblu="C:\Program Files (x86)\SeaMonkey\seamonkey.exe"
					If $i=8 Then $linkblu="C:\Users\"&@UserName&"\AppData\Local\Chromium\Application\chrome.exe"
					If $i=9 Then $linkblu="C:\Program Files (x86)\SlimBrowser\slimbrowser.exe"
					;If $i=10 Then $linkblu="C:\Program Files (x86)\Globus\PrivacyBrowser\GlobusPrivacyBrowser.exe"
					If $i=10 Then $linkblu="C:\Program Files\Google\Chrome\Application\chrome.exe"
					Sleep(2000)
					Run( $linkblu,'')
					Sleep(2000)
	                If $i=1 Then
						$linkblu='C:\Program Files\Microsoft\Edge\Application\msedge.exe'
						Run( $linkblu,'')
					EndIf
					If $i=7 Then
						$linkblu='C:\Program Files\Mozilla Firefox\firefox.exe'
						Run( $linkblu,'')
					EndIf
					Sleep(8000)
					If $i=6 or 7 Then
						Send('{enter}')
					EndIf
					Sleep(7000)
					WinClose('Install Google Translate extension to translate this page?')
					WinClose('Restore pages?')
					WinClose('Khôi phục trang')
					WinClose('Bạn có muốn khôi phục trang không?')
					WinClose('Default Client')
					WinClose('Update successful')
					WinClose('Translated page')
					WinClose('Translated page from Vietnamses?')
					Sleep(1000)
					WinClose('Restore pages?')
					WinClose('Restore pages')
					WinClose('Default Client')
					WinClose('UC Browser')
					WinClose('Check Update')
					WinClose('Bright VPN - Secure Private & Free VPN Proxy is disabled')
				    WinClose('Remove "Bright VPN - Secure Private & Free VPN Proxy"?')
					WinClose('Restore pages?')
					Sleep(1000)
					WinClose('Check Update')
					If  $i=9 Then
							WinClose('Check Update')
							Sleep(10000)
							MouseClick('left',805,437,1,20)
							Sleep(2000)
							MouseClick('left',844, 317,1,20)
							Sleep(2000)
                            ControlClick('','','','left',1,475, 200)
                            Sleep(2000)
                            ControlClick('','','','left',1,800, 243)
	                        Sleep(2000)
							MouseClick('left',503, 200,1,20)
							Sleep(2000)
							MouseClick('left',831, 237,1,20)
							Sleep(2000)
							MouseClick('left',1304,190,1,20)
							Sleep(2000)
							MouseClick('left',1260,208 ,1,20)
							Sleep(1000)
							ControlClick('','','','left',1,505, 200)
							Sleep(2000)
							ControlClick('','','','left',1,834, 242)
							Sleep(2000)

					EndIf

					If $i=6 Then
						MouseClick('left',1185, 192,1,20)  ;tat thong bao update
				        Sleep(2000)
						MouseClick('left',1260,200,1,20)
						Sleep(1000)
					EndIf
					If $i=4 Then
						MouseClick('left',852, 510,1,20)  ;tat thong bao update
				        Sleep(7000)
					EndIf


                    If $i=1 Then
						MouseClick('left',1280,700,1,20)  ;tat thong bao update
				        Sleep(7000)
					EndIf


					Sleep(1000)
					$var = WinList ("[CLASS:Chrome_WidgetWin_1]")
                    Sleep(1000)
					If $var[0][0]=0 Then $var = WinList ("[CLASS:MozillaWindowClass]")
					Sleep(1000)
					If $i=9 Then $var = WinList ("[CLASS:FlashPeakWindowClass]")


				  If $var[0][0]<>0 Then
					For $i10 = 1 to $var[0][0]
					  If BitAnd (WinGetState ($var[$i10][1]), 2) And $var[$i10][0] <> "" Then

						WinSetState($var[$i10][1],'',@SW_RESTORE)
						Sleep(1000)

						If $i=2 Then
							MouseClick('left',1334, 981,1,20)
							Sleep(2000)
						    ControlClick('','','','left',1,528, 202)
							Sleep(2000)
							ControlClick('','','','left',1,789, 266)
							Sleep(2000)
					    EndIf

						If $i=10 Then
							MouseClick('left',1325,112,1,20)  ; tat khoi phuc
							Sleep(2000)
					    EndIf
						WinClose('Restore pages?')
					    WinClose('Restore pages')

						WinMove($var[$i10][1],'',0,0,1366,850)
						Sleep(2000)

						If  $i=10 Then
							Sleep(3000)
							$pixcel=PixelSearch(430, 623,1013, 764,0x0B57D0)
					        If IsArray($pixcel) Then
							     MouseClick('left',$pixcel[0]+5, $pixcel[1]+5,1,20)
							     Sleep(3000)
							EndIf
							$pixcel=PixelSearch(430, 623,1013, 764,0x0B57D0)
					        If IsArray($pixcel) Then
							     MouseClick('left',$pixcel[0]+5, $pixcel[1]+5,1,20)
							     Sleep(3000)
							EndIf
							$pixcel=PixelSearch(430, 623,1013, 764,0x0B57D0)
					        If IsArray($pixcel) Then
							     MouseClick('left',$pixcel[0]+5, $pixcel[1]+5,1,20)
							     Sleep(3000)
							EndIf
							MouseClick('left',1325,112,1,20)  ; tat khoi phuc
							Sleep(2000)
							ControlClick('','Chrome Legacy Window','[CLASS:Chrome_RenderWidgetHostHWND; INSTANCE:1]','left',1,291, 635)
		                    Sleep(2000)
		                    ControlClick('','Chrome Legacy Window','[CLASS:Chrome_RenderWidgetHostHWND; INSTANCE:1]','left',1,462, 637)
							Sleep(2000)
							MouseClick('left',1300,720,1,20)
							Sleep(3000)
							MouseClick('left',1280,163,1,20)
							Sleep(2000)
							MouseClick('left',1322,114,1,20)
							Sleep(3000)
							MouseClick('left',1317,112,1,20)
							Sleep(2000)
							MouseClick('left',1327, 102,1,20)
							Sleep(1000)
							MouseClick('left',1327, 145,1,20)
							Sleep(1000)

						EndIf


						If  $i=9 Then
							WinClose('Check Update')
							Sleep(1000)
							MouseClick('left',805,437,1,20)
							Sleep(2000)
                            ControlClick('','','','left',1,475, 200)
                            Sleep(2000)
                            ControlClick('','','','left',1,800, 243)
	                        Sleep(1000)
							MouseClick('left',503, 200,1,20)
							Sleep(1000)
							MouseClick('left',831, 237,1,20)
							Sleep(1000)
							MouseClick('left',1304,190,1,20)
							Sleep(1000)
							MouseClick('left',1338,131,1,20)
							Sleep(1000)
							MouseClick('left',1280,163,1,20)
							Sleep(1000)
							MouseClick('left',1325,147,1,20)
							Sleep(1000)

						EndIf

						If $i=8 Then
							Sleep(1000)
							ControlClick($var[$i10][1],'','','left',1,1333, 102)
							Sleep(2000)
							ControlClick($var[$i10][1],'','','left',1,1333, 102)
							Sleep(2000)
							MouseClick('left',1333, 102,1,20)
							Sleep(2000)
							MouseClick('left',1333, 102,1,20)
							Sleep(2000)
							MouseClick('left',1333, 102,1,20)
							Sleep(2000)
							MouseClick('left',1280,163,1,20)
							Sleep(2000)

						EndIf

						If $i=7 Then
							MouseClick('left',1260,208 ,1,20)
							Sleep(1000)
							ControlClick($var[$i10][1],'','','left',1,505, 200)
							Sleep(2000)
							ControlClick($var[$i10][1],'','','left',1,834, 242)
							Sleep(2000)
							MouseClick('left',1260,208 ,1,20)
							Sleep(1000)
							MouseClick('left',1280,163,1,20)
							Sleep(2000)
							MouseClick('left',680,550,1,20)
							Sleep(2000)

							If WinExists('firefox.exe - Bad Image')=1 or WinExists('Firefox')=1 Then    ; loi khong khoi dong
								FileDelete('C:\Program Files\Mozilla Firefox\vcruntime140.dll')
								Sleep(1000)
								FileDelete('C:\Program Files\Mozilla Firefox\vcruntime140_1.dll')
								Sleep(1000)
								Run('C:\Users\'&@UserName&'\Desktop\trinh duyet\Firefox Installer.exe')
				                Sleep(15000)
				                MouseClick('left',523, 543,1,20)
								ControlClick('Open File - Security Warning','&Run','[CLASS:Button; INSTANCE:1]','left',1,40, 12)
				                Sleep(60000)


							EndIf

						EndIf

						If $i=6 Then
							MouseClick('left',1260,208 ,1,20)
							Sleep(1000)
							ControlClick($var[$i10][1],'','','left',1,505, 200)
							Sleep(2000)
							ControlClick($var[$i10][1],'','','left',1,834, 242)
							Sleep(2000)
							MouseClick('left',1260,200,1,20)
							Sleep(1000)
							MouseClick('left',1280,163,1,20)
							Sleep(2000)
						EndIf

						If $i=5 Then
							MouseClick('left',1280,163,1,20)
							Sleep(2000)
							MouseClick('left',1322,99,1,20)
							Sleep(2000)
							MouseClick('left',500,60 ,1,20)    ; tat zoom
							Sleep(2000)
							Send('^a')
							Sleep(2000)
							Send('https://www.youtube.com')
							Sleep(2000)
							Send('{enter}')
							Sleep(10000)
						EndIf


						If $i=4 Then
						    MouseClick('left',725, 132,1,20)  ;tat thong bao update
				            Sleep(2000)
						    MouseClick('left',1280,163,1,20)
							Sleep(2000)
					    EndIf


						If $i=3 Then

						   WinClose('Update successful')
				           Sleep(2000)
						   WinClose('Bạn có muốn khôi phục trang không?')

						EndIf

						If $i=2 Then
						   Sleep(2000)
					       MouseClick('left',1333, 130,1,20)
						   Sleep(2000)
						   MouseClick('left',1333, 97,1,20)
						   Sleep(2000)
					       MouseClick('left',1333, 130,1,20)
						   Sleep(2000)
						   MouseClick('left',1333, 97,1,20)
						   Sleep(2000)
					       ControlClick($var[$i10][1],'','','left',1,1333, 130)
						   MouseClick('left',1280,163,1,20)
							Sleep(2000)
						EndIf
#cs
						If $i=1 Then
							MouseClick('left',880, 113,1,20)  ;tat tanh cong cu
				            Sleep(1000)
							MouseClick('left',1320, 113,1,20)  ;tat tanh cong cu
				            Sleep(1000)
						    MouseClick('left',1328, 696,1,20)  ;tat tanh cong cu
				            Sleep(1000)
						    ControlClick('','','','left',1,1330, 103)
						    Sleep(2000)
						    MouseClick('left',1333,99,1,20)  ;tat tanh cong cu
					    	Sleep(1000)
						    MouseClick('left',1333, 134,1,20)  ;tat tanh cong cu
						    Sleep(1000)
							MouseClick('left',880, 148,1,20)  ;tat tanh cong cu
				            Sleep(1000)
							MouseClick('left',880, 118,1,20)  ;tat tanh cong cu
				            Sleep(1000)
							MouseClick('left',1280,163,1,20)
							Sleep(2000)
							MouseClick('left',1300,700,1,20)  ;tat tanh cong cu
						    Sleep(1000)
							MouseClick('left',910,133,1,20)  ;tat tanh cong cu
						    Sleep(1000)
							MouseClick('left',1285,100,1,20)  ;tat tanh cong cu
						    Sleep(1000)
					    EndIf
#ce


                        If $i=1 Then
						    MouseClick('left',1280,700,1,20)  ;tat thong bao update
				            Sleep(7000)
					    EndIf

					    If $i=10 Then
							ControlClick('','Chrome Legacy Window','[CLASS:Chrome_RenderWidgetHostHWND; INSTANCE:1]','left',1,291, 635)
		                    Sleep(2000)
		                    ControlClick('','Chrome Legacy Window','[CLASS:Chrome_RenderWidgetHostHWND; INSTANCE:1]','left',1,462, 637)
							Sleep(2000)
							MouseClick('left',1300,720,1,20)
							Sleep(1000)
							MouseClick('left',1280,163,1,20)
							Sleep(2000)
							MouseClick('left',1322,114,1,20)
							Sleep(1000)
							MouseClick('left',1317,112,1,20)
							Sleep(1000)
							MouseClick('left',1327, 102,1,20)
							Sleep(1000)
						EndIf
					    If $i=9 Then ControlClick($var[$i10][1],'','','left',1,478, 23)    ; tat tab thua
					    If $i=8 Then ControlClick($var[$i10][1],'','','left',1,478, 26)    ; tat tab thua
					    If $i=7 Then ControlClick($var[$i10][1],'','','left',1,478, 22)    ; tat tab thua
					    If $i=6 Then ControlClick($var[$i10][1],'','','left',1,479, 26)    ; tat tab thua
					    If $i=5 Then ControlClick($var[$i10][1],'','','left',1,426, 30)    ; tat tab thua
					    If $i=4 Then ControlClick($var[$i10][1],'','','left',1,479, 25)    ; tat tab thua
					    If $i=3 Then ControlClick($var[$i10][1],'','','left',1,573, 25)    ; tat tab thua
					    If $i=2 Then ControlClick($var[$i10][1],'','','left',1,478, 23)    ; tat tab thua
					    If $i=1 Then ControlClick($var[$i10][1],'','','left',1,427, 26)    ; tat tab thua
                        If $i=1 Then ControlClick($var[$i10][1],'','','left',1,512, 27)   ; tat thong bao
					    Sleep(1000)
					   ; If $i=10 Then ControlClick($var[$i10][1],'','','left',1,389, 33)    ; tat tab thua
					    If $i=9 Then ControlClick($var[$i10][1],'','','left',1,478, 23)    ; tat tab thua
					    If $i=8 Then ControlClick($var[$i10][1],'','','left',1,478, 26)    ; tat tab thua
					    If $i=7 Then ControlClick($var[$i10][1],'','','left',1,478, 22)    ; tat tab thua
					    If $i=6 Then ControlClick($var[$i10][1],'','','left',1,479, 26)    ; tat tab thua
					    If $i=5 Then ControlClick($var[$i10][1],'','','left',1,426, 30)    ; tat tab thua
						Sleep(1000)
						If $i=5 Then ControlClick($var[$i10][1],'','','left',1,426, 30)    ; tat tab thua
						Sleep(1000)
						If $i=5 Then ControlClick($var[$i10][1],'','','left',1,426, 30)    ; tat tab thua
						Sleep(1000)
						If $i=5 Then ControlClick($var[$i10][1],'','','left',1,426, 30)    ; tat tab thua
						Sleep(1000)
					    If $i=4 Then ControlClick($var[$i10][1],'','','left',1,479, 25)    ; tat tab thua
					    If $i=3 Then ControlClick($var[$i10][1],'','','left',1,573, 25)    ; tat tab thua
					    If $i=2 Then ControlClick($var[$i10][1],'','','left',1,478, 23)    ; tat tab thua
					    If $i=1 Then ControlClick($var[$i10][1],'','','left',1,427, 26)    ; tat tab thua
                        If $i=1 Then ControlClick($var[$i10][1],'','','left',1,512, 27)   ; tat thong bao
					    Sleep(1000)
                      EndIf
					Next
				  EndIf

					WinClose('Install Google Translate extension to translate this page?')
					WinClose('Restore pages?')
					WinClose('Khôi phục trang')
					WinClose('Bạn có muốn khôi phục trang không?')
					Sleep(2000)
					WinClose('Default Client')
					ProcessClose('WerFault.exe')
					WinClose('Translated page')
					WinClose('Translated page from Vietnamses?')
				Return $dangnhap
	    EndFunc


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

