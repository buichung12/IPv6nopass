
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
;#include <func3.au3>
#include <FileConstants.au3>
#include <MsgBoxConstants.au3>
#include <WinAPIFiles.au3>
#include <FileConstants.au3>
#include <MsgBoxConstants.au3>
#include <WinAPIFiles.au3>
HotKeySet("{esc}", "_Exit")
#Region ### START Koda GUI section ### Form=Trình tạo mới hồ sơ
$Form1 = GUICreate("Form1", 615, 437, 192, 124)
$Label1 = GUICtrlCreateLabel("tool doi MK Gmail-gmal Khoi phuc", 16, 300, 300,300)
$Label2 = GUICtrlCreateLabel("so luong", 16, 64, 44, 17)
$tongsosub = GUICtrlCreateInput("100", 88, 64, 73, 21)
$batdau=GUICtrlCreateButton("BAT DAU", 16, 216, 75, 25)
$Label2 = GUICtrlCreateLabel("trinh duyet", 300, 90,100, 30)
$Label3 = GUICtrlCreateLabel("profile", 300, 135, 100, 50)
$Label4 = GUICtrlCreateLabel("Tạo 100 kênh phụ", 300, 170, 100, 50)
$giatriB = GUICtrlCreateInput("1", 400, 88, 113, 21)
$giatriC = GUICtrlCreateInput("1", 400, 130, 113, 21)
$giatriD = GUICtrlCreateInput("0", 400, 165, 113, 21)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###

While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $batdau
			Sleep(1000)

		While 1

			    $tongsoviewkq=GUICtrlRead($tongsosub)
			    ;$coverrykhong=GUICtrlRead($giatriA)
			    $b=GUICtrlRead($giatriB)
			    $profile=GUICtrlRead($giatriC)
				$TaoKenhPhu=GUICtrlRead($giatriD)

               WinSetState('Form1','',@SW_MINIMIZE)
			  ; $somay=GUICtrlRead($giatriA)
                $i2=0
				$vpsso=1
			For $i=$b to 10

                ToolTip('dang nhap gmail:'&$i&'	profile:'&$profile,0,0)

				$e=FileReadLine(@ScriptDir&'\Gmail.txt',$i)
				$cacgiatri=StringSplit($e,'	')
				For $i11=1 to $cacgiatri[0]
					If IsString($cacgiatri[$i11]) Then FileWriteLine(@ScriptDir&'\Gmailtest.txt',$cacgiatri[$i11])

				Next
				$f=FileReadLine(@ScriptDir&'\Gmailtest.txt',1)
				$g=FileReadLine(@ScriptDir&'\Gmailtest.txt',2)
				$h=FileReadLine(@ScriptDir&'\Gmailtest.txt',3)
				$sokenh=FileReadLine(@ScriptDir&'\Gmailtest.txt',4)
				FileDelete(@ScriptDir&'\Gmailtest.txt')

                _FakeIPOptionV6($i,$vpsso)
                _khoidongFireFox($i,$profile)
				$check=_loginGmail($i)
                $sokenhtaoduoc=0
				If $TaoKenhPhu=1 Then
				  If $check=1 Then
					$sokenhtaoduoc=1
					_taokenhphu($i,$sokenh)
					MsgBox(0,0,'chờ tạo kênh phụ ',300)
				    $sokenhtaoduoc=_Demkenhphu()
				  EndIf

			      $sokenhvaGmail=$sokenhtaoduoc&'	'&$e
		          FileWriteLine(@ScriptDir&'\sokenhtaoduoc.txt',$sokenhvaGmail&'	'&$i)
                EndIf
				_closeTrinhDuyet($i)

				if $check=1 Then
					FileWriteLine(@ScriptDir&'\Ket Qua Check Dang nhap.txt',$e&'	DangNhapThanhCong'&'	'&$i)
				Else
                    FileWriteLine(@ScriptDir&'\Ket Qua Check Dang nhap.txt',$e&'	DangNhapThatBai'&'	'&$i)
				EndIf

            Next


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
    Func _FakeIPOptionV6($i,$vpsso)

				For $icheck=1 to 2
					  For $i20=1 to 2
			            ProcessClose('WerFault.exe')
                         $check=0
				        ShellExecute('C:\Users\'&@UserName&'\Desktop\csFireFox - 10 sea\Internet Options - Shortcut.lnk')
				        Sleep(4000)
						$a=WinExists('Internet Properties')
		                If $a<>1 Then
							ShellExecute('C:\Users\'&@UserName&'\Desktop\csFireFox - 10 sea\Internet Options - Shortcut.lnk')
							Sleep(3000)
						EndIf

						WinMove('Internet Properties','',0,0)
						Sleep(2000)
						ControlClick('Internet Properties','',"[CLASS:SysTabControl32; INSTANCE:1]",'left',1,231, 12)
				        Sleep(3000)
						ControlClick('Internet Properties','',"[CLASS:Button; INSTANCE:10]")
				        Sleep(3000)
						WinMove('Local Area Network (LAN) Settings','',0,0)
						Sleep(3000)

						$pixcel=ControlCommand('Local Area Network (LAN) Settings','Use a pro&xy server for your LAN (These settings will not apply to dial-up or VPN connections).','Button6',"IsChecked", "")
						If $pixcel=0 Then
							ControlClick('Local Area Network (LAN) Settings','',"[CLASS:Button; INSTANCE:6]")
							Sleep(2000)
						EndIf
						Sleep(3000)
						$pixcel=ControlCommand('Local Area Network (LAN) Settings','Use a pro&xy server for your LAN (These settings will not apply to dial-up or VPN connections).','Button8',"IsChecked", "")
						If $pixcel=0 Then
							ControlClick('Local Area Network (LAN) Settings','',"[CLASS:Button; INSTANCE:8]")
							Sleep(2000)
						EndIf
						Sleep(3000)
						$pixcel=ControlCommand('Local Area Network (LAN) Settings','Use a pro&xy server for your LAN (These settings will not apply to dial-up or VPN connections).','Button6',"IsChecked", "")
						If $pixcel=0 Then
							ControlClick('Local Area Network (LAN) Settings','',"[CLASS:Button; INSTANCE:6]")
							Sleep(2000)
						EndIf
						Sleep(3000)
						$pixcel=ControlCommand('Local Area Network (LAN) Settings','Use a pro&xy server for your LAN (These settings will not apply to dial-up or VPN connections).','Button8',"IsChecked", "")
						If $pixcel=0 Then
							ControlClick('Local Area Network (LAN) Settings','',"[CLASS:Button; INSTANCE:8]")
							Sleep(2000)
						EndIf

						If WinExists("Tabbed Browsing Settings") Or WinExists("Colors") Then
                            WinClose('Local Area Network (LAN) Settings')
				            WinClose('Internet Properties')
							WinClose('Colors')
							WinClose('Tabbed Browsing Settings')
							WinClose('Local Area Network (LAN) Settings')
				            WinClose('Internet Properties')
							WinClose('Colors')
							WinClose('Tabbed Browsing Settings')

						Else
							$i20=2

						EndIf
                      Next

						$IPtho=FileReadLine(@ScriptDir&'\Keytinsoft2.txt',$i)    ; da loc lay 10 IP-- dung có doi file .txt
						$IP=1
						$port=1
						Sleep(100)
						$IPtho2=StringSplit($IPtho,':')
						If IsArray($IPtho2) Then
							If $IPtho2[0]=4 Then
								$ID=$IPtho2[3]
								$Pass=$IPtho2[4]
								$IP=$IPtho2[1]
								$port=$IPtho2[2]
							EndIf

						EndIf

					    If IsArray($IPtho2) Then

						   ProcessClose('WerFault.exe')
                           Sleep(1000)
						   ControlClick('Local Area Network (LAN) Settings','',"[CLASS:Edit; INSTANCE:2]")
						   Sleep(2000)
						   ControlSend('Local Area Network (LAN) Settings','','','^a')
                           Sleep(2000)
						   ControlSend('Local Area Network (LAN) Settings','','',$IP)
						   Sleep(2000)
						   ControlClick('Local Area Network (LAN) Settings','',"[CLASS:Edit; INSTANCE:3]")
						   Sleep(2000)
						   ControlSend('Local Area Network (LAN) Settings','','','^a')
						   Sleep(2000)
						   ControlSend('Local Area Network (LAN) Settings','','',$port)
						   Sleep(2000)
					       ControlClick('Local Area Network (LAN) Settings','',"[CLASS:Button; INSTANCE:12]")
				           Sleep(2000)
						   WinClose('Local Area Network (LAN) Settings')
				           WinClose('Internet Properties')

						   ProcessClose('WerFault.exe')

					    EndIf

                        If IsArray($IPtho2) Then
                              $check=1
							  $icheck=2
						EndIf

						;WinClose('Windows Security')
				        Sleep(100)
				        WinClose('Authentication Required - Mozilla Firefox')
				        Sleep(100)
				        WinClose('Authentication Required - FlashPeak SlimBrowser')
				        Sleep(100)
				        WinClose('Yêu cầu xác minh - Mozilla Firefox')
                        ;Sleep(5000)
						Sleep(1000)



				Next
			Return $check

		EndFunc

 Func _khoidongFireFox($i,$profile)
			        $dangnhap=0

			        WinClose('trinh duyet')
					WinClose('csFireFox - 10 sea')
			        WinClose('Proxy Client Tinsoft')
				    Send('^w')
					Sleep(1000)
                    WinClose('Server Manager')
					Sleep(2000)
					If $profile=1 Then $profile="Default"

                    WinClose('Proxy Client Tinsoft')
					If $i=1 Then $linkblu=('C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe'&' --profile-directory="'&$profile&'"')
					If $i=2 Then $linkblu='C:\Program Files\BraveSoftware\Brave-Browser\Application\brave.exe'&' --profile-directory="'&$profile&'"'
					;If $i=3 Then $linkblu='C:\Users\'&@UserName&'\AppData\Local\Maxthon\Application\Maxthon.exe'
					If $i=3 Then $linkblu='C:\Program Files (x86)\CocCoc\Browser\Application\browser.exe'&' --profile-directory="'&$profile&'"'
					If $i=4 Then $linkblu='C:\portapps\brave-portable\brave-portable.exe'&' --profile-directory="'&$profile&'"'
					;If $i=4 Then $linkblu='C:\Program Files (x86)\AVAST Software\Browser\Application\AvastBrowser.exe'
					If $i=5 Then $linkblu='C:\Users\'&@UserName&'\AppData\Local\Programs\Opera\launcher.exe'&' --profile-directory="'&$profile&'"'
					;If $i=5 Then $linkblu='C:\Users\'&@UserName&'\AppData\Local\Yandex\YandexBrowser\Application\browser.exe'
					If $i=6 Then $linkblu="C:\Users\"&@UserName&"\Desktop\trinh duyet\FirefoxPortable\FirefoxPortable.exe"&' -profile '&$profile
					If $i=7 Then $linkblu='"C:\Program Files\Mozilla Firefox\firefox.exe" -p '&$profile
					;If $i=8 Then $linkblu="C:\Program Files (x86)\SeaMonkey\seamonkey.exe"
					If $i=8 Then $linkblu='C:\Users\buichung\AppData\Local\Chromium\Application\chrome.exe --user-data-dir="C:\ChromiumProfiles\Profile"'&$profile



					If $i=9 Then
						If FileExists('C:\Program Files (x86)\SlimBrowser'&$profile)=0 Then
						   ; DirCopy("C:\Users\"&@UserName&"\Desktop\SlimBrowser",'C:\Program Files (x86)\SlimBrowser'&$profile,1)
							DirCopy("C:\Users\admin\Desktop\SlimBrowser",'C:\Program Files (x86)\SlimBrowser'&$profile,1)
							DirCopy("C:\Users\buichung\Desktop\SlimBrowser",'C:\Program Files (x86)\SlimBrowser'&$profile,1)
						    Sleep(20000)
						EndIf
						$linkblu='C:\Program Files (x86)\SlimBrowser'&$profile&'\slimbrowser.exe'
					EndIf
					;If $i=10 Then $linkblu="C:\Program Files (x86)\Globus\PrivacyBrowser\GlobusPrivacyBrowser.exe"
					If $i=10 Then
						$linkblu='C:\Users\'&@UserName&'\AppData\Local\Google\Chrome\Application\chrome.exe --profile-directory='&$profile
						Sleep(2000)
					EndIf
					Sleep(2000)
					Run( $linkblu,'')
					Sleep(5000)


	                If $i=1 Then
						$linkblu='C:\Program Files\Microsoft\Edge\Application\msedge.exe'&' --profile-directory="'&$profile&'"'
						Run( $linkblu,'')
					EndIf
					If $i=7 Then
						$linkblu='C:\Program Files\Mozilla Firefox\firefox.exe'&' --profile-directory="'&$profile&'"'
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
					WinClose('Ad blocker')
					Sleep(1000)

					If $i=10 Then
						MouseClick('left',669, 318,1,20)
	                    Sleep(2000)
						Send('{tab}')
						Sleep(2000)
						Send('{tab}')
						Sleep(2000)
						Send('{tab}')
						Sleep(2000)
						Send('{enter}')
						Sleep(2000)

					EndIf

                    If $i=7 Then
				 	  If WinExists('Firefox - Chọn hồ sơ người dùng')=1 Then
	                    WinMove('Firefox - Chọn hồ sơ người dùng','',0,0)
	                    Sleep(2000)
	                    MouseClick('left',81, 108,1,20)
	                    Sleep(2000)
						MouseClick('left',405, 389,1,20)
                     	Sleep(2000)
	                    ;MouseClick('left',221, 142,1,20)
						;Sleep(2000)
                    	;Send('^a')
						;Sleep(2000)
                    	Send($profile)
                     	Sleep(2000)
                     	MouseClick('left',405, 389,1,20)
                    	Sleep(2000)
                       	MouseClick('left',208, 310,1,20)
						Sleep(2000)

                      EndIf
					EndIf



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

Func _loginGmail($i)
	                      ;ToolTip('dang nhap Gmail so:'&$i&'	phien ban:'&$phienban,0,0)
						   $e=FileReadLine(@ScriptDir&'\Gmail.txt',$i)    ;l?y ID , pass, mail kh𩠰h?c
						   If StringLen($e)<10 Then
							   MsgBox(0,0,'khong co gmail',1)
							   _;GetDOSOutput('shutdown -r -t 0')

						   EndIf
						   $cacgiatri=StringSplit($e,'	')
	                    For $i11=1 to $cacgiatri[0]
	                       If IsString($cacgiatri[$i11]) Then FileWriteLine(@ScriptDir&'\Gmailtest.txt',$cacgiatri[$i11])
						   ;MsgBox(0,0,'ok')
						Next
                           $f=FileReadLine(@ScriptDir&'\Gmailtest.txt',1)
                           $g=FileReadLine(@ScriptDir&'\Gmailtest.txt',2)
						   $h=FileReadLine(@ScriptDir&'\Gmailtest.txt',3)
						   $sdt=FileReadLine(@ScriptDir&'\Gmailtest.txt',4)
						   FileDelete(@ScriptDir&'\Gmailtest.txt')

				WinClose('Restore pages?')
				WinClose('Restore pages')

	            WinMove('','',0,0,1366,768)
				Sleep(2000)
				;_dienIpPort($i)
                MouseClick('left',1280, 129,1,20)
			    $check=0
                MouseClick('left',500, 60,1,20)
				;If $i=8 Then MouseClick('left',800, 75,1,20)
                Sleep(2000)
				Send('^a')
				Sleep(2000)
				ClipPut('https://www.youtube.com/account')
			    Sleep(200)
			    Send('^v')
				Sleep(1000)
				Send('{enter}')
				Sleep(7000)
				Send('^0')
				Sleep(2000)
				MouseClick('left',1280, 160,1,20)
				Sleep(1000)
				MouseClick('left',1280, 129,1,20)
				Sleep(1000)
				MouseClick('left',1280, 118,20)
				Sleep(1000)
				MouseClick('left',1280, 160,1,20)
				Sleep(1000)
				MouseClick('left',650,350,1,20)
				Sleep(1000)
				Send('{tab}')
				Sleep(2000)

				For $i20=1 to 10
				    $pixcel=PixelSearch(616, 326,1218, 679,0x0F49A6)  ;0x114AA7
					If IsArray($pixcel) Then $i20=20
					Sleep(1000)
				Next

				If not IsArray($pixcel) Then
					$pixcel=PixelSearch(616, 326,1218, 679,0x114AA7)  ;0x114AA7
					If IsArray($pixcel) Then $i20=20
					Sleep(1000)
				EndIf

				If not IsArray($pixcel) Then
					MouseClick('left',650,350,1,20)
				    Sleep(1000)
					Send('{tab}')
				    Sleep(2000)
					For $i20=1 to 10
				        $pixcel=PixelSearch(616, 326,1218, 679,0x0B57D0)
					    If IsArray($pixcel) Then $i20=10
					    Sleep(1000)
				    Next
				EndIf
				Sleep(1000)

				If $i=2 Or $i=4 Then                      ; loi khong load duoc trinh duyet brive
				    MouseClick('left',850, 273,1,20)
					Sleep(2000)
				EndIf
				If $i=6  Then
				    MouseClick('left',990,110,1,20)
					Sleep(7000)
                EndIf
				If $i=9  Then
				    MouseClick('left',933,150,1,20)
					Sleep(7000)
                EndIf
				If $i=10 or $i=8  Then
				    MouseClick('left',1039,155,1,20)
					Sleep(7000)
                EndIf
				If $i=1  Then
				    MouseClick('left',650,270,1,20)
					Sleep(7000)
                EndIf

				MouseClick('left',1280,163,1,20)  ;tat thong bao update
				Sleep(2000)
				MouseClick('left',1280,120,1,20)  ;tat thong bao update
				Sleep(3000)
				MouseClick('left',1016, 363,1,20)
				Sleep(2000)
				MouseClick('left',650,350,1,20)
				Sleep(3000)
				Send('{tab}')
				Sleep(2000)
				Send($f,1)
				Sleep(1500)
				Send('{enter}')
				Sleep(15000)
				For $i20=1 to 20
				    $pixcel=PixelSearch(322, 259,1000, 527,0x0B57D0)
					If IsArray($pixcel) Then
						$i20=20
				        Sleep(1000)
					EndIf
					Sleep(1000)
				Next
				Sleep(5000)
				MouseClick('left',1016, 363,1,20)
				Sleep(3000)
				$pixcel=PixelSearch(1050, 462,1157, 611,0x0B57D0)
					If IsArray($pixcel)  Then
						$i20=20
				        Sleep(1000)
						MouseClick('left',$pixcel[0]+5,$pixcel[1]+5,1,20)
				        Sleep(10000)
					EndIf
				$pixcel=PixelSearch(1050, 462,1157, 611,0x114AA7)
					If IsArray($pixcel)  Then
						$i20=20
				        Sleep(1000)
						MouseClick('left',$pixcel[0]+5,$pixcel[1]+5,1,20)
				        Sleep(10000)
					EndIf
				Sleep(2000)
				MouseClick('left',650, 300,1,20)
				Sleep(3000)
				Send('{tab}')
				Sleep(2000)
				Send('{tab}')
				Sleep(3000)
				Send($g,1)
				Sleep(1500)
				Send('{enter}')
                Sleep(10000)
                For $i20=1 to 10
				    $pixcel=PixelSearch(12, 289,1000, 713,0x0B57D0)
					If IsArray($pixcel) Then $i20=20
					Sleep(1000)
				Next
				Sleep(5000)

				If $i=6 Then MouseClick('left',380, 225,1,20)
				Sleep(2000)
				Sleep(1000)
				$x3=0
				$y3=0
				$emailkhoiphuc=_ImageSearchArea(@ScriptDir&'\emailkhoiphuc2.bmp',1,409, 506,775, 708,$x3,$y3,1)
				If $x3>0 Then
					MouseClick('left',$x3,$y3,1,20)   ; click Email khoi phuc
					Sleep(10000)
					For $i20=1 to 20
				      $pixcel=PixelSearch(322, 459,1000, 527,0x0B57D0)
					  If IsArray($pixcel) Then $i20=20
					  Sleep(1000)
					Next
				      Sleep(1000)
				      Send($h)
				      Sleep(500)
				      Send('{enter}')
				      Sleep(7000)
				EndIf

				$emailkhoiphuc=_ImageSearchArea(@ScriptDir&'\emailhhoiphuc.bmp',1,409, 506,775, 708,$x3,$y3,1)
				If $x3>0 Then
					MouseClick('left',$x3,$y3,1,20)    ; click Email khoi phuc
					Sleep(10000)
					For $i20=1 to 20
				      $pixcel=PixelSearch(322, 459,1000, 527,0x0B57D0)
					  If IsArray($pixcel) Then $i20=20
					  Sleep(1000)
					Next
				      Sleep(1000)
				      Send($h)
				      Sleep(500)
				      Send('{enter}')
				      Sleep(7000)
				EndIf

				$emailkhoiphuc=_ImageSearchArea(@ScriptDir&'\emailkhoiphuc2.bmp',1,409, 506,775, 708,$x3,$y3,1)
				If $x3>0 Then
					MouseClick('left',$x3,$y3,1,20)   ; click Email khoi phuc
					Sleep(10000)
					For $i20=1 to 20
				      $pixcel=PixelSearch(322, 459,1000, 527,0x0B57D0)
					  If IsArray($pixcel) Then $i20=20
					  Sleep(1000)
					Next
				      Sleep(1000)
				      Send($h,1)
				      Sleep(500)
				      Send('{enter}')
				      Sleep(7000)
				EndIf


				$emailkhoiphuc=_ImageSearchArea(@ScriptDir&'\emailkhoiphuc.bmp',1,409, 506,775, 708,$x3,$y3,1)
				If $x3>0 Then
					MouseClick('left',$x3,$y3,1,20)    ; click Email khoi phuc
					Sleep(10000)
					For $i20=1 to 20
				      $pixcel=PixelSearch(322, 459,1000, 527,0x0B57D0)
					  If IsArray($pixcel) Then $i20=20
					  Sleep(1000)
					Next
				      Sleep(1000)
				      Send($h,1)
				      Sleep(500)
				      Send('{enter}')
				      Sleep(7000)
				EndIf


				$emailkhoiphuc=_ImageSearch(@ScriptDir&'\emailkhoiphuc2.bmp',1,$x3,$y3,1)
				If $x3>0 Then
					MouseClick('left',$x3,$y3,1,20)   ; click Email khoi phuc
					Sleep(10000)
					For $i20=1 to 20
				      $pixcel=PixelSearch(322, 459,1000, 527,0x0B57D0)
					  If IsArray($pixcel) Then $i20=20
					  Sleep(1000)
					Next
				      Sleep(1000)
				      Send($h,1)
				      Sleep(500)
				      Send('{enter}')
				      Sleep(7000)
				EndIf

				$emailkhoiphuc=_ImageSearch(@ScriptDir&'\emailhoiphuc.bmp',1,$x3,$y3,1)
				If $x3>0 Then
					MouseClick('left',$x3,$y3,1,20)    ; click Email khoi phuc
					Sleep(10000)
					For $i20=1 to 20
				      $pixcel=PixelSearch(322, 459,1000, 527,0x0B57D0)
					  If IsArray($pixcel) Then $i20=20
					  Sleep(1000)
					Next
				      Sleep(1000)
				      Send($h)
				      Sleep(500)
				      Send('{enter}')
				      Sleep(7000)
				EndIf
               Sleep(3000)

			   If $i=4 Then MouseClick('left',1025, 230,1,20);update pass

				If $x3=0 Then      ; neu khong tim thay anh
				    MouseClick('left',650,300,1,20)
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
				    Sleep(10000)
				    For $i20=1 to 20
				      $pixcel=PixelSearch(322, 459,1000, 527,0x0B57D0)
					  If IsArray($pixcel) Then $i20=20
					  Sleep(1000)
					Next
				      Sleep(3000)
				      Send($h)
				      Sleep(500)
				      Send('{enter}')
				      Sleep(7000)

				EndIf


				If $i=1 Then MouseClick('left',927, 282,1,20)   ;update pass
				If $i=2 Then MouseClick('left',1000, 248,1,20);update pass
				If $i=2 Then MouseClick('left',980, 262,1,20);update pass
				If $i=3 Then MouseClick('left',816, 266,1,20);update pass
				If $i=3 Then MouseClick('left',816, 243,1,20);update pass
				If $i=4 Then MouseClick('left',1025, 230,1,20);update pass
				If $i=5 Then
					Sleep(10000)
					MouseClick('left',1277, 104,1,20)
				EndIf

				If $i=6 Then MouseClick('left',582, 304 ,1,20);update pass
				If $i=7 Then MouseClick('left',757, 436,1,20);update pass
				;If $i=8 Then MouseClick('left',757, 436,1,20)
				If $i=9 Then MouseClick('left',430, 343,1,20);update pass
				If $i=9 Then MouseClick('left',460, 343,1,20);update pass
				Sleep(1000)
				If $i=9 Then MouseClick('left',656, 434,1,20);update pass
				If $i=10 Then MouseClick('left',456, 344,1,20);update pass
                Sleep(2000)
				If $i=1 Then MouseClick('left',936, 312,1,20)
				If $i=2 Then MouseClick('left',980, 248,1,20)
				If $i=3 Then MouseClick('left',823, 262,1,20)
				If $i=4 Then MouseClick('left',1030, 228,1,20)
				If $i=5 Then MouseClick('left',1219, 101,1,20)
				If $i=6 Then MouseClick('left',390,224 ,1,20)
				If $i=7 Then MouseClick('left',555,340,1,20)
				If $i=9 Then MouseClick('left',456, 344,1,20)  ;luu mat khau $1

                Sleep(2000)
				If $i=1 Then MouseClick('left',931, 240,1,20)  ;luu mat khau $1
				If $i=2 Then MouseClick('left',1000, 229,1,20)  ;luu mat khau $1
				If $i=2 Then MouseClick('left',980, 262,1,20);update pass
				If $i=3 Then MouseClick('left',1193, 347,1,20)  ;luu mat khau $1
				If $i=4 Then MouseClick('left',1099, 341,1,20)  ;luu mat khau $1
				If $i=5 Then MouseClick('left',1219, 101,1,20)  ;luu mat khau $1
				If $i=10 Then MouseClick('left',1219, 101,1,20)  ;luu mat khau $1
				If $i=9 Then MouseClick('left',385, 320,1,20)  ;luu mat khau $1
				Sleep(1000)

				If $i=1 Then MouseClick('left',929, 235,1,20)  ;luu mat khau $1
				If $i=2 Then MouseClick('left',1027, 229,1,20)  ;luu mat khau $1
				If $i=3 Then MouseClick('left',1193, 347,1,20)  ;luu mat khau $1
				If $i=4 Then MouseClick('left',1099, 341,1,20)  ;luu mat khau $1
				If $i=5 Then MouseClick('left',1219, 101,1,20)  ;luu mat khau $1
				If $i=5 Then MouseClick('left',1190, 101,1,20)  ;luu mat khau $1
				If $i=10 Then MouseClick('left',1219, 101,1,20)  ;luu mat khau $1
				If $i=9 Then MouseClick('left',385, 320,1,20)  ;luu mat khau $1
				Sleep(2000)
				If $i=4 Then MouseClick('left',1036, 226,1,20)
				;If $i=5 Then MouseClick('left',850,60,1,20)


				$pixcel=PixelSearch(715, 497,973, 752,0x0B57D0)
				If IsArray($pixcel) Then
					$i20=20
					MouseClick('left',$pixcel[0]+5,$pixcel[1]+5,1,20)
					Sleep(3000)
				EndIf

				$check=0
				Sleep(2000)
				ControlClick('','','','left',1,600, 60)
				Sleep(1000)
				Send('^a')
				Sleep(500)
				Sleep(1000)
				ClipPut('https://myaccount.google.com/')
				Sleep(1000)
				Send('^v')
				Sleep(2000)
				Send('{enter}')
				Sleep(10000)
				For $i20=1 to 10
					$pixcel=PixelSearch(18, 130,206, 263,0xC2E7FF)
					Sleep(1000)
					$pixcel2=PixelSearch(13, 224,70, 345,0x1F1F1F)
					Sleep(1000)
					If IsArray($pixcel) or IsArray($pixcel2) Then
						$check=1
						$i20=17
					EndIf
					Sleep(1000)
				Next
				If $check=0 Then
				    ControlClick('','','','left',1,600, 60)
				    Sleep(1000)
				    Send('^a')
				    Sleep(1000)
				    ClipPut('https://www.youtube.com/account')
				    Sleep(1000)
				    Send('^v')
				    Sleep(2000)
				    Send('{enter}')
				    Sleep(10000)
				    For $i20=1 to 10
					    $pixcel=PixelSearch(58,110,245, 170,0xFF0033)   ; xoa loi edge
						$pixcel2=PixelSearch(58,110,245, 170,0xFF0000)   ; xoa loi edge
						$pixcel3=PixelSearch(58,110,245, 170,0xFF0100)   ; xoa loi edge


					    Sleep(1000)
					    If IsArray($pixcel) or IsArray($pixcel2) or IsArray($pixcel3)  Then
						    $check=1
						    $i20=17
					    EndIf
					    Sleep(1000)
				    Next
				EndIf

			Return $check    ;;return 1 la ok. 0 la that bai   , 2 la bi verry
        EndFunc

Func _closeTrinhDuyet($i)

			    Sleep(100)
				Send('^w')
				If $i=5 Then
					For $i20=1 to 3
						Send('^w')
						Sleep(100)
					Next
				EndIf

				If $i=5 Then ControlClick('','','','left',1,428, 27)    ; tat tab thua
				Sleep(100)
				For $i20=1 to 3
					$var = WinList ("[CLASS:Chrome_WidgetWin_1]")
				  For $i10 = 1 to $var[0][0]
					If BitAnd (WinGetState ($var[$i10][1]), 2) And $var[$i10][0] <> "" Then
						ControlSend($var[$i10][1],'','','^w')
						Sleep(100)
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
						Sleep(100)
					EndIf
				  Next
				Next

			        $var = WinList ("[CLASS:Chrome_WidgetWin_1]")                                                       ;x󡠴o஠b? tap
				For $i10 = 1 to $var[0][0]
					If BitAnd (WinGetState ($var[$i10][1]), 2) And $var[$i10][0] <> "" Then
						ProcessClose($var[$i10][1])
						Sleep(100)
						ProcessClose('chrome.exe')
				        Sleep(100)
						ProcessClose('brave.exe')
				        Sleep(100)
						ProcessClose('Maxthon.exe')
				        Sleep(100)
						ProcessClose('Windows Security.exe')
				        Sleep(100)
					EndIf
				Next
				$var = WinList ("[CLASS:MozillaWindowClass]")                                                       ;x󡠴o஠b? tap
				For $i10 = 1 to $var[0][0]
					If BitAnd (WinGetState ($var[$i10][1]), 2) And $var[$i10][0] <> "" Then
						ProcessClose($var[$i10][1])
						Sleep(100)
						ProcessClose('chrome.exe')
				        Sleep(100)
						ProcessClose('brave.exe')
				        Sleep(100)
					EndIf
				Next
				$a = WinExists('Google Chrome')                                                    ;x󡠴o஠b? tap
				For $i20 = 1 to 100
					ProcessClose('chrome.exe')
					Sleep(100)
				Next
				$a = WinExists('Firefox')                                                    ;x󡠴o஠b? tap
				If $a=1 Then
				    For $i20 = 1 to 10
					   ControlClick('Firefox','','[CLASS:Button; INSTANCE:1]')
					   Sleep(100)
					Next
				EndIf
				$a = WinExists('Brave')                                                    ;x󡠴o஠b? tap
				If $a=1 Then
				    For $i20 = 1 to 10
					   WinClose('Brave')
					   Sleep(100)
					Next
				EndIf
				$a = WinExists('Trình báo cáo lỗi của Mozilla')                                                    ;x󡠴o஠b? tap
				If $a=1 Then
				    For $i20 = 1 to 10
					   WinClose('Trình báo cáo lỗi của Mozilla')
					   Sleep(100)
					Next
				EndIf
				$a = WinExists('Đóng Firefox')                                                    ;x󡠴o஠b? tap
				If $a=1 Then
				    For $i20 = 1 to 10
					   WinClose('Đóng Firefox')
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

			If $i=1 Then
				ProcessClose('conhost.exe')
				WinClose('Settings')
				Sleep(100)
				ProcessClose('launcher.exe')
				Sleep(100)
				WinClose('Default Host Application')
				Sleep(100)
				ProcessClose('shutdown.exe')
				Sleep(100)
				WinClose('Cài đặt ')
				Sleep(100)
				WinClose('7z SFX: warning')
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
				ProcessClose('notepad.exe')
				Sleep(100)
				ProcessClose('browser_assistant.exe')
				Sleep(100)
				ProcessClose('opera_autoupdate.exe')
				Sleep(100)
				ProcessClose('AvastBrowserCrashHandler64.exe')
				Sleep(100)
				ProcessClose('AvastBrowserCrashHandler.exe')
				Sleep(100)
				ProcessClose('gepic.exe')
				Sleep(100)
				ProcessClose('giTopVPNBrowser.exe')
				Sleep(100)
				ProcessClose('gseamonkey.exe')
				Sleep(100)
				ProcessClose('gAvastBrowser.exe')
				Sleep(100)
				ProcessClose('gGlobusPrivacyBrowser.exe')
				Sleep(100)
				ProcessClose('GoogleCrashHandler64.exe')
				Sleep(100)
				ProcessClose('GoogleCrashHandler.exe')
				Sleep(100)
				ProcessClose('gopera.exe')
				Sleep(100)
				ProcessClose('gvivaldi.exe')
				Sleep(100)
				ProcessClose('gMaxthon.exe')
				Sleep(100)
				ProcessClose('gfirefox.exe')
				Sleep(100)
				ProcessClose('gbrowser.exe')
				Sleep(100)
				ProcessClose('gbrave.exe')
                Sleep(100)
				ProcessClose('gMaxthon.exe')
				Sleep(100)
				ProcessClose('gchrome.exe')
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
				ProcessClose('gseamonkey.exe')
				Sleep(100)
				ProcessClose('msedge.exe')
				Sleep(100)
				ProcessClose('gmsedge.exe')
				Sleep(100)
				ProcessClose('machine.exe')
				Sleep(100)
				ProcessClose('CocCocUpdate.exe')
				Sleep(100)
				ProcessClose('firefox.exe')
				Sleep(100)
				ProcessClose('firefox.exe')
				Sleep(100)
				ProcessClose('firefox.exe')
				Sleep(100)
				ProcessClose('firefox.exe')
				Sleep(100)
				ProcessClose('firefox.exe')
				Sleep(100)
				ProcessClose('firefox.exe - Bad Image')
				Sleep(100)
				ProcessClose('BingChatInstaller.exe')
				Sleep(100)
				ProcessClose('clipboard.exe')
				Sleep(100)
				WinClose('opera - Bad Image.exe')
				Sleep(100)
				ProcessClose('opera - Bad Image.exe')
				Sleep(100)
				ProcessClose('UniKeyNT.exe')
				Sleep(100)
				WinClose('Đang chạy..., Trình cài đặt Cốc Cốc')
                Sleep(3000)
                ControlClick('Cài đặt bị dừng.','Hủy Cài đặt','[CLASS:Button; INSTANCE:2]')
				Sleep(1000)
				ProcessClose('gAvastBrowser.exe')
                ProcessClose('gbrowser.exe')
				ProcessClose('gmsedge.exe')
				DirRemove('C:\Users\'&@UserName&'\AppData\Roaming\Microsoft\Crypto',1)
				MouseClick('left',1263,887,1,20)
				Sleep(2000)
				MouseMove(1263,830)
				Sleep(10000)
			EndIf

			    WinClose('opera - Bad Image.exe')
				Sleep(100)
				ProcessClose('opera - Bad Image.exe')
				Sleep(100)
				ProcessClose('msdt.exe')
				Sleep(100)
				ProcessClose('firefox.exe')
				Sleep(100)
				ProcessClose('chrome.exe')
				Sleep(100)
				ProcessClose('browser.exe')
				Sleep(100)
				ProcessClose('brave.exe')
				Sleep(100)
				ProcessClose('brave.exe')
				Sleep(100)
				ProcessClose('brave.exe')
				Sleep(100)
				ProcessClose('browser_assistant.exe')
				Sleep(100)
				ProcessClose('crashreporter.exe')
				Sleep(100)
				ProcessClose('EpicUpdate.exe')
				Sleep(100)
				ProcessClose('slimbrowser.exe')
				Sleep(100)
				ProcessClose('epic.exe')
				Sleep(100)
				ProcessClose('msedge.exe')
				Sleep(100)
				ProcessClose('ibrowser.exe')
				Sleep(100)
				ProcessClose('iexplore.exe')
				Sleep(100)
				ProcessClose('explore.exe')
				Sleep(100)
				ProcessClose('AvastBrowser.exe')
				Sleep(100)
				ProcessClose('Maxthon.exe')
				Sleep(100)
				ProcessClose('Windows Security.exe')
				Sleep(100)
				ProcessClose('opera_autoupdate.exe')
				Sleep(100)
				ProcessClose('browser.exe')
				Sleep(100)
				ProcessClose('vivaldi.exe')
				Sleep(100)
				ProcessClose('firefox.exe')
				Sleep(100)
				ProcessClose('launcher.exe')
				Sleep(100)
				ProcessClose('Windows Security.exe')
				Sleep(100)
				ProcessClose('opera.exe')
				Sleep(100)
				ProcessClose('slimbrowser.exe')
				Sleep(100)
				ProcessClose('msedge.exe')
				Sleep(100)
				ProcessClose('rundll32.exe')
				Sleep(100)
				ProcessClose('seamonkey.exe')
				Sleep(100)
				ProcessClose('msedge.exe')
				Sleep(100)
				Send('{f5}')
				Sleep(100)
				WinClose("Open File - Security Warning")
				Sleep(100)
				WinClose("SeaMonkey")
				Sleep(100)
				ProcessClose('AvastBrowserCrashHandler.exe')
				Sleep(100)
				ProcessClose('msedge.exe')
				Sleep(100)
				ProcessClose('browser.exe')
				Sleep(100)
				ProcessClose('BraveCrashHandler.exe')
				Sleep(100)
				Send('{f5}')
				Sleep(100)
				ProcessClose('msedge.exe')
				Sleep(100)
				MouseClick("left",1000, 500,1,20)   ; tat update
				Sleep(100)
				WinClose('Local Area Network (LAN) Settings')
				Sleep(100)
				WinClose('Internet Properties')
				Sleep(100)
				MouseClick('left',300,455,1,20)   ; thoat loi win
				Sleep(100)
				WinClose('[class:CabinetWClass]','')
				Sleep(100)
				WinClose('Proxy Client Tinsoft')
				ProcessClose('msedge.exe')
				Sleep(100)
				ProcessClose('msdt.exe')
				Sleep(100)
				ProcessClose('firefox.exe')
				Sleep(100)
				ProcessClose('chrome.exe')
				Sleep(100)
				ProcessClose('browser.exe')
				Sleep(100)
				ProcessClose('brave.exe')
				Sleep(100)
				ProcessClose('brave.exe')
				Sleep(100)
				ProcessClose('firefox.exe - Bad Image')
				Sleep(100)
				ProcessClose('browser_assistant.exe')
				Sleep(100)
				ProcessClose('crashreporter.exe')
				Sleep(100)
				ProcessClose('EpicUpdate.exe')
				Sleep(100)
				ProcessClose('slimbrowser.exe')
				Sleep(100)
				ProcessClose('epic.exe')
				Sleep(100)
				ProcessClose('msedge.exe')
				Sleep(100)
				ProcessClose('ibrowser.exe')
				Sleep(100)
				ProcessClose('iexplore.exe')
				Sleep(100)
				ProcessClose('explore.exe')
				Sleep(100)
				ProcessClose('AvastBrowser.exe')
				Sleep(100)
				ProcessClose('Maxthon.exe')
				Sleep(100)
				ProcessClose('Windows Security.exe')
				Sleep(100)
				ProcessClose('opera_autoupdate.exe')
				Sleep(100)
				ProcessClose('browser.exe')
				Sleep(100)
				ProcessClose('vivaldi.exe')
				Sleep(100)
				ProcessClose('firefox.exe')
				Sleep(100)
				ProcessClose('launcher.exe')
				Sleep(100)
				ProcessClose('Windows Security.exe')
				Sleep(100)
				ProcessClose('opera.exe')
				Sleep(100)
				ProcessClose('slimbrowser.exe')
				Sleep(100)
				ProcessClose('msedge.exe')
				Sleep(100)
				ProcessClose('rundll32.exe')
				Sleep(100)
				ProcessClose('seamonkey.exe')
				Sleep(100)
				ProcessClose('msedge.exe')
				Sleep(100)
				Send('{f5}')
				Sleep(100)
				WinClose("Open File - Security Warning")
				Sleep(100)
				WinClose("SeaMonkey")
				Sleep(100)
				ProcessClose('AvastBrowserCrashHandler.exe')
				Sleep(100)
				ProcessClose('msedge.exe')
				Sleep(100)
				ProcessClose('browser.exe')
				Sleep(100)
				ProcessClose('BraveCrashHandler.exe')
				Sleep(100)
				Send('{f5}')
				Sleep(100)
				ProcessClose('msedge.exe')
				Sleep(100)
				MouseClick("left",1000, 500,1,20)   ; tat update
				Sleep(100)
				WinClose('Local Area Network (LAN) Settings')
				Sleep(100)
				WinClose('Internet Properties')
				Sleep(100)
				MouseClick('left',300,455,1,20)   ; thoat loi win
				Sleep(100)
				WinClose('[class:CabinetWClass]','')
				Sleep(100)
				WinClose('Proxy Client Tinsoft')
				ProcessClose('msedge.exe')
				Sleep(100)
				;ProcessClose('mmc.exe')
				;Sleep(100)
				;ProcessClose('cmd.exe')
				;Sleep(100)
				;DirRemove("C:\Program Files\Funny Dev",1)
				Sleep(100)
				;_ReduceMemory()
				Sleep(200)
				WinClose('Windows Security')
				Sleep(100)
				WinClose('Authentication Required - Mozilla Firefox')
				Sleep(100)
				WinClose('Authentication Required - FlashPeak SlimBrowser')
				Sleep(100)
				WinClose('Yêu cầu xác minh - Mozilla Firefox')
				Sleep(100)
				WinClose('Microsoft Store')
				WinClose('Windows Security')
				Sleep(100)
				WinClose('Windows Security')
				WinClose('Windows Security')


	EndFunc

Func _taokenhphu($i,$sokenh)
        ;If $taokenhphu=1 Then

            ToolTip('nhan ban tab '&$i,0,0)
			$check=1
			If $check=1 Then
                For $i20=1 to 100-$sokenh
                    Sleep(500)
					Send('^n')
					If $i=9  Then
						WinClose('Check Update')
						Sleep(2000)
					EndIf
					Sleep(500)
				Next
			EndIf

			ToolTip('vao trang tao kenh '&$i,0,0)
			$sokenhtaoduoc=0
			Sleep(1000)
			$var = WinList ("[CLASS:Chrome_WidgetWin_1]")
			Sleep(1000)
			If $var[0][0]=0 Then $var = WinList ("[CLASS:MozillaWindowClass]")
			Sleep(1000)
			If $i=9 Then $var = WinList ("[CLASS:FlashPeakWindowClass]")
		    For $i10 = 1 to $var[0][0]
				If BitAnd (WinGetState ($var[$i10][1]), 2) And $var[$i10][0] <> "" Then WinMove($var[$i10][1],'',0,0,1366,768)
				Sleep(50)
			Next


            If $check=1 Then
                        $var = WinList ("[CLASS:Chrome_WidgetWin_1]")
			            Sleep(1000)
			            If $var[0][0]=0 Then $var = WinList ("[CLASS:MozillaWindowClass]")
			            Sleep(1000)
			            If $i=9 Then $var = WinList ("[CLASS:FlashPeakWindowClass]")
				For $i10 = 1 to $var[0][0]
					If BitAnd (WinGetState ($var[$i10][1]), 2) And $var[$i10][0] <> "" Then
						WinActivate($var[$i10][1],'')
						Sleep(200)
                        MouseClick('left',600,60,1,20)
						Sleep(200)
						ClipPut('https://www.youtube.com/channel_switcher?next=%2Faccount&feature=settings')   ;https://www.youtube.com/?channel_creation_token=GiKqucG9ARwKGi9wcm9maWxlP2NoYW5uZWxfY3JlYXRlZD0xaAE%3D
						Sleep(100)
						Send('^v')
						Sleep(200)
						Send('{enter}')
						Sleep(200)

					EndIf

				Next
				Sleep(5000)

				       $var = WinList ("[CLASS:Chrome_WidgetWin_1]")
			            Sleep(1000)
			            If $var[0][0]=0 Then $var = WinList ("[CLASS:MozillaWindowClass]")
			            Sleep(1000)
			            If $i=9 Then $var = WinList ("[CLASS:FlashPeakWindowClass]")
				For $i10 = 1 to $var[0][0]
						If BitAnd (WinGetState ($var[$i10][1]), 2) And $var[$i10][0] <> "" Then
						   WinActivate($var[$i10][1],'')
						   Sleep(200)
                           MouseClick("left",404, 257,1,20)
						   MouseClick("left",423, 278,1,20)
						   Sleep(200)
						EndIf
				Next
				Sleep(10000)

				For $i10 = 1 to $var[0][0]
					If BitAnd (WinGetState ($var[$i10][1]), 2) And $var[$i10][0] <> "" Then
							WinActivate($var[$i10][1],'')
							Sleep(200)
							$a=_FileCountLines(@ScriptDir&'\ten.txt')
							$tenkenh=FileReadLine(@ScriptDir&'\ten.txt',Random(1,$a,1))
							Sleep(200)
							Send($tenkenh&' ')
							Sleep(200)
							$a=_FileCountLines(@ScriptDir&'\ho.txt')
							$tenkenh=FileReadLine(@ScriptDir&'\ten.txt',Random(1,$a,1))
							Send($tenkenh)
							Sleep(200)
					EndIf
				Next

				Sleep(5000)

				For $i10 = 1 to $var[0][0]
					If BitAnd (WinGetState ($var[$i10][1]), 2) And $var[$i10][0] <> "" Then
						    ControlClick($var[$i10][1],'','','left',1,583, 600) ;tick
						    Sleep(200)
					EndIf
				Next

				Sleep(5000)

				$var = WinList ("[CLASS:Chrome_WidgetWin_1]")
				For $i10 = 1 to $var[0][0]
					If BitAnd (WinGetState ($var[$i10][1]), 2) And $var[$i10][0] <> "" Then
						    ;WinMove($var[$i10][1],'',0,0,1366,768)
							ControlClick($var[$i10][1],'','','left',1,706, 645)
					EndIf
				Next

				Sleep(5000)

				For $i10 = 1 to $var[0][0]
					If BitAnd (WinGetState ($var[$i10][1]), 2) And $var[$i10][0] <> "" Then
						    ControlClick($var[$i10][1],'','','left',1,583, 625) ;tick
						    Sleep(200)
					EndIf
				Next
				Sleep(2000)

				 $var = WinList ("[CLASS:Chrome_WidgetWin_1]")
				For $i10 = 1 to $var[0][0]
					If BitAnd (WinGetState ($var[$i10][1]), 2) And $var[$i10][0] <> "" Then
						    ;WinMove($var[$i10][1],'',0,0,1366,768)
							ControlClick($var[$i10][1],'','','left',1,706, 694)
					EndIf
				Next
				Sleep(500)

                For $i20=1 to 100
				    MsgBox(0,0,'Cho tao kenh:'&$i20,3)
				Next

				$var = WinList ("[CLASS:Chrome_WidgetWin_1]")
				For $i10 = 1 to $var[0][0]-2
					If BitAnd (WinGetState ($var[$i10][1]), 2) And $var[$i10][0] <> "" Then
						    ;WinMove($var[$i10][1],'',0,0,1366,768)
							WinClose($var[$i10][1],'')
							Sleep(100)
					EndIf
				Next


			EndIf



							WinClose('Save password?')
							WinClose('www.youtube.com wants to')

EndFunc

Func _Demkenhphu()
					$sokenhtaoduoc=1
                    MouseClick('left',600,60,1,20)
					Sleep(2000)
					WinMove('','',0,0,1366,788)
					Sleep(1000)
					MouseClick('left',600,60,1,20)
					Sleep(2000)
					Send('youtube.com/channel_switcher?next=%2Faccount&feature=settings')
					Sleep(2000)
					Send('{enter}')
					Sleep(10000)
					Sleep(1000)
					MouseMove(10,10)
					Sleep(1000)
				    WinClose('www.youtube.com muốn')
					Sleep(1000)
					For $i20=1 to 10
				        $pixcel=PixelSearch(55, 97,165, 157,0xFF0000)
					    If IsArray($pixcel) Then $i20=20
					    Sleep(1000)
				    Next
					Sleep(2000)
					MouseClick('left',685, 164,1,20)
					Sleep(1000)
					Send('{tab}')
					Sleep(1000)
					Send('{tab}')
					Sleep(1000)

					For $idem=1 to 100

						Send('{tab}')
						Sleep(500)
						$x=0
		                $y=0
		                _ImageSearchArea(@ScriptDir&'\DemKenhPhu.bmp',1,271, 150,1280,788,$x,$y,1,1)
						If $x>0 Then
                            $sokenhtaoduoc=$sokenhtaoduoc+1
						Else
							$idem=100
						EndIf

					Next


				Return 	$sokenhtaoduoc
	EndFunc






Func AutoRun()

	EndFunc

    Func _Exit()
	   Exit
	EndFunc   ;==>_Exit
