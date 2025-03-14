
#RequireAdmin
#include <ImageSearch.au3>
#include <MsgBoxConstants.au3>
#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#include <_HttpRequest.au3>
#include <AutoItConstants.au3>
#include <File.au3>
#include <Array.au3>
#include <String.au3>
#include <func3.au3>
#include <FileConstants.au3>
#include <MsgBoxConstants.au3>
#include <WinAPIFiles.au3>
#include <FileConstants.au3>
#include <MsgBoxConstants.au3>
#include <WinAPIFiles.au3>
HotKeySet("{esc}", "_Exit")
#RequireAdmin

Sleep(2000)
$i=1
$ip=1
HotKeySet("{f2}", "_Exit")
#Region ### START Koda GUI section ### Form=
$Form1 = GUICreate("nhom 0", 615, 437, 192, 124)
$Label1 = GUICtrlCreateLabel("link group view", 15, 16, 50, 35)
$Label1 = GUICtrlCreateLabel("link group sub", 15, 60, 50, 50)
;$group = GUICtrlCreateInput("", 88, 16, 200, 21)        ;link sub 3   https://anotepad.com/notes/rcpdta95
;$groupsub = GUICtrlCreateInput("", 88, 60, 200, 21)    ; lick sub 2  https://anotepad.com/notes/4sanp7d2
$Label2 = GUICtrlCreateLabel("$i so:", 15, 100, 44, 17)
$tongsosub = GUICtrlCreateInput("1", 88, 100, 200, 21)
$batdau=GUICtrlCreateButton("BAT DAU", 16, 216, 75, 25)
$Label1 = GUICtrlCreateLabel('vps so: ' , 300, 50, 100, 50)
$Label2 = GUICtrlCreateLabel("bat dau Gmail so", 300, 90, 100, 60)
$giatriA = GUICtrlCreateInput("", 400, 48, 100, 21)
$giatriB = GUICtrlCreateInput("1", 400, 88, 100, 21)
$Label3 = GUICtrlCreateLabel("chay bat buoc 2 ", 300, 130, 100, 30)
$giatriC = GUICtrlCreateInput("1", 400, 130, 100, 21)
$Label4 = GUICtrlCreateLabel("kiem tra trinh duyet(1 la co kiem tra)", 300, 165, 100, 30)
$giatriD = GUICtrlCreateInput("1", 400, 170, 100, 21)
$Label5 = GUICtrlCreateLabel("tru so may ban dau", 300, 210, 100, 30)
$giatriE = GUICtrlCreateInput("100", 400, 210, 100, 21)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###
Opt("SendKeyDelay",30)
While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $batdau
			Sleep(1000)
                  $checkprofilecuoicung=0
				   $checkGmailcuoicung=0
		While 1
			;   $groupkq=GUICtrlRead($group)
			 ;  $groupkqSub=GUICtrlRead($groupsub)
			   ;$tongsoviewkq=GUICtrlRead($tongsosub)
			   $vpsso=GUICtrlRead($giatriA)
			   $iso=GUICtrlRead($tongsosub)
			   $chayBatBuoc2=GUICtrlRead($giatriC)
			   $kiemtratrinhduyet=GUICtrlRead($giatriD)
			   $trusomaybandau=GUICtrlRead($giatriE)
        $vpsso=1
    If $chayBatBuoc2=1 Then
		For $i=$iso to 10
                $check=0
				FileDelete(@ScriptDir&'\gmailkhoiphucCoMatKhau.txt')
			   _requetGooGleDOC('https://docs.google.com/document/d/14wywJJt6GlHEfF3NQ0_Xr7wNrFGChNzvpl_0nZXTlKw/export?format=txt','gmailkhoiphucCoMatKhau.txt')

				  ToolTip('check dang nhap 	'&$i&'	phien ban:'&$phienban,0,0)
				_resetMang($i)
				_FakeIPOptionV6($i,$vpsso)
				_khoidongFireFox($i)

				WinSetState('Windows Security','',@SW_HIDE)
				_loginGmail($i)

				ControlClick('','','','left',1,600, 60)
				Sleep(1000)
				Send('^a')
				Sleep(500)
				Sleep(1000)
				Send('https://myaccount.google.com/')
				Sleep(2000)
				Send('{enter}')
				Sleep(5000)

				If $i=1 Then
					$pixcel=PixelSearch(18, 125,47, 153,0xFF0000)   ; xoa loi edge
					    If IsArray($pixcel) Then
						    Sleep(2000)
							Send('^+,')
							Sleep(1000)
						EndIf
				        Sleep(1000)
				EndIf
				Sleep(2000)
				ControlClick('','','','left',1,600, 60)
				Sleep(1000)
				Send('^a')
				Sleep(500)
				Sleep(1000)
				Send('https://myaccount.google.com/')
				Sleep(2000)
				Send('{enter}')
				Sleep(10000)
				For $i20=1 to 10
					$pixcel=PixelSearch(18, 130,206, 263,0xC2E7FF)
					Sleep(1000)
					$pixcel2=PixelSearch(15, 95,206, 263,0x34A853)
					Sleep(1000)
					If IsArray($pixcel) or IsArray($pixcel2) Then
						$check=1
						$i20=17
						$i2=2
					EndIf
						Sleep(1000)
				Next

				;MsgBox(0,0,$check)

                $check2=1

				If $check=0 Then

					_closeTrinhDuyet($i)
					_resetMang($i)
					_FakeIPOptionV6($i,$vpsso)
					_khoidongFireFox($i)

                    _loginGmail($i)

					ControlClick('','','','left',1,600, 60)
				    Sleep(1000)
				    Send('^a')
				    Sleep(500)
				    Sleep(1000)
				    Send('https://myaccount.google.com/')
				    Sleep(2000)
				    Send('{enter}')
				    Sleep(10000)
				    For $i20=1 to 10
					    $pixcel=PixelSearch(18, 130,206, 263,0xC2E7FF)
					    Sleep(1000)
					    $pixcel2=PixelSearch(18, 130,206, 263,0x3E88F4)
					    Sleep(1000)
					    If IsArray($pixcel) or IsArray($pixcel2) Then
						    $check=1
						    $i20=17
						    $i2=2
					    EndIf
						Sleep(1000)
				    Next

				EndIf

				$e=FileReadLine(@ScriptDir&'\Gmail.txt',$i)

				If $check=1 Then
                        $e=FileReadLine(@ScriptDir&'\Gmail.txt',$i)    ;l?y ID , pass, mail kh𩠰h?c
						If StringLen($e)<10 Then
							MsgBox(0,0,'khong co gmail',1)
							;_GetDOSOutput('shutdown -r -t 0')

						EndIf
						   $cacgiatri=StringSplit($e,'	')
	                    For $i11=1 to $cacgiatri[0]
	                       If IsString($cacgiatri[$i11]) Then FileWriteLine(@ScriptDir&'\Gmailtest.txt',$cacgiatri[$i11])
						   ;MsgBox(0,0,'ok')
						Next
                           $f=FileReadLine(@ScriptDir&'\Gmailtest.txt',1)
                           $g=FileReadLine(@ScriptDir&'\Gmailtest.txt',2)
						   $h=FileReadLine(@ScriptDir&'\Gmailtest.txt',3)
						   $CheckKey2fa=FileReadLine(@ScriptDir&'\Gmailtest.txt',4)
						   FileDelete(@ScriptDir&'\Gmailtest.txt')
					If 	$CheckKey2fa='DangNhapThanhCong' Then

                        MouseClick('left',600,60,1,20)
						Sleep(2000)
						Send('https://myaccount.google.com/two-step-verification/authenticator')
						Sleep(1000)
						Send('{enter}')
						Sleep(7000)
						WinMove('','',0,0,1366,768)
				        Sleep(2000)
						 $checklink=0
						For $i20=1 to 10
				            $pixcel=PixelSearch(16, 87,154, 170,0x4285F4)  ;0x114AA7
							$pixcel2=PixelSearch(18, 130,206,190,0x3E88F4)
					        If IsArray($pixcel) Or IsArray($pixcel2) Then
								$i20=20
							     Sleep(2000)
								 $checklink=1
							EndIf
				        Next

						MouseMove(500,500)
						$pixcel=PixelSearch(1030,485,1233,700,0x0B57D0)  ;0x114AA7
						Sleep(1000)
						If IsArray($pixcel) Then MouseClick('left',$pixcel[0]+5,$pixcel[1]+5,1,20)
						Sleep(5000)

						If $checklink=0 Then   ; looix can doi Mat khau
							Send($f)
							Sleep(1000)
							MouseMove(500,500)
						    $pixcel=PixelSearch(1030,485,1233,700,0x0B57D0)  ;0x114AA7
						    Sleep(1000)
						    If IsArray($pixcel) Then MouseClick('left',$pixcel[0]+5,$pixcel[1]+5,1,20)
						    Sleep(7000)
							Send($g)
							Sleep(2000)
							MouseMove(500,500)
						    $pixcel=PixelSearch(1030,485,1233,700,0x0B57D0)  ;0x114AA7
						    Sleep(1000)
						    If IsArray($pixcel) Then MouseClick('left',$pixcel[0]+5,$pixcel[1]+5,1,20)
						    Sleep(7000)
						EndIf

						$pixcel=PixelSearch(16, 87,154, 170,0x4285F4)  ;0x114AA7
						$pixcel2=PixelSearch(18, 130,206,190,0x3E88F4)
						If not IsArray($pixcel) and not IsArray($pixcel2) Then
							Sleep(1000)
							MouseMove(500,500)
							$pixcel=PixelSearch(1030,485,1233,700,0x0B57D0)  ;0x114AA7
                            Sleep(1000)
                            If IsArray($pixcel) Then MouseClick('left',$pixcel[0]+5,$pixcel[1]+5,1,20)
							Sleep(5000)
							MouseMove(500,500)
							$pixcel=PixelSearch(1030,485,1233,700,0x0B57D0)  ;0x114AA7
                            Sleep(1000)
                            If IsArray($pixcel) Then MouseClick('left',$pixcel[0]+5,$pixcel[1]+5,1,20)
							Sleep(5000)
							MouseMove(500,500)
							$pixcel=PixelSearch(1030,485,1233,700,0x0B57D0)  ;0x114AA7
                            Sleep(1000)
                            If IsArray($pixcel) Then MouseClick('left',$pixcel[0]+5,$pixcel[1]+5,1,20)
							Sleep(5000)
							Send('{enter}')
							Sleep(5000)
							Send('{enter}')
							Sleep(5000)
							Send($g)
							Sleep(1000)
							Send('{enter}')
							Sleep(3000)
							MouseMove(500,500)
							$pixcel=PixelSearch(1030,485,1233,700,0x0B57D0)  ;0x114AA7
                            Sleep(1000)
                            If IsArray($pixcel) Then MouseClick('left',$pixcel[0]+5,$pixcel[1]+5,1,20)
							Sleep(5000)
							MouseMove(500,500)
							$pixcel=PixelSearch(1030,485,1233,700,0x0B57D0)  ;0x114AA7
                            Sleep(1000)
                            If IsArray($pixcel) Then MouseClick('left',$pixcel[0]+5,$pixcel[1]+5,1,20)
							Sleep(5000)
							Send($g)
							Sleep(1000)
							Send('{enter}')
							Sleep(7000)

                            MouseClick('left',617, 250,1,20)
						    Sleep(2000)
							Send('{tab}')
							Sleep(2000)
							Send('{tab}')
							Sleep(2000)
							Send('{tab}')
							Sleep(2000)
							Send('{tab}')
							Sleep(2000)
							Send('{tab}')
							Sleep(2000)
							Send('{enter}')
							Sleep(5000)


                                MouseClick('left',617, 250,1,20)
							    Sleep(2000)
							    Send('{tab}')
							    Sleep(2000)
							    Send('{tab}')
							    Sleep(2000)
							    Send($h)
							    Sleep(2000)
							    MouseMove(500,500)
							    $pixcel=PixelSearch(1030,450,1233,700,0x0B57D0)  ;0x114AA7
                                Sleep(1000)
                                If IsArray($pixcel) Then MouseClick('left',$pixcel[0]+5,$pixcel[1]+5,1,20)
                                Sleep(5000)

								MouseClick('left',617, 250,1,20)
							    Sleep(2000)
							    Send('{tab}')
							    Sleep(2000)
							    Send('{tab}')
							    Sleep(2000)
							    Send($h)
							    Sleep(2000)
							    MouseMove(500,500)
							    $pixcel=PixelSearch(1030,450,1233,700,0x0B57D0)  ;0x114AA7
                                Sleep(1000)
                                If IsArray($pixcel) Then MouseClick('left',$pixcel[0]+5,$pixcel[1]+5,1,20)
                                Sleep(5000)

								MouseClick('left',617, 250,1,20)
							    Sleep(2000)
							    Send('{tab}')
							    Sleep(2000)
							    Send('{tab}')
							    Sleep(2000)
							    Send($h)
							    Sleep(2000)
							    MouseMove(500,500)
							    $pixcel=PixelSearch(1030,450,1233,700,0x0B57D0)  ;0x114AA7
                                Sleep(1000)
                                If IsArray($pixcel) Then MouseClick('left',$pixcel[0]+5,$pixcel[1]+5,1,20)
								Sleep(5000)

								MouseClick('left',617, 250,1,20)
							    Sleep(2000)
							    Send('{tab}')
							    Sleep(2000)
							    Send('{tab}')
							    Sleep(2000)
							    Send($h)
							    Sleep(2000)
							    MouseMove(500,500)
							    $pixcel=PixelSearch(1030,450,1233,700,0x0B57D0)  ;0x114AA7
                                Sleep(1000)
                                If IsArray($pixcel) Then MouseClick('left',$pixcel[0]+5,$pixcel[1]+5,1,20)
                                Sleep(5000)

								Sleep(10000)
                            $pixcel=PixelSearch(16, 87,154, 170,0x4285F4)  ;0x114AA7
						    $pixcel2=PixelSearch(18, 130,206,190,0x3E88F4)

							If IsArray($pixcel) Or IsArray($pixcel2) Then
                                $check=1
                            Else
							    Sleep(3000)
							    $check=_LayCodeCuoi($h,$i)
							    If $check=1 Then $e=$e&'	'&"Buichung"&@MDAY&@MON
							    Sleep(5000)
							EndIf

						EndIf
					  If $check=1 Then

						MouseClick('left',600,60,1,20)
						Sleep(2000)
						Send('https://myaccount.google.com/two-step-verification/authenticator')
						Sleep(1000)
						Send('{enter}')
						Sleep(10000)
						Send($g)
						Sleep(1000)
						Send('{enter}')
						Sleep(10000)

						For $i20=1 to 10
							$pixcel=PixelSearch(16, 87,154, 170,0x4285F4)  ;0x114AA7
						    $pixcel2=PixelSearch(18, 130,206,190,0xFBBC05)
						    If IsArray($pixcel) Or IsArray($pixcel2) Then $i20=10
                            Sleep(2000)
						Next

                        Sleep(3000)
						MouseClick('left',750,500,1,20)
						Sleep(2000)
						MouseClick('left',394, 277,1,20)
						Sleep(2000)
						Send('{tab}')
						Sleep(2000)
						Send('{tab}')
						Sleep(2000)
						Send('{tab}')
						Sleep(2000)
						Send('{enter}')
						Sleep(7000)
						Send('{tab}')
						Sleep(2000)
						Send('{tab}')
						Sleep(2000)
						Send('{enter}')
						Sleep(7000)
						MouseClick('left',480, 315,3,20)
						Sleep(1500)
						Send('^c')
						Sleep(500)
						$Key2fa=ClipGet()
						Sleep(1000)
						If StringLen($Key2fa)<>40 and StringLen($Key2fa)<>41 Then
							MouseClick('left',480, 337,3,20)
						    Sleep(1500)
						    Send('^c')
						    Sleep(500)
						    $Key2fa=ClipGet()
						    Sleep(1000)
                            If StringLen($Key2fa)<>40 and StringLen($Key2fa)<>41 Then
                                MouseClick('left',480,294,3,20)
						        Sleep(1500)
						        Send('^c')
						        Sleep(500)
						        $Key2fa=ClipGet()
						        Sleep(1000)
								If StringLen($Key2fa)<>40 and StringLen($Key2fa)<>41 Then
									MouseClick('left',480,356,3,20)
						            Sleep(1500)
						            Send('^c')
						            Sleep(500)
						            $Key2fa=ClipGet()
						            Sleep(1000)
									If StringLen($Key2fa)<>40 and StringLen($Key2fa)<>41 Then
										MouseClick('left',512, 315,3,20)
						                Sleep(1500)
						                Send('^c')
						                Sleep(500)
						                $Key2fa=ClipGet()
						                Sleep(1000)
									EndIf
								EndIf
							EndIf
						EndIf

						Sleep(1000)
						Send('{tab}')
						Sleep(1000)
						Send('{enter}')
						Sleep(2000)
						Sleep(1000)
						Run('C:\Users\'&@UserName&'\Desktop\WinAuth')
						Sleep(5000)
						WinActivate('WinAuth')
						Sleep(1000)
						WinMove('','',0,0)
				        Sleep(2000)
				        For $i20=1 to 3
				            $pixcel=PixelSearch(10, 130,110, 190,0x00ABDA)  ; xoa Auth cu
				            If IsArray($pixcel) Then
					            MouseClick('right',64,91,1,20)
				                Sleep(2000)
					            Send('{tab}')
				                Sleep(2000)
					            Send('{tab}')
				                Sleep(2000)
						        Send('{tab}')
				                Sleep(2000)
					            Send('{tab}')
				                Sleep(2000)
					            Send('{tab}')
				                Sleep(2000)
					            Send('{enter}')
				                Sleep(2000)
						        Send('{tab}')
				                Sleep(2000)
					            Send('{enter}')
						        Sleep(4000)
					        Else
						        $i20=3
							EndIf
				        Next

						WinActivate('WinAuth')

				        Sleep(1000)
				        MouseClick('left',50,150,1,20)
						Sleep(3000)
						Send('{tab}')
				        Sleep(3000)
				        Send('{enter}')
                        Sleep(5000)
				        Send('{tab}')
				        Sleep(3000)
				        Send($Key2fa)
				        Sleep(3000)
				        Send('{enter}')
				        Sleep(5000)
				        Send('{enter}')
				        Sleep(7000)

						For $i20=1 to 10
				            $checkProtection=WinExists('Protection')
					        If $checkProtection=1 Then
								$i20=10
								Send('{enter}')
				                Sleep(3000)
				                Send('{enter}')
				                Sleep(3000)
			                 	MouseClick('left',776,506,1,20)
				                Sleep(3000)
				                MouseClick('left',810,655,1,20)
					            Sleep(1000)
					            WinMove('Protection','',0,0)
					        	Sleep(2000)
								ControlClick('WinAuth','OK',2,'left',1,34, 11)
                                Sleep(2000)
				                MouseClick('left',752, 16,1,20)
				                Sleep(1000)
					        	WinClose('Protection')
					        	Sleep(1000)

							EndIf
						    Sleep(2000)
				        Next


				        WinActivate('WinAuth')
				        Sleep(1000)
						$pixcel=PixelSearch(10, 130,110, 190,0x00ABDA)
						If IsArray($pixcel) Then
							MouseClick('left',365, 158,1,20)
				            Sleep(2000)
						    MouseClick('right',370, 158,1,20)

						Else

							MouseClick('left',364,93,1,20)
				            Sleep(2000)
						    MouseClick('right',364,93,1,20)
						EndIf

				        Sleep(2000)
				        Send('{tab}')
				        Sleep(2000)
				        Send('{tab}')
						Sleep(2000)
				        Send('{tab}')
				        Sleep(2000)
				        Send('{enter}')
				        Sleep(5000)
						$code=ClipGet()
						Sleep(1000)
						MouseClick('left',682, 499,1,20)
						Sleep(3000)
						Send('{tab}')
						Sleep(3000)
				        Send('{tab}')
				        Sleep(3000)
						Send($code)
						Sleep(1000)
						Send('{enter}')
						Sleep(10000)
						Send($g)
						Sleep(1000)
						Send('{enter}')
						Sleep(10000)

						MouseClick('left',501, 304,1,20)   ; bat buoc 2
						Sleep(1000)
						Send('{tab}')
						Sleep(1000)
						Send('{enter}')
						Sleep(7000)
						MouseClick('left',501, 291,1,20)
						Sleep(2000)
				        Send('{tab}')
				        Sleep(2000)
				        Send('{tab}')
						Sleep(2000)
				        Send('{tab}')
				        Sleep(2000)
				        Send('{enter}')
						Sleep(5000)
						Send('{tab}')
				        Sleep(2000)
				        Send('{tab}')
						Sleep(2000)
				        Send('{tab}')
				        Sleep(2000)
				        Send('{enter}')
						Sleep(7000)
						Send('{tab}')
						Sleep(2000)
				        Send('{tab}')
				        Sleep(2000)
				        Send('{enter}')
						Sleep(7000)

						$Key2fa=StringReplace($Key2fa,' ','|')

						$pixcel=PixelSearch(569, 399,940, 673,0x34A853)  ;kiem tra
						If IsArray($pixcel) Then
                            $Key2fa=$Key2fa&'	BatBuoc2ThanhCong'

						Else
							$Key2fa=$Key2fa&'	BatBuoc2ThatBai'

                        EndIf

						MouseClick('left',898, 653,1,20)
						Sleep(2000)
						$e=$e&'	'&$Key2fa

                        WinClose('WinAuth')
				        Sleep(1000)

                      EndIf

					EndIf

					FileWriteLine(@ScriptDir&'\KetQuaDangNhap.txt',$e&'	DangNhapThanhCong'&'	'&$i)
				Else
                    FileWriteLine(@ScriptDir&'\KetQuaDangNhap.txt',$e&'	DangNhapThatBai'&'	'&$i)
				EndIf



				_closeTrinhDuyet($i)

		Next
        Sleep(2000)
	EndIf
		;If $vpsso=1 or $vpsso=6 or $vpsso=11 or $vpsso=16 or $vpsso=21 or $vpsso=26 or $vpsso=31 or $vpsso=36 or $vpsso=41 or $vpsso=46 or $vpsso=51 or $vpsso=56 or $vpsso=61 or $vpsso=66 or $vpsso=71 or $vpsso=76 or $vpsso=81 or $vpsso=86 or $vpsso=91 or $vpsso=99  Then

			$dataIP=FileRead(@ScriptDir&'\KetQuaDangNhap.txt')
			_postdataIPGmail($dataIP,'https://anotepad.com/note/access/6tfiaiej','https://anotepad.com/notes/6tfiaiej')

		;EndIf

        MsgBox(0,0,'ok')
		Exit

        WEnd     ;k?t thúc vòng l?p vô t?n
	EndSwitch
WEnd



				$dataIP=FileRead(@ScriptDir&'\KetQuaDangNhap.txt')
			 _postdataIPGmail($dataIP,'https://anotepad.com/note/access/6tfiaiej','https://anotepad.com/notes/6tfiaiej')
; Hàm gửi tin nhắn đến Telegram
Func SendToTelegram($sToken, $sChatID, $sMessage)
    ; URL API Telegram
    Local $sURL = "https://api.telegram.org/bot" & $sToken & "/sendMessage?chat_id=" & $sChatID & "&text=" & $sMessage

    ; Gửi yêu cầu HTTP
    Local $oHTTP = ObjCreate("WinHttp.WinHttpRequest.5.1")
    $oHTTP.Open("GET", $sURL, False)
    $oHTTP.Send()

    ; Kiểm tra phản hồi từ API
    If $oHTTP.Status = 200 Then
        MsgBox(64, "Thông báo", "Gửi thành công!",5)
    Else
        MsgBox(16, "Lỗi", "Gửi thất bại! HTTP Status: " & $oHTTP.Status,5)
    EndIf
EndFunc

Exit



   ; _GetDOSOutput('start chrome "https://github.com/buichung12/data/raw/main/csbphone%20nhom%204%20-%2020profile.exe"')

;_requetGooGleDOC('https://docs.google.com/document/d/1B_i5pSFoTGIAweoiqG7Hx1-AdWRkGmBbq7FJAe82AeA/export?format=txt','checkUpdateCode.txt')
;Exit


