#RequireAdmin
#include <ImageSearch.au3>
#include <MsgBoxConstants.au3>
#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <_HttpRequest.au3>
#include <File.au3>
#include <String.au3>
Opt("SendKeyDelay",20)
HotKeySet("{ESC}", "_Exit")
HotKeySet("{f9}", "AutoRun")
#Region ### START Koda GUI section ### Form=Trình tạo mới hồ sơ
$Form1 = GUICreate("Form1", 615, 437, 192, 124)
$Label1 = GUICtrlCreateLabel("tool doi MK Gmail-gmal Khoi phuc, tool very gmail, tool Khang die,tool theo yeu cau... Lien he:https://www.facebook.com/bui.chung.140/", 16, 300, 300,300)
$Label2 = GUICtrlCreateLabel("so luong", 16, 64, 44, 17)
$tongsosub = GUICtrlCreateInput("100", 88, 64, 73, 21)
$batdau=GUICtrlCreateButton("BAT DAU", 16, 216, 75, 25)
$Label1 = GUICtrlCreateLabel('so kenh tao' , 300, 50,100, 50)
$Label2 = GUICtrlCreateLabel("gmail ban dau", 300, 90,100, 30)
;$Label3 = GUICtrlCreateLabel("Key tinsoft win 10 ", 300, 135, 100, 50)
;$Label4 = GUICtrlCreateLabel("Key tinsoft ", 300, 170, 100, 50)
$giatriA = GUICtrlCreateInput("50", 400, 48, 113, 21)
$giatriB = GUICtrlCreateInput("1", 400, 88, 113, 21)
;$giatriC = GUICtrlCreateInput("1", 400, 130, 113, 21)
;$giatriD = GUICtrlCreateInput("", 400, 165, 113, 21)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###

While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $batdau
			Sleep(1000)

		While 1

			   $tongsoviewkq=GUICtrlRead($tongsosub)
			   $sokenh=GUICtrlRead($giatriA)
			   $b=GUICtrlRead($giatriB)
			  ; $key=GUICtrlRead($giatriD)
			    ;$vpsso=GUICtrlRead($giatriC)
                MsgBox(0,0,'cho bat dau',10)
			   ;If Not IsArray($somay) Then MsgBox(0,0,'dien so may',5)
               WinSetState('Form1','',@SW_MINIMIZE)
			   $somay=GUICtrlRead($giatriA)
                $i2=0
			   Sleep(200)
                FileDelete(@ScriptDir&'\linkkenhchayview.txt')
                FileDelete(@ScriptDir&'\http.txt')   ; x�a file http
				FileDelete(@ScriptDir&'\ipconfig.txt')
				FileDelete(@ScriptDir&'\Gmailtest.txt')
				FileDelete(@ScriptDir&'\Keytinsoft.txt')

$tongsoviewkq=_FileCountLines(@ScriptDir&'\Gmail.txt')
For $i=$b To $tongsoviewkq
                            ToolTip('Gmailso:'&$i,0,0)

						   $e=FileReadLine(@ScriptDir&'\Gmail.txt',$i)    ;l?y ID , pass, mail kh�i ph?c

						   If not IsString($e) Then
                            ExitLoop
							FileWriteLine(@ScriptDir&'\kenhkhongdangnhapduoc.txt','het gmail roiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii')
						   EndIf

						   $cacgiatri=StringSplit($e,'	')

	                   For $i11=1 to $cacgiatri[0]
	                       If IsString($cacgiatri[$i11]) Then FileWriteLine(@ScriptDir&'\Gmailtest.txt',$cacgiatri[$i11])
						   ;MsgBox(0,0,'ok')
						Next
                           $f=FileReadLine(@ScriptDir&'\Gmailtest.txt',1)
                           $g=FileReadLine(@ScriptDir&'\Gmailtest.txt',2)
						   $h=FileReadLine(@ScriptDir&'\Gmailtest.txt',3)
						   FileDelete(@ScriptDir&'\Gmailtest.txt')

                            $handLDplay = WinActivate("Proxy Client Tinsoft")
						If IsHWnd($handLDplay) Then
							WinMove('Proxy Client Tinsoft','',1137,380,220,340)
							For $i20=1 to 30
						      $handLDplay = WinActivate("Proxy Client Tinsoft")
		                      Sleep(1000)
							  MouseClick('left',1211, 649,1)     ; change IP tinsopt PC
							  Sleep(5000)
							  $pixcel=PixelSearch(1153, 665,1227, 695,0x008000)
							  If IsArray($pixcel) Then $i20=30
							Next
						EndIf

						;_requetGooGleDOC('https://docs.google.com/document/d/1vyi_wXrFCSpsxuamD6K9KbItkQgs1BAKtBoCtPsVVL4/export?format=txt','Keytinsoft0.txt')  ; IP du phong
				        Sleep(2000)
						;_FakeIPOptionV6(1,1)

						$vpsso=1
			$var = WinList ("[CLASS:Chrome_WidgetWin_1]")
				For $i10 = 1 to $var[0][0]-2
					If BitAnd (WinGetState ($var[$i10][1]), 2) And $var[$i10][0] <> "" Then
						    ;WinMove($var[$i10][1],'',0,0,1366,768)
							WinClose($var[$i10][1],'')
					EndIf
				Next

			$check=_loginGmail($f,$g,$h,$i)

			If $check=1 Then
                For $i20=1 to $sokenh
					Send('^n')
					Sleep(500)
				Next
			EndIf

			$sokenhtaoduoc=0
			$var = WinList ("[CLASS:Chrome_WidgetWin_1]")
		    For $i10 = 1 to $var[0][0]
				If BitAnd (WinGetState ($var[$i10][1]), 2) And $var[$i10][0] <> "" Then WinMove($var[$i10][1],'',0,0,1366,768)
				Sleep(100)
			Next

            If $check=1 Then
                        $var = WinList ("[CLASS:Chrome_WidgetWin_1]")
				For $i10 = 1 to $var[0][0]
					If BitAnd (WinGetState ($var[$i10][1]), 2) And $var[$i10][0] <> "" Then
						WinActivate($var[$i10][1],'')
						Sleep(300)
                        MouseClick('left',600,60,1,20)
						Sleep(300)
						ClipPut('https://www.youtube.com/channel_switcher?next=%2Faccount&feature=settings')   ;https://www.youtube.com/?channel_creation_token=GiKqucG9ARwKGi9wcm9maWxlP2NoYW5uZWxfY3JlYXRlZD0xaAE%3D
						Sleep(100)
						Send('^v')
						Sleep(500)
						Send('{enter}')
						Sleep(100)
					EndIf

				Next
				Sleep(5000)

				       $var = WinList ("[CLASS:Chrome_WidgetWin_1]")
				For $i10 = 1 to $var[0][0]
						If BitAnd (WinGetState ($var[$i10][1]), 2) And $var[$i10][0] <> "" Then
						   WinActivate($var[$i10][1],'')
						   Sleep(500)
                           MouseClick("left",404, 257,1,20)
						   MouseClick("left",423, 278,1,20)
						   Sleep(500)
						EndIf
				Next
				Sleep(10000)

				For $i10 = 1 to $var[0][0]
					If BitAnd (WinGetState ($var[$i10][1]), 2) And $var[$i10][0] <> "" Then
							WinActivate($var[$i10][1],'')
							Sleep(300)
							MouseClick('left',676, 422,1,20)
							Sleep(500)
							Send('{tab}')
							Sleep(300)
							Send('{tab}')
							Sleep(500)
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
						    ControlClick($var[$i10][1],'','','left',1,583, 627) ;tick
						    Sleep(300)
					EndIf
				Next

				Sleep(5000)

				 $var = WinList ("[CLASS:Chrome_WidgetWin_1]")
				For $i10 = 1 to $var[0][0]
					If BitAnd (WinGetState ($var[$i10][1]), 2) And $var[$i10][0] <> "" Then
						    ;WinMove($var[$i10][1],'',0,0,1366,768)
							ControlClick($var[$i10][1],'','','left',1,707, 715)
					EndIf
				Next

				Sleep(120000)

				$var = WinList ("[CLASS:Chrome_WidgetWin_1]")
				For $i10 = 1 to $var[0][0]-2
					If BitAnd (WinGetState ($var[$i10][1]), 2) And $var[$i10][0] <> "" Then
						    ;WinMove($var[$i10][1],'',0,0,1366,768)
							WinClose($var[$i10][1],'')
							Sleep(100)
					EndIf
				Next



				$sokenhtaoduoc=_Demkenhphu()


			EndIf


											    $sokenhvaGmail=$sokenhtaoduoc&'	'&$f&'	'&$g&'	'&$h
												FileWriteLine(@ScriptDir&'\sokenhtaoduoc.txt',$sokenhvaGmail&'	'&$i)
							 WinClose('Save password?')
							 WinClose('www.youtube.com wants to')


                          $var = WinList ("[CLASS:Chrome_WidgetWin_1]")
					For $i10 = 1 to $var[0][0]
                      If BitAnd (WinGetState ($var[$i10][1]), 2) And $var[$i10][0] <> "" Then
						  WinClose ($var[$i10][1], "")
						  Sleep(500)
						EndIf
					  Sleep(500)
				    Next

                         Send('{F5}')
                         Sleep(500)
                         $var = WinList ("[CLASS:Chrome_WidgetWin_1]")                                                       ;x󡠴o஠b? tap
                    For $i10 = 1 to $var[0][0]
                        If BitAnd (WinGetState ($var[$i10][1]), 2) And $var[$i10][0] <> "" Then
						  WinClose ($var[$i10][1], "")
                          Sleep(100)
                        EndIf
                    Next
                        WinClose('Google Chrome')
                        WinClose("chrome.exe")
                            Sleep(3000)

Next


  MsgBox(0,0,'xonggggggggggg')
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
_VerryGmail()
_FAKEip($vpsso)
_requetanotepad($link,$tenTXT)
#ce

      Func _requetGooGleDOC($link,$tenTXT)     ; luu y Link phai co duoi /export?format=txt
				$checkrequet=0
				$kq=''
                         $kq=_HttpRequest(2,$link,'','','','','')        ;lay link kenh va kiem tra view gio
				         Sleep(1000)
                If StringLen($kq)<>0 Then

						FileDelete(@ScriptDir&'\'&$tenTXT)
						FileDelete(@ScriptDir&"\data.txt")
						Sleep(100)
						FileWriteLine(@ScriptDir&"\data.txt",$kq)
						$sodong=_FileCountLines(@ScriptDir&"\data.txt")
                       ; MsgBox(0,0,$sodong)
					    $data=FileReadLine(@ScriptDir&"\data.txt",1)
						$arry=StringSplit($data,' ')
					If   $arry[0]=1 Then

                        FileWriteLine(@ScriptDir&'\'&$tenTXT,$kq)
                        $checkrequet=1
					Else


						For $i=1 to $sodong
	                         $data=FileReadLine(@ScriptDir&"\data.txt",$i)
	                         $arry=StringSplit($data,' ')
                            If IsArray($arry) Then
		                        For $i20=1 to $arry[0]
			                        If StringLen($arry[$i20])>1 or IsInt($arry[$i20]) Then
				                        FileWrite(@ScriptDir&'\'&$tenTXT,$arry[$i20]&"	")
										;FileWrite(@ScriptDir&'\'&$tenTXT,"	")
										;MsgBox(0,0,'ok')
			                        EndIf
		                        Next

								FileWriteLine(@ScriptDir&'\'&$tenTXT,"	")

                            EndIf
						Next

					    ;FileWriteLine(@ScriptDir&'/'&$tenTXT,$kq)
						$checkrequet=1

					EndIf
                EndIf

				FileDelete(@ScriptDir&"\data.txt")

			Return $checkrequet
		EndFunc

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
	                    For $i20=1 to 2
						    $IPtho2=StringSplit($IPtho,':')
					        If IsArray($IPtho2) Then
						        If $IPtho2[0]=4 Then
                                    $i20=2
							        $ID=$IPtho2[3]
							        $Pass=$IPtho2[4]
							        $IP=$IPtho2[1]
							        $port=$IPtho2[2]

								Else
									$sodong2=_FileCountLines(@ScriptDir&'\Keytinsoft0.txt')
						            Sleep(100)
						            $IPtho=FileReadLine(@ScriptDir&'\Keytinsoft0.txt',Random(1,$sodong2,1))
						        EndIf
					        Else
						        $sodong2=_FileCountLines(@ScriptDir&'\Keytinsoft0.txt')
						        Sleep(100)
						        $IPtho=FileReadLine(@ScriptDir&'\Keytinsoft0.txt',Random(1,$sodong2,1))
						    EndIf
                        Next

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
					Next
			Return $check

		EndFunc

		Func _requetTextDoc($link,$tenTXT)
				$checkrequet=0
				$kq=''
			For $i2=1 to 3
				    For $i12=1 To 5
                         $kq=_HttpRequest(2,$link,'','','','','')        ;lay link kenh va kiem tra view gio
				         Sleep(1000)
						 If StringLen($kq)<100 Then
							     $kq=_HttpRequest(2,$link,'','','','','')        ;lay link kenh va kiem tra view gio
								 Sleep(10000)
						 Else
								 $i12=500
						 EndIf
					Next

				If 	StringLen($kq)>100 Then

                        ; $kq=_HttpRequest(2,$link,'','','','','')        ;lay link kenh va kiem tra view gio
				         Sleep(1000)
                        $data=_StringBetween($kq,'<textarea id="txt-doc" class="form-control" >','</textarea>')
						;FileWrite(@ScriptDir&'\data.txt',$kq)
					If IsArray($data) Then
						$arrydata=StringSplit($data[0],@CRLF)
						FileDelete(@ScriptDir&'/'&$tenTXT)
						Sleep(1000)
						For $i20=1 to $arrydata[0]
							FileWriteLine(@ScriptDir&'/'&$tenTXT,$arrydata[$i20])
						Next

						$checkrequet=1

					Else
						$checkrequet=0

					EndIf
				EndIf

				$check=FileExists(@ScriptDir&'/'&$tenTXT)

				If $check=1 Then $i2=3

			Next

			Return $checkrequet
		EndFunc


		Func _requetanotepad($link,$tenTXT)
					For $i12=1 To 500
                         $kq=_HttpRequest(2,$link,'','','','','')        ;lay link kenh va kiem tra view gio
				         Sleep(1000)
						 If StringLen($kq)<2 Then
							     $kq=_HttpRequest(2,$link,'','','','','')        ;lay link kenh va kiem tra view gio
								 Sleep(10000)
						 Else
								 $i12=500
						 EndIf
					Next
			             $data=_StringBetween($kq,'<div class="plaintext ">','</div>')
					If IsArray($data) Then
						$arrydata=StringSplit($data[0],@CRLF)
						For $i20=1 to $arrydata[0]
							FileWriteLine(@ScriptDir&'/'&$tenTXT,$arrydata[$i20])
						Next
					EndIf
			EndFunc
		Func _Demkenhphu()
				                $sokenhtaoduoc=1
				                $kiemtra=0
				                MouseClick('left',600,60,1,20)
								Sleep(2000)
								Send('https://www.youtube.com/channel_switcher?next=%2Faccount&feature=settings')
								Sleep(2000)
								Send('{enter}')
                                Sleep(10000)
                                $pixcel=PixelSearch(1322, 110,1358, 165,0x606060)  ;kiem tra lon hon 26 kenh
							    Sleep(500)
								If not IsArray($pixcel) Then       ; kiem tra lan 2
									$pixcel=PixelSearch(1322, 110,1358, 165,0xC0C0C0)  ;kiem tra lon hon 26 kenh
							        Sleep(500)
								EndIf
						If  not IsArray($pixcel) Then
								    $dow=0
								$pixcel=PixelSearch(647, 213,779, 301,0x0F0F0F,50)
								If IsArray($pixcel) Then $sokenhtaoduoc=1
								Sleep(500)
								$pixcel=PixelSearch(946, 212,1075, 282,0x0F0F0F,50)
								If IsArray($pixcel) Then $sokenhtaoduoc=2
								Sleep(500)
								$pixcel=PixelSearch(645, 322,788, 361,0x0F0F0F,50)
								If IsArray($pixcel) Then $sokenhtaoduoc=4
								Sleep(500)
								$pixcel=PixelSearch(647, 386,789, 426,0x0F0F0F,50)
								If IsArray($pixcel) Then $sokenhtaoduoc=7
								Sleep(500)
								$pixcel=PixelSearch(645, 448,790, 495,0x0F0F0F,50)
								If IsArray($pixcel) Then $sokenhtaoduoc=10
								Sleep(500)
								$pixcel=PixelSearch(647, 513,786, 555,0x0F0F0F,50)
								If IsArray($pixcel) Then $sokenhtaoduoc=13
								Sleep(500)
								$pixcel=PixelSearch(644, 578,789, 618,0x0F0F0F,50)
								If IsArray($pixcel) Then $sokenhtaoduoc=16
								Sleep(500)
								$pixcel=PixelSearch(943, 603,1092, 669,0x0F0F0F,50)
								If IsArray($pixcel) Then $sokenhtaoduoc=19
								Sleep(500)
						Else

								MouseMove(614, 222)
							    ControlClick('','','','left',1,695, 168)
								Sleep(1000)
                                $dow=0
								For $idem =1 to 35
									  $pixcel2=PixelSearch(1335, 722,1360,742,0x606060)
									If IsArray($pixcel2) Then
										$idem=35
									Else
										$dow=$dow+1
									    Send('{DOWN}')
									    Sleep(500)
									EndIf
                                Next

											 Switch $dow
												    Case $dow=1
													$sokenhtaoduoc=20
													Case $dow=2
													$sokenhtaoduoc=23
													Case $dow=3
													$sokenhtaoduoc=23
													Case $dow=4
													$sokenhtaoduoc=26
													Case $dow=5
													$sokenhtaoduoc=29
													Case $dow=6
													$sokenhtaoduoc=32
													Case $dow=7
													$sokenhtaoduoc=35
													Case $dow=8
													$sokenhtaoduoc=35
													Case $dow=9
													$sokenhtaoduoc=38
													Case $dow=10
													$sokenhtaoduoc=41
													Case $dow=11
													$sokenhtaoduoc=44
													Case $dow=12
													$sokenhtaoduoc=47
													Case $dow=13
													$sokenhtaoduoc=47
													Case $dow=14
													$sokenhtaoduoc=50
													Case $dow=15
													$sokenhtaoduoc=53
													Case $dow=16
													$sokenhtaoduoc=56
													Case $dow=17
													$sokenhtaoduoc=59
													Case $dow=18
													$sokenhtaoduoc=59
													Case $dow=19
													$sokenhtaoduoc=62
												    Case $dow=21
													$sokenhtaoduoc=65
													Case $dow=22
													$sokenhtaoduoc=68
													Case $dow=23
													$sokenhtaoduoc=71
													Case $dow=24
													$sokenhtaoduoc=71
													Case $dow=25
													$sokenhtaoduoc=74
													Case $dow=26
													$sokenhtaoduoc=77
													Case $dow=27
													$sokenhtaoduoc=80
													Case $dow=28
													$sokenhtaoduoc=83
													Case $dow=29
													$sokenhtaoduoc=85
													Case $dow=30
													$sokenhtaoduoc=87
													Case $dow=31
													$sokenhtaoduoc=90
													Case $dow=32
													$sokenhtaoduoc=95
													Case $dow=33
													$sokenhtaoduoc=97
													Case $dow=34
													$sokenhtaoduoc=97
													Case $dow=35
													$sokenhtaoduoc=97
											 EndSwitch

									Sleep(1000)
									$pixcel2=PixelSearch(646, 680,807, 733,0x030303)
									If IsArray($pixcel2) Then
										$sokenhtaoduoc=$sokenhtaoduoc+1
									 	    $pixcel2=PixelSearch(934, 675,1080,743,0x030303)
									    If IsArray($pixcel2) Then
										    $sokenhtaoduoc=$sokenhtaoduoc+1
									    EndIf
									EndIf
									Sleep(1000)

						EndIf

				Return 	$sokenhtaoduoc
			EndFunc

		Func _FAKEip($vpsso)
                       $check= WinExists('Proxy Client Tinsoft')
					If $check=0 Then
						;Run('C:\Users\'&@UserName&'\Desktop\fakeip\Proxy Client Tinsoft.exe')
						ShellExecute('C:\Users\'&@UserName&'\Desktop\fakeip\Proxy Client Tinsoft.exe')
						Sleep(2000)
					EndIf
						Sleep(2000)
					    $ip=FileReadLine(@ScriptDir&'\Keytinsoft.txt',$vpsso)
                            $handLDplay = WinActivate("Proxy Client Tinsoft")
						    Sleep(500)
						    WinMove('Proxy Client Tinsoft','',1137,380,220,340)
							Sleep(1000)
							ControlClick('Proxy Client Tinsoft','','[NAME:button2]')   ;dissconnect
							Sleep(1500)
						    ControlClick('Proxy Client Tinsoft','','[NAME:textBox1]')
							Sleep(1000)
							Send('^a')
							Sleep(1000)
							Send('{BACKSPACE}')
							Sleep(500)
							ControlClick('Proxy Client Tinsoft','','[NAME:button2]')  ;dissconnect
							Sleep(2000)
							ControlClick('Proxy Client Tinsoft','','[NAME:radioButton1]')   ;internet opito
							Sleep(1000)
						    ControlClick('Proxy Client Tinsoft','','[NAME:textBox1]')    ;key
							Sleep(1000)
							Send($ip)
							$checkTG=0
							$check=0
							Sleep(2000)
							For $i20=1 to 200
						      $handLDplay = WinActivate("Proxy Client Tinsoft")
		                      Sleep(1000)
							  ControlClick('Proxy Client Tinsoft','','[NAME:button1]')     ; change IP tinsopt PC
							  Sleep(3000)
							  $pixcel=PixelSearch(1251, 630,1357, 708,0x008000,5)
							  If IsArray($pixcel) Then
								  $i20=200
								  $check=1
							  EndIf
							  if $i20=5 Then $checkTG=1   ;check de lui thoi gian cho
							Next
						Sleep(3000)
					Return $check
				EndFunc

    Func _loginGmail($f,$g,$h,$i)
			    $check=0
				Run("C:\Users\"&@UserName&"\AppData\Local\Google\Chrome\Application\chrome.exe")
				Sleep(2000)
				Run("C:\Program Files\Google\Chrome\Application\chrome.exe")
				Sleep(7000)
				For $i20=1 to 5
				    $check=WinExists('[CLASS:Chrome_WidgetWin_1]')
					Sleep(1000)
					If $check=1 Then $i20=10
				Next
				WinSetState('','',@SW_RESTORE)
				Sleep(2000)
				$var = WinList ("[CLASS:Chrome_WidgetWin_1]")
				For $i10 = 1 to $var[0][0]
                      If BitAnd (WinGetState ($var[$i10][1]), 2) And $var[$i10][0] <> "" Then
						    ;WinMove($var[$i10][1],'',0,0,1366,768)
							;ControlClick($var[$i10][1],'','','left',1,705, 695)
							WinSetState($var[$i10][1],'',@SW_RESTORE)
							Sleep(2000)
							WinMove($var[$i10][1],'',0,0,1366,768)
							Sleep(2000)
						EndIf
				Next

				WinMove('','',0,0,1366,768)
				Sleep(2000)
				MouseClick('left',600,60,1,20)
				Sleep(2000)
				Send('chrome://settings/clearBrowserData')
				Sleep(1000)
				Send('{enter}')
				Sleep(7000)
				MouseClick('left',802, 263,1,20)
				Sleep(2000)
				Send('{tab}')
				Sleep(1000)
				Send('{enter}')
				Sleep(3000)
				Send('{DOWN}')
				Sleep(1000)
				Send('{DOWN}')
				Sleep(1000)
				Send('{DOWN}')
				Sleep(1000)
				Send('{DOWN}')
				Sleep(1000)
				Send('{enter}')
				Sleep(4000)
				$pixcel=PixelSearch(434, 528,473, 571,0x0B57D0); xoa thong bao FF
				If Not IsArray($pixcel) Then                     ; tat trang
					Sleep(1000)
					MouseClick('left',454, 547,1,20)
					Sleep(2000)
				EndIf

				$pixcel=PixelSearch(435, 571,479, 621,0x0B57D0); xoa thong bao FF
				If Not IsArray($pixcel) Then                     ; tat trang
					Sleep(1000)
					MouseClick('left',454, 589,1,20)
					Sleep(1000)
				EndIf

				MouseClick('left',869, 638,1,20)
				Sleep(4000)
                MouseClick('left',600, 60,1,20)
				Sleep(200)
                Send('^a')
                Sleep(500)
                ClipPut('https://accounts.google.com/signin/v2/identifier?hl=vi&passive=true&continue=https%3A%2F%2Fwww.google.com%2F%3Fgws_rd%3Dssl&ec=GAZAmgQ&flowName=GlifWebSignIn&flowEntry=ServiceLogin')
                ;Send('https://accounts.google.com/signin/v2/identifier?hl=vi&passive=true&continue=https%3A%2F%2Fwww.google.com%2F%3Fgws_rd%3Dssl&ec=GAZAmgQ&flowName=GlifWebSignIn&flowEntry=ServiceLogin')
				Sleep(500)
				Send('^v')
				Sleep(1000)
				Send('{enter}')
				Sleep(4000)
				For $i20=1 to 20
				    $pixcel=PixelSearch(322, 459,1000, 527,0x1A73E8)
					If IsArray($pixcel) Then $i20=20
					Sleep(1000)
				Next
				Sleep(3000)
				Send($f,1)
				Sleep(500)
				Send('{enter}')
				Sleep(4000)
				For $i20=1 to 20
				    $pixcel=PixelSearch(322, 459,1000, 527,0x1A73E8)
					If IsArray($pixcel) Then $i20=20
					Sleep(1000)
				Next
				Sleep(3000)
				Send($g,1)
				Sleep(500)
				Send('{enter}')
                Sleep(4000)
                For $i20=1 to 20
				    $pixcel=PixelSearch(12, 289,1000, 713,0x1A73E8)
					If IsArray($pixcel) Then $i20=20
					Sleep(1000)
				Next
				;ControlClick('','','','left',1,27, 117)
				Sleep(1000)
				$x3=0
				$y3=0
				$emailkhoiphuc=_ImageSearchArea(@ScriptDir&'\emailkhoiphuc2.bmp',1,475, 564,916, 688,$x3,$y3,1)
				If $x3>0 Then
					MouseClick('left',$x3,$y3,1,20)   ; click Email khoi phuc
					Sleep(1000)
					For $i20=1 to 20
				      $pixcel=PixelSearch(322, 459,1000, 527,0x1A73E8)
					  If IsArray($pixcel) Then $i20=20
					  Sleep(1000)
					Next
				      Sleep(1000)
				      Send($h,1)
				      Sleep(500)
				      Send('{enter}')
				      Sleep(7000)
				EndIf

				$x3=0
				$y3=0
				$emailkhoiphuc=_ImageSearchArea(@ScriptDir&'\emailhhoiphuc.bmp',1,475, 564,916, 688,$x3,$y3,1)
				If $x3>0 Then
					MouseClick('left',$x3,$y3,1,20)    ; click Email khoi phuc
					Sleep(1000)
					For $i20=1 to 20
				      $pixcel=PixelSearch(322, 459,1000, 527,0x1A73E8)
					  If IsArray($pixcel) Then $i20=20
					  Sleep(1000)
					Next
				      Sleep(1000)
				      Send($h,1)
				      Sleep(500)
				      Send('{enter}')
				      Sleep(7000)
				EndIf

				$x3=0
				$y3=0
				$emailkhoiphuc=_ImageSearchArea(@ScriptDir&'\emailkhoiphuc2.bmp',1,475, 504,916, 688,$x3,$y3,1)
				If $x3>0 Then
					MouseClick('left',$x3,$y3,1,20)   ; click Email khoi phuc
					Sleep(1000)
					For $i20=1 to 20
				      $pixcel=PixelSearch(322, 459,1000, 527,0x1A73E8)
					  If IsArray($pixcel) Then $i20=20
					  Sleep(1000)
					Next
				      Sleep(1000)
				      Send($h,1)
				      Sleep(500)
				      Send('{enter}')
				      Sleep(7000)
				EndIf

				$x3=0
				$y3=0
				$emailkhoiphuc=_ImageSearchArea(@ScriptDir&'\emailhhoiphuc.bmp',1,475, 504,916, 688,$x3,$y3,1)
				If $x3>0 Then
					MouseClick('left',$x3,$y3,1,20)    ; click Email khoi phuc
					Sleep(1000)
					For $i20=1 to 20
				      $pixcel=PixelSearch(322, 459,1000, 527,0x1A73E8)
					  If IsArray($pixcel) Then $i20=20
					  Sleep(1000)
					Next
				      Sleep(1000)
				      Send($h,1)
				      Sleep(500)
				      Send('{enter}')
				      Sleep(7000)
				EndIf


				$x3=0
				$y3=0
				$emailkhoiphuc=_ImageSearch(@ScriptDir&'\emailkhoiphuc2.bmp',1,$x3,$y3,1)
				If $x3>0 Then
					MouseClick('left',$x3,$y3,1,20)   ; click Email khoi phuc
					Sleep(1000)
					For $i20=1 to 20
				      $pixcel=PixelSearch(322, 459,1000, 527,0x1A73E8)
					  If IsArray($pixcel) Then $i20=20
					  Sleep(1000)
					Next
				      Sleep(1000)
				      Send($h)
				      Sleep(500)
				      Send('{enter}')
				      Sleep(7000)
				EndIf

				$x3=0
				$y3=0
				$emailkhoiphuc=_ImageSearch(@ScriptDir&'\emailhhoiphuc.bmp',1,$x3,$y3,1)
				If $x3>0 Then
					MouseClick('left',$x3,$y3,1,20)    ; click Email khoi phuc
					Sleep(1000)
					For $i20=1 to 20
				      $pixcel=PixelSearch(322, 459,1000, 527,0x1A73E8)
					  If IsArray($pixcel) Then $i20=20
					  Sleep(1000)
					Next
				      Sleep(1000)
				      Send($h)
				      Sleep(500)
				      Send('{enter}')
				      Sleep(7000)
				EndIf

                    ;MouseClick('left',68, 178,1)
					$check=0
					Sleep(2000)
					$pixcel=PixelSearch(241, 271,1300, 500,0x8BC474,5)  ;check verry
				If not IsArray($pixcel) Then
						Sleep(2000)
						ControlClick('','','','left',1,800, 60)
					    Sleep(1000)
						Send('^a')
						Sleep(500)
						Sleep(1000)
						Send('https://myaccount.google.com/')
						Sleep(2000)
						Send('{enter}')
						Sleep(5000)
						ControlClick('','','','left',1,800, 60)
					    Sleep(1000)
						Send('^a')
						Sleep(500)
						Sleep(1000)
						Send('https://myaccount.google.com/')
						Sleep(2000)
						Send('{enter}')
						Sleep(5000)
						For $i20=1 to 10
				           $pixcel=PixelSearch(18, 163,106, 263,0xC2E7FF)
						   Sleep(1000)
						   $pixcel2=PixelSearch(18, 163,106, 263,0x1A73E8)
						   Sleep(1000)
					        If IsArray($pixcel) or IsArray($pixcel2) Then
							    $check=1
						        $i20=17
							EndIf
							Sleep(1000)
				        Next

				Else          ; bi verrry
					$check=2
				EndIf

				Return $check    ;;return 1 la ok. 0 la that bai   , 2 la bi verry
			EndFunc

	 Func _xoaprofileMOI()
                            Send("#r")
							Sleep(1000)
                            Send("firefox.exe -P")
                            Sleep(500)
                            Send('{enter}')
                            Sleep(3000)
                            WinWait('Firefox - Chọn hồ sơ người dùng','',10)
                            ControlClick('Firefox - Chọn hồ sơ người dùng','','','left',1,579, 359)
                            Sleep(1000)
							For $ixoa=1 to 5
                            MouseClick('left',582, 357,1)
                            Sleep(2000)
							MouseClick('left',834, 418,1)
							Sleep(2000)
							Next
							WinClose('Firefox - Chọn hồ sơ người dùng')
							Sleep(3000)

	EndFunc

					Func _taoprofile($i)

							Send("#r")
							Sleep(1000)
                            Send("firefox.exe -P")
                            Sleep(500)
                            Send('{enter}')
                            Sleep(3000)
                             WinWait('Firefox - Chọn hồ sơ người dùng','',10)
							 Sleep(2000)
                            ControlClick('Firefox - Chọn hồ sơ người dùng','','','left',1,82, 78)
                            Sleep(1000)
                            ControlClick('Trình tạo mới hồ sơ','','','left',1,394, 359)
                            Sleep(1000)
                            Send($i)
                            Send('-')
                            Send(Random(10000,99999,1))
                            Sleep(1000)
							ControlClick('Trình tạo mới hồ sơ','','','left',1,397, 361)
                            Sleep(2000)
                            ControlClick('Firefox - Chọn hồ sơ người dùng','','','left',1,194, 289)
                             Sleep(7000)
                            For $i20=1 to 10
                               $check=WinExists('Chào mừng đến với Firefox - Mozilla Firefox')
	                        If $check=1 Then $i20=10
                            Next
                              Sleep(3000)
							WinMove('Chào mừng đến với Firefox - Mozilla Firefox','',0,0,1366,768)
                            WinActivate('Chào mừng đến với Firefox - Mozilla Firefox')
                            Sleep(1500)
                            ControlClick('Chào mừng đến với Firefox - Mozilla Firefox','','','left',1,432, 30)
							Sleep(1000)
							ControlClick('Chào mừng đến với Firefox - Mozilla Firefox','','','left',1,432, 30)
						Return $check
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


		        Func _VerryGmail()
					$check	=0
					$pixcel=PixelSearch(241, 271,1300, 600,0x8BC474)
					    If IsArray($pixcel) Then
							For $icodeve=1 to 10
								$kq=_HttpRequest(2,'https://chothuesimcode.com/api?act=number&apik=3e99201f&appId=1005','','','','','')
								$trangThaisdt= StringMid($kq,17,1)
                                $sdt = StringMid($kq,64,9)
                                $IDsdt=StringMid($kq,45,8)
								Sleep(1000)
								MouseClick('left',740, 586,1)
								Sleep(500)
								Send('^a')
								Sleep(500)
								Send('+84',1)
								Sleep(500)
								Send($sdt)
								Sleep(1000)
								Send('{enter}')
								Sleep(5000)
								$pixcel=PixelSearch(100, 100,1000, 600,0x557DBF)
								If IsArray($pixcel) Then
									For $i20=1 to 200                        ;lay code
                                        $laycode=_HttpRequest(2,'https://chothuesimcode.com/api?act=code&apik=3e99201f&id='&$IDsdt,'','','','','')
                                        $trangThaicode= StringMid($laycode,17,1)
                                            If $trangThaicode=0 Then
	                                            $code = StringMid($laycode,64,6)
											    Send($code)
												Sleep(1000)
												Send('{enter}')
												Sleep(3000)
                                                $i20=200
												$icodeve=10
												$check	=1
                                            EndIf
                                                Sleep(1000)
									Next
											If $i20=200 Then
												MouseClick('left',23, 65,1)
												Sleep(4000)
											EndIf
								EndIf
							Next
						Else
								;FileWriteLine(@ScriptDir&'\Khongbiverry.txt',$e&'	'&$i)
						EndIf
					Return $check

                EndFunc
Func AutoRun()



	EndFunc

	Func _changeIPtinsoft($c)
						If $c=1 Then
							For $i20=1 to 30
						      $handLDplay = WinActivate("Proxy Client Tinsoft")
		                      Sleep(1000)
							  MouseClick('left',1211, 649,1)     ; change IP tinsopt PC
							  Sleep(5000)
							  $pixcel=PixelSearch(1153, 665,1227, 695,0x008000)
							  If IsArray($pixcel) Then $i20=30
							Next
						EndIf
	EndFunc


		Func _changeIPtinsoftVPS($keytinsoft)
			    $check=0
				Sleep(2000)
		        MouseClick('right',21, 750,1,20)
				Sleep(2000)
				MouseClick('left',76, 665,1,20)
				Sleep(3000)
				Send('internet options')
				Sleep(2000)
				MouseClick('left',1082, 205,1,20)
				Sleep(3000)
				WinMove('Internet Properties','',0,0)
				Sleep(1000)
				MouseClick('left',247, 51,1,20)
				Sleep(1000)
				MouseClick('left',332, 404,1,20)  ;LAN
				Sleep(2000)
				WinMove('Local Area Network (LAN) Settings','',0,0)
				Sleep(1000)
				$pixcel=PixelSearch(41, 234,95, 293,0x000000,10)
				If Not IsArray($pixcel) Then
					MouseClick('left',77, 210,1,20)
					Sleep(1000)
					$pixcel2=PixelSearch(43, 256,65, 285,0x202020,10)   ;dau tich thu 2
					If Not IsArray($pixcel2) Then MouseClick('left',69, 268,1,20)
				Else

                EndIf

				For $i20=1 to 30
                     $check=0
					 $kq=_HttpRequest(2,'http://proxy.tinsoftsv.com/api/changeProxy.php?key='&$keytinsoft,'','','','','')
					 $trangThai= StringMid($kq,12,4)
					If $trangThai='true' Then
                        $iptho=StringSplit($kq,',')
						If IsArray($iptho) Then
							    $iptho2=StringSplit($iptho[2],':')
							    If IsArray($iptho2) Then
									$ip=StringTrimLeft($iptho2[2],1)
									$port=StringTrimRight($iptho2[3],1)
			                        $i20=30
									$check=1
								EndIf
								$timeoutTHO=StringSplit($iptho[5],':')
						EndIf
					Else   ; key loi thi change lai
						Sleep(20000)
					EndIf
				Next

				MouseClick('left',156, 244,1,20)  ;clcik IP
				Sleep(1000)
				Send('^a')
				Sleep(500)
				Send('^a')
				Sleep(500)
				Send($ip)
				Sleep(500)
				MouseClick('left',260, 243,1,20)   ;click port
				Sleep(1000)
				Send('^a')
				Sleep(500)
				Send('^a')
				Sleep(500)
				Send($port)
				Sleep(500)
				MouseClick('left',254, 316,1,20) ;ok
				Sleep(2000)
				MouseClick('left',205, 515,1,20) ;ok
				Sleep(2000)
			Return $check
        EndFunc

		Func _changeIPtinsoftWin10($keytinsoft)
			    $check=0
		        Sleep(2000)
				MouseClick('left',146, 749,1,20)
				Sleep(2000)
				Send('internet options')
				Sleep(1000)
				Send('{enter}')
				Sleep(2000)
				WinMove('Internet Properties','',0,0)
				Sleep(1000)
				MouseClick('left',247, 51,1,20)
				Sleep(1000)
				MouseClick('left',332, 404,1,20)  ;LAN
				Sleep(2000)
				WinMove('Local Area Network (LAN) Settings','',0,0)
				Sleep(1000)
				$pixcel=PixelSearch(41, 234,95, 293,0x000000,10)
				If Not IsArray($pixcel) Then
					MouseClick('left',77, 210,1,20)
					Sleep(1000)
					$pixcel2=PixelSearch(43, 256,65, 285,0x202020,10)   ;dau tich thu 2
					If Not IsArray($pixcel2) Then MouseClick('left',69, 268,1,20)
				Else

                EndIf

				For $i20=1 to 30
                     $check=0
					 $kq=_HttpRequest(2,'http://proxy.tinsoftsv.com/api/changeProxy.php?key='&$keytinsoft,'','','','','')
					 $trangThai= StringMid($kq,12,4)
					If $trangThai='true' Then
                        $iptho=StringSplit($kq,',')
						If IsArray($iptho) Then
							    $iptho2=StringSplit($iptho[2],':')
							    If IsArray($iptho2) Then
									$ip=StringTrimLeft($iptho2[2],1)
									$port=StringTrimRight($iptho2[3],1)
			                        $i20=30
									$check=1
								EndIf
								$timeoutTHO=StringSplit($iptho[5],':')
						EndIf
					Else   ; key loi thi change lai
						Sleep(20000)
					EndIf
				Next

				MouseClick('left',156, 244,1,20)  ;clcik IP
				Sleep(1000)
				Send('^a')
				Sleep(500)
				Send('^a')
				Sleep(500)
				Send($ip)
				Sleep(500)
				MouseClick('left',260, 243,1,20)   ;click port
				Sleep(1000)
				Send('^a')
				Sleep(500)
				Send('^a')
				Sleep(500)
				Send($port)
				Sleep(500)
				MouseClick('left',254, 316,1,20) ;ok
				Sleep(2000)
				MouseClick('left',205, 515,1,20) ;ok
				Sleep(2000)
			Return $check
        EndFunc


Func _Exit()
	Exit
EndFunc   ;==>_Exit

