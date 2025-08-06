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
#include <FileConstants.au3>
Opt("SendKeyDelay",30)
$phienban='1.0.80'

    Func _ThemSDT($SDT)

								MouseClick('left',720, 300,1,20)
				                Sleep(2000)
						        Send('{tab}')
						        Sleep(2000)
						        Send('{tab}')
						        Sleep(2000)
						        Send('{enter}')
						        Sleep(7000)
						        Send('{tab}')
						        Sleep(2000)
						        Send('+84',1)
						        Sleep(3000)
						        Send($SDT)
						        Sleep(2000)
						        Send('{tab}')
								Sleep(2000)
						        Send('{tab}')
						        Sleep(2000)
						        Send('{tab}')
						        Sleep(2000)
						        Send('{enter}')
						        Sleep(6000)
								Send('{tab}')
						        Sleep(2000)
						        Send('{enter}')
						        Sleep(6000)
	EndFunc

    Func _LayMaAuthen($Key2fa)

			If StringLen($Key2fa)>30	Then
				Sleep(2000)
				$Key2fa=StringReplace($Key2fa,'|',' ')
				Sleep(1000)
                Run('C:\Users\'&@UserName&'\Desktop\WinAuth')
				Sleep(5000)
				WinActivate('WinAuth')
				Sleep(1000)
				WinMove('','',0,0,415,250)
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
				        Sleep(5000)
						Send('{enter}')
						Sleep(3000)
						Send('{enter}')
						Sleep(3000)

				For $i20=1 to 10
						$checkProtection=WinExists('Protection')
						If $checkProtection=1 Then
							$i20=10

							MouseClick('left',776,506,1,20)
							Sleep(3000)
							MouseClick('left',810,655,1,20)
							Sleep(1000)
							WinMove('Protection','',0,0)
							Sleep(2000)
							MouseClick('left',752, 16,1,20)
							Sleep(1000)
							WinClose('Protection')
							Sleep(1000)

						EndIf
						Sleep(2000)
				Next

              EndIf

		                    WinActivate('WinAuth')
				            Sleep(1000)
				            $pixcel=PixelSearch(10, 130,110, 190,0x00ABDA)
				            If IsArray($pixcel) Then
					            MouseClick('left',365, 158,1,20)
					            Sleep(1000)
					            MouseClick('right',370, 158,1,20)
				            Else

					            MouseClick('left',364,93,1,20)
					            Sleep(1000)
								MouseClick('right',364,93,1,20)
				            EndIf
				            Sleep(1000)
				            Send('{tab}')
				            Sleep(1000)
				            Send('{tab}')
				            Sleep(1000)
				            Send('{tab}')
				            Sleep(1000)
				            Send('{enter}')
				            Sleep(300)
				            $code=ClipGet()
				            Sleep(1000)
							MouseClick('left',400, 300,1,20)
				            Sleep(1000)
				            Send('{tab}')
				            Sleep(1000)
				            Send('{tab}')
				            Sleep(1000)
				            Send($code)
							Sleep(1000)
				            Send('{enter}')
				            Sleep(10000)

	EndFunc


    Func _LayGmail($vpsso)


              ; $sodu=Int($vpsso/5)				     ;bản 1.1.60
				;$checkThoigian=$sodu*20*60           ;bản 1.1.60
				;If $sodu=0 Then $checkThoigian=1     ;bản 1.1.60
				;MsgBox(0,0,'chờ tác gamil:'&$vpsso,$checkThoigian ) ;bản 1.1.60
			#cs
				If 0<$vpsso and $vpsso<6 Then
					For $i20=1 to 10
					   $Gmailtho=FileReadLine(@ScriptDir&'\Gmailtho.txt',$i20)
					   FileWriteLine(@ScriptDir&'\Gmail.txt',$Gmailtho)
					Next
				EndIf
				If 5<$vpsso and $vpsso<11 Then
					For $i20=11 to 20
					   $Gmailtho=FileReadLine(@ScriptDir&'\Gmailtho.txt',$i20)
					   FileWriteLine(@ScriptDir&'\Gmail.txt',$Gmailtho)
					Next
				EndIf
				If 10<$vpsso and $vpsso<16 Then
					For $i20=21 to 30
					   $Gmailtho=FileReadLine(@ScriptDir&'\Gmailtho.txt',$i20)
					   FileWriteLine(@ScriptDir&'\Gmail.txt',$Gmailtho)
					Next
				EndIf
				If 15<$vpsso and $vpsso<21 Then
					For $i20=31 to 40
					   $Gmailtho=FileReadLine(@ScriptDir&'\Gmailtho.txt',$i20)
					   FileWriteLine(@ScriptDir&'\Gmail.txt',$Gmailtho)
					Next
				EndIf
				If 20<$vpsso and $vpsso<26 Then
					For $i20=41 to 50
					   $Gmailtho=FileReadLine(@ScriptDir&'\Gmailtho.txt',$i20)
					   FileWriteLine(@ScriptDir&'\Gmail.txt',$Gmailtho)
					Next
				EndIf
				If 25<$vpsso and $vpsso<31 Then
					For $i20=51 to 60
					   $Gmailtho=FileReadLine(@ScriptDir&'\Gmailtho.txt',$i20)
					   FileWriteLine(@ScriptDir&'\Gmail.txt',$Gmailtho)
					Next
				EndIf
				If 30<$vpsso and $vpsso<36 Then
					For $i20=61 to 70
					   $Gmailtho=FileReadLine(@ScriptDir&'\Gmailtho.txt',$i20)
					   FileWriteLine(@ScriptDir&'\Gmail.txt',$Gmailtho)
					Next
				EndIf

				If 35<$vpsso and $vpsso<41 Then
					For $i20=71 to 80
					   $Gmailtho=FileReadLine(@ScriptDir&'\Gmailtho.txt',$i20)
					   FileWriteLine(@ScriptDir&'\Gmail.txt',$Gmailtho)
					Next
				EndIf
				If 40<$vpsso and $vpsso<46 Then
					For $i20=81 to 90
					   $Gmailtho=FileReadLine(@ScriptDir&'\Gmailtho.txt',$i20)
					   FileWriteLine(@ScriptDir&'\Gmail.txt',$Gmailtho)
					Next
				EndIf
				If 45<$vpsso and $vpsso< 51 Then
					For $i20=91 to 100
					   $Gmailtho=FileReadLine(@ScriptDir&'\Gmailtho.txt',$i20)
					   FileWriteLine(@ScriptDir&'\Gmail.txt',$Gmailtho)
					Next
				EndIf

				If 50<$vpsso and $vpsso< 56 Then
					For $i20=101 to 110
					   $Gmailtho=FileReadLine(@ScriptDir&'\Gmailtho.txt',$i20)
					   FileWriteLine(@ScriptDir&'\Gmail.txt',$Gmailtho)
					Next
				EndIf

				If 55<$vpsso and $vpsso< 61 Then
					For $i20=111 to 120
					   $Gmailtho=FileReadLine(@ScriptDir&'\Gmailtho.txt',$i20)
					   FileWriteLine(@ScriptDir&'\Gmail.txt',$Gmailtho)
					Next
				EndIf

				If 60<$vpsso and $vpsso< 66 Then
					For $i20=121 to 130
					   $Gmailtho=FileReadLine(@ScriptDir&'\Gmailtho.txt',$i20)
					   FileWriteLine(@ScriptDir&'\Gmail.txt',$Gmailtho)
					Next
				EndIf

				If 65<$vpsso and $vpsso< 71 Then
					For $i20=131 to 140
					   $Gmailtho=FileReadLine(@ScriptDir&'\Gmailtho.txt',$i20)
					   FileWriteLine(@ScriptDir&'\Gmail.txt',$Gmailtho)
					Next
				EndIf

				If 70<$vpsso and $vpsso< 76 Then
					For $i20=141 to 150
					   $Gmailtho=FileReadLine(@ScriptDir&'\Gmailtho.txt',$i20)
					   FileWriteLine(@ScriptDir&'\Gmail.txt',$Gmailtho)
					Next
				EndIf

				If 75<$vpsso and $vpsso< 81 Then
					For $i20=151 to 160
					   $Gmailtho=FileReadLine(@ScriptDir&'\Gmailtho.txt',$i20)
					   FileWriteLine(@ScriptDir&'\Gmail.txt',$Gmailtho)
					Next
				EndIf

				If 80<$vpsso and $vpsso< 86 Then
					For $i20=161 to 170
					   $Gmailtho=FileReadLine(@ScriptDir&'\Gmailtho.txt',$i20)
					   FileWriteLine(@ScriptDir&'\Gmail.txt',$Gmailtho)
					Next
				EndIf

				If 85<$vpsso and $vpsso< 91 Then
					For $i20=171 to 180
					   $Gmailtho=FileReadLine(@ScriptDir&'\Gmailtho.txt',$i20)
					   FileWriteLine(@ScriptDir&'\Gmail.txt',$Gmailtho)
					Next
				EndIf

				If 90<$vpsso and $vpsso< 96 Then
					For $i20=181 to 190
					   $Gmailtho=FileReadLine(@ScriptDir&'\Gmailtho.txt',$i20)
					   FileWriteLine(@ScriptDir&'\Gmail.txt',$Gmailtho)
					Next
				EndIf

				If 95<$vpsso and $vpsso< 101 Then
					For $i20=191 to 200
					   $Gmailtho=FileReadLine(@ScriptDir&'\Gmailtho.txt',$i20)
					   FileWriteLine(@ScriptDir&'\Gmail.txt',$Gmailtho)
					Next
			   EndIf
			#ce
	EndFunc

    Func _randomprofilr($i)

		            ControlClick('','','','left',1,500, 60)
				    ;If $i=8 Then MouseClick('left',800, 75,1,20)
				    Sleep(3000)
				    ClipPut('https://www.youtube.com')
				    ;Send('^v')
				    Sleep(50)
			  	    Send('^v')
				    Sleep(2000)
				    Send('{enter}')
				    Sleep(10000)
					For $i20=1 to 20
				          $pixcel=PixelSearch(76, 90,200, 360,0xFF0000)
					       If IsArray($pixcel) Then
							  MouseClick('left',$pixcel[0]+5,$pixcel[1]+5,1,20)
							  Sleep(10000)
							  $i20=20
						   EndIf
						   Sleep(1000)
					Next
				If IsArray($pixcel) Then
					For $i20=1 to 8
						Send('{tab}')
						Sleep(1000)
					Next
					Send('{enter}')
					Sleep(3000)
					For $i20=1 to 3
						Send('{tab}')
						Sleep(1000)
					Next
					Send('{enter}')
					Sleep(3000)
					For $i20=3 to Random(3,34,1)
						Send('{tab}')
						Sleep(1000)
					Next
                    Send('{enter}')
					Sleep(5000)
				EndIf
	EndFunc

    Func _LayIDvaDangnhap($i5,$i)
		;For $icheck2=1 to 2
			ToolTip('Gmailso:'&$i&'	phien ban:'&$phienban,0,0)
            $vpsso=Random(1,100,1)
		    Sleep(2000)
			$check=0
            _khoidongFireFox($i)
			_loginGmail($i)
			$check=_chonProFileFFv6($i5,$i,$vpsso)
		    Sleep(2000)
			If $check=1 Then $icheck2=2
			_closeTrinhDuyet($i)
		;Next
			Return $check
	EndFunc

    Func _CapNhatPhienBan()

		        FileDelete(@ScriptDir&'\KiemTraPhienBan.txt')
				Sleep(1000)
				_requetTextDoc('https://textdoc.co/index.php/ypJxUFiaBrWjohGS','KiemTraPhienBan.txt')
				Sleep(2000)
				$PhienBanMoi=FileReadLine(@ScriptDir&'\KiemTraPhienBan.txt',1)
				Sleep(1000)
				If $PhienBanMoi<>$phienban Then

					$SokiTuKiemTraPhienBan=FileReadLine(@ScriptDir&'\KiemTraPhienBan.txt',1)
				    If StringLen($SokiTuKiemTraPhienBan)>3 Then
                        _resetMang(1)
						FileDelete('C:\Users\'&@UserName&'\Downloads\func3.au3')
		                Sleep(1000)
					    For $i20=1 to 2
		                    If $i20=1 Then _GetDOSOutput('start chrome "https://github.com/buichung12/IPv6nopass/blob/main/func3.au3"')
				            if $i20=2 Then _GetDOSOutput('start chrome "https://drive.usercontent.google.com/u/0/uc?id=1EHYwiVfwBzSppv3jvcTc6srFKrapLowN&export=download"')
                            Sleep(7000)
		                    Send('{enter}')
		                    Sleep(8000)
		                    Send('^+s')
		                    Sleep(15000)
				            FileCopy("C:\Users\"&@UserName&"\Downloads\func3.au3","C:\Users\"&@UserName&"\Desktop\csFireFox - 10 sea", 1)
						    If FileExists("C:\Users\"&@UserName&"\Desktop\csFireFox - 10 sea\func3.au3")=1 Then $i20=3
		                    Sleep(2000)
			            Next

					    Sleep(1000)
					    _GetDOSOutput('shutdown -r -t 0')

				    EndIf

				EndIf
				Sleep(10000)
	EndFunc

    Func _kiemtratrinhduyet($i5,$i,$vpsso,$trusomaybandau)

		$chochay=$vpsso-$trusomaybandau
            If $chochay<>0 Then
                For $i20=1 to $chochay
					$hieuso=($chochay-$i20)*5
		            ToolTip('cho cai dat '&$hieuso&'	phien ban:'&$phienban,0,0)
                    MsgBox(0,0,'cho cai dat',5*60)
		       Next
			EndIf

			ToolTip('Xoa DaTa trinh duyet'&'	phien ban:'&$phienban,0,0)

            $TrangThaiDangNhap='1'

		    _resetMang(1)
		    FileDelete('C:\Users\'&@UserName&'\Downloads\func3.au3')
		    Sleep(1000)
            For $i20=1 to 4
			  $i21=Random(1,4,1)
				FileDelete('C:\Users\'&@UserName&'\Downloads\func3.au3')
		        if  $i21=1 Then _GetDOSOutput('start chrome "https://github.com/buichung12/IPv6nopass/blob/main/func3.au3"')
				if  $i21=2 Then _GetDOSOutput('start chrome "https://drive.usercontent.google.com/u/0/uc?id=1EHYwiVfwBzSppv3jvcTc6srFKrapLowN&export=download"')
				if  $i21=3 Then
                    _GetDOSOutput('start chrome "https://mega.nz/file/js4U1QhB#WxPscJD1z71PYmEKAa7BDCHJ9r7boRtPlhh7MaEvQXY"')
					Sleep(15000)
                    $pixcel=PixelSearch(818, 464,1290, 743,0x2CC294)   ; xoa loi edge
					If IsArray($pixcel) Then
                        Sleep(2000)
						MouseClick('left',$pixcel[0]+5,$pixcel[1],1,20)
						Sleep(5000)
					EndIf

				EndIf

				if  $i21=4 Then
					_GetDOSOutput('start chrome "https://mega.nz/file/FMxXmCqb#xqbX3IXIweIEE7K4smO0LUfk0BEtImTRMV2v_tf1D_0"')
					Sleep(15000)
                    $pixcel=PixelSearch(818, 464,1290, 743,0x2CC294)   ; xoa loi edge
					If IsArray($pixcel) Then
                        Sleep(2000)
						MouseClick('left',$pixcel[0]+5,$pixcel[1],1,20)
						Sleep(5000)
					EndIf

				EndIf

                Sleep(7000)
		        Send('{enter}')
		        Sleep(8000)
		        Send('^+s')
		        Sleep(15000)
				FileCopy("C:\Users\"&@UserName&"\Downloads\func3.au3","C:\Users\"&@UserName&"\Desktop\csFireFox - 10 sea", 1)
				Sleep(1000)
				If FileExists('C:\Users\'&@UserName&'\Downloads\func3.au3')=1 Then $i20=4
		         Sleep(2000)


			Next

			;check phien ban
			                            FileDelete(@ScriptDir&'\KiemTraPhienBan.txt')
			                            Sleep(1000)
			                            _requetTextDoc('https://textdoc.co/index.php/ypJxUFiaBrWjohGS','KiemTraPhienBan.txt')
			                            Sleep(3000)
			                            $PhienBanMoi=FileReadLine(@ScriptDir&'\KiemTraPhienBan.txt',1)
										Sleep(1000)
										FileDelete(@ScriptDir&'\KiemTraPhienBan.txt')
										Sleep(1000)
			                            If $PhienBanMoi<>$phienban Then
											FileDelete(@ScriptDir&'\KiemTraPhienBan.txt')
											Sleep(1000)
											_GetDOSOutput('shutdown -r -t 0')
										EndIf
										Sleep(10000)


			FileDelete("C:\Users\"&@UserName&"\Downloads\WinAuth.exe")
			Sleep(1000)
            $checkWinAuth=FileExists('C:\Users\'&@UserName&'\Desktop\WinAuth.exe')
            If 	$checkWinAuth=0 Then
                _GetDOSOutput('start chrome "https://github.com/buichung12/IPv6nopass/raw/refs/heads/main/WinAuth.exe"')
			    Sleep(15000)
				ProcessClose('chrome.exe')
				Sleep(2000)
				FileCopy("C:\Users\"&@UserName&"\Downloads\WinAuth.exe",'C:\Users\'&@UserName&'\Desktop',1)

            EndIf

			FileDelete(@ScriptDir&'\gmailkhoiphucCoMatKhau.txt')
			_requetGooGleDOC('https://docs.google.com/document/d/14wywJJt6GlHEfF3NQ0_Xr7wNrFGChNzvpl_0nZXTlKw/export?format=txt','gmailkhoiphucCoMatKhau.txt')


		    FileDelete("C:\Users\"&@UserName&"\Downloads\ToolCopyKhoiDongVaChuongTrinhChinh.exe")
			Sleep(1000)
			FileDelete("C:\Users\"&@UserName&"\Downloads\ToolCopyKhoiDongVaChuongTrinhChinh.au3")
			Sleep(1000)

		    _GetDOSOutput('start chrome "https://github.com/buichung12/IPv6nopass/raw/main/ToolCopyKhoiDongVaChuongTrinhChinh.exe"')
			Sleep(10000)
			FileCopy("C:\Users\"&@UserName&"\Downloads\ToolCopyKhoiDongVaChuongTrinhChinh.exe",'C:\Users\'&@UserName&'\Desktop',1)
		    Sleep(1000)
		    _GetDOSOutput('start chrome "https://github.com/buichung12/IPv6nopass/blob/main/ToolCopyKhoiDongVaChuongTrinhChinh.au3"')
			Sleep(10000)
			Send('^+s')
		    Sleep(10000)
		    $var = WinList ("[CLASS:Chrome_WidgetWin_1]")
			    Sleep(1000)
		    If $var[0][0]=0 Then $var = WinList ("[CLASS:MozillaWindowClass]")
		    Sleep(1000)
		    For $i10 = 1 to $var[0][0]
			    If BitAnd (WinGetState ($var[$i10][1]), 2) And $var[$i10][0] <> "" Then
		            WinMove($var[$i10][1],'',0,0,1366,768)
			    EndIf
		    Next
		    Send('^+s')
		    Sleep(10000)

			FileCopy("C:\Users\"&@UserName&"\Downloads\ToolCopyKhoiDongVaChuongTrinhChinh.au3",'C:\Users\'&@UserName&'\Desktop',1)
		    Sleep(1000)
			_closeTrinhDuyet(1)


            FileDelete('C:\Users\'&@UserName&'\Downloads\khoidong.au3')
		    Sleep(1000)
			_GetDOSOutput('start chrome "https://github.com/buichung12/IPv6nopass/blob/main/khoidong.au3"')     ;dowload tool khoi dong
            Sleep(7000)
		    Send('{enter}')
			Sleep(10000)
			Send('^+s')
		    Sleep(10000)
		    $var = WinList ("[CLASS:Chrome_WidgetWin_1]")
			    Sleep(1000)
		    If $var[0][0]=0 Then $var = WinList ("[CLASS:MozillaWindowClass]")
		    Sleep(1000)
		    For $i10 = 1 to $var[0][0]
			    If BitAnd (WinGetState ($var[$i10][1]), 2) And $var[$i10][0] <> "" Then
		            WinMove($var[$i10][1],'',0,0,1366,768)
			    EndIf
		    Next
		    Send('^+s')
		    Sleep(10000)

			FileCopy('C:\Users\'&@UserName&'\Downloads\khoidong.au3','C:\Users\'&@UserName&'\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup',1)    ;C:\Users\buichung\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
		    Sleep(1000)
			_closeTrinhDuyet(1)


            FileDelete('C:\Users\'&@UserName&'\Downloads\sub.png')
			Sleep(200)
            ToolTip('update sub3.BMP'&'	phien ban:'&$phienban,0,0)
			_GetDOSOutput('start chrome "https://github.com/buichung12/IPv6nopass/blob/main/sub.png"')
			Sleep(10000)
			Send('^+s')
			Sleep(2000)

			FileDelete('C:\Users\'&@UserName&'\Downloads\sub2.png')
			Sleep(200)
            ToolTip('update sub3.BMP'&'	phien ban:'&$phienban,0,0)
			_GetDOSOutput('start chrome "https://github.com/buichung12/IPv6nopass/blob/main/sub2.png"')
			Sleep(10000)
			Send('^+s')
			Sleep(2000)
			FileDelete('C:\Users\'&@UserName&'\Downloads\sub.bmp')
			Sleep(200)
            ToolTip('update sub3.BMP'&'	phien ban:'&$phienban,0,0)
			_GetDOSOutput('start chrome "https://github.com/buichung12/IPv6nopass/blob/main/sub.bmp"')
			Sleep(10000)
			Send('^+s')
			Sleep(5000)
			FileDelete('C:\Users\'&@UserName&'\Downloads\sub2.bmp')
			Sleep(200)
            ToolTip('update sub3.BMP'&'	phien ban:'&$phienban,0,0)
			_GetDOSOutput('start chrome "https://github.com/buichung12/IPv6nopass/blob/main/sub2.bmp"')
			Sleep(10000)
			Send('^+s')
			Sleep(5000)
			FileCopy('C:\Users\'&@UserName&'\Downloads\sub.png','C:\Users\'&@UserName&'\Desktop\csFireFox - 10 sea',1)
		    Sleep(1000)
			FileCopy('C:\Users\'&@UserName&'\Downloads\sub2.png','C:\Users\'&@UserName&'\Desktop\csFireFox - 10 sea',1)
		    Sleep(1000)
			FileCopy('C:\Users\'&@UserName&'\Downloads\sub.bmp','C:\Users\'&@UserName&'\Desktop\csFireFox - 10 sea',1)
		    Sleep(1000)
			FileCopy('C:\Users\'&@UserName&'\Downloads\sub2.bmp','C:\Users\'&@UserName&'\Desktop\csFireFox - 10 sea',1)
		    Sleep(1000)
			_closeTrinhDuyet(1)


			FileDelete('C:\Users\'&@UserName&'\Downloads\tool update code.au3')
		    Sleep(1000)
	        _GetDOSOutput('start chrome "https://github.com/buichung12/IPv6nopass/blob/main/tool%20update%20code.au3"')     ;dowload tool up date
            Sleep(15000)
		    WinMove('','',0,0,1366,768)
		    Sleep(2000)
		    Send('^+s')
		    Sleep(15000)
		    FileCopy('C:\Users\'&@UserName&'\Downloads\tool update code.au3','C:\Users\'&@UserName&'\Desktop\csFireFox - 10 sea',1)
		    Sleep(3000)

            _closeTrinhDuyet(1)

			Sleep(1000)
			ToolTip('kiem tra trinh duyet'&'	phien ban:'&$phienban,0,0)

        #cs
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


		        _resetMang($i)


			$check=FileExists('C:\Program Files\BraveSoftware\Brave-Browser\Application\brave.exe')
			If $check=0 Then
				    $i=2
				    Run('C:\Users\'&@UserName&'\Desktop\trinh duyet\BraveBrowserSetup.exe')
					Sleep(5000)
					MouseClick('left',782, 463,1,20)
				    Sleep(120000)
				    For $i20=1 to 50

					    $check=WinExists('Welcome to Brave - Brave')
					    If $check=1 Then
						    Sleep(2000)
						    $i20=50
						    $check=1
					    EndIf
					    Sleep(3000)
				    Next

				     MouseClick('left',536,606,1,20)
				    Sleep(5000)
					MouseClick('left',471,662,1,20)
				    Sleep(5000)
					MouseClick('left',528,69,1,20)
				    Sleep(5000)
					MouseClick('left',540,572,1,20)
				    Sleep(5000)
				    WinMove('','',0,0,1366,768)
				    Sleep(1000)
				    _closeTrinhDuyet($i)
			Else
				    $check11=1
			EndIf


			$check=FileExists('C:\Users\'&@UserName&'\AppData\Local\Maxthon\Application\Maxthon.exe')

			$check=FileExists('C:\portapps\brave-portable\brave-portable.exe')
			    If $check=0 Then
				    $i=2
				    Run('C:\Users\'&@UserName&'\Desktop\trinh duyet\brave-portable-win64-1.43.89-84-setup')
				    Sleep(2000)
					;Run('C:\Users\'&@UserName&'\Downloads\brave-portable-win32-0.24.0-39-setup.exe')
				    Sleep(10000)
					MouseClick('left',782, 463,1,20)
					Sleep(7000)
					WinMove('','',0,0)
					Sleep(3000)
					Send('{enter}')
					Sleep(5000)
					MouseClick('left',50, 300,1,20)
				    Sleep(3000)
					MouseClick('left',50, 300,1,20)
				    Sleep(5000)
					Send('{enter}')
					Sleep(5000)
					Send('{enter}')
					Sleep(5000)
					Send('{enter}')
					Sleep(90000)
					Send('{enter}')
					Sleep(5000)
				    _closeTrinhDuyet($i)
			    Else
				    $check11=1
		        EndIf



			$check=FileExists("C:\Users\"&@UserName&"\Desktop\trinh duyet\FirefoxPortable\FirefoxPortable.exe")
		    If $check=0 Then

				$i=6
				Run('C:\Users\'&@UserName&'\Desktop\trinh duyet\FirefoxPortable-87-0-English-paf.exe')
				Sleep(5000)
				MouseClick('left',781,462,1,20)
				Sleep(10000)
				Send('{enter}')
				Sleep(5000)
				Send('{enter}')
				Sleep(90000)
				Send('{enter}')
				Sleep(5000)

			Else
				$check12=1
		    EndIf

                $check=FileExists("C:\Program Files (x86)\Mozilla Firefox\firefox.exe")
				$check2=FileExists("C:\Program Files\Mozilla Firefox\firefox.exe")
			If $check=0 And $check2=0 Then

				$i=7
				Run('C:\Users\'&@UserName&'\Desktop\trinh duyet\Firefox Installer.exe')
				Sleep(15000)
				MouseClick('left',523, 543,1,20)
				ControlClick('Open File - Security Warning','&Run','[CLASS:Button; INSTANCE:1]','left',1,40, 12)
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
	            Sleep(2000)
				WinMove('','',0,0,1366,768)
				Sleep(1000)
				_closeTrinhDuyet($i)
				Sleep(2000)

				$i=7
				 _khoidongFireFox($i)
				 Sleep(2000)
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



	        $check=FileExists("C:\Program Files (x86)\CocCoc\Browser\Application\browser.exe")
			$check1=FileExists("C:\Program Files\CocCoc\Browser\Application\browser.exe")
			Sleep(1000)
			If $check=0 and $check1=0 Then
				$i=3
                Run('C:\Users\'&@UserName&'\Desktop\trinh duyet\CocCocSetup.exe')
				Sleep(5000)
				MouseClick('left',780,462,1,20)
				Sleep(10000)
				MouseClick('left',720,566,1,20)
				Sleep(1000)
				ControlClick('Đang chạy..., Trình cài đặt Cốc Cốc','Cài đặt','[CLASS:Button; INSTANCE:2]')
				Sleep(90000)
				For $i20=1 to 30
					$pixcel=PixelSearch(585,164,880,360,0xF16037,5)
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
							Send('{enter}')
				            Sleep(10000)
					EndIf
					Sleep(5000)
				Next

				WinClose('Thẻ mới - Cốc Cốc')
				Sleep(3000)
				WinClose('Thẻ mới - Cốc Cốc')
				Sleep(2000)
				_closeTrinhDuyet($i)

			Else
				$check14=1
            EndIf


			 $check=FileExists('C:\Users\'&@UserName&'\Desktop\GoogleChromePortable\GoogleChromePortable.exe')
			If $check=0 Then
				$i=5
				_GetDOSOutput('start chrome "https://github.com/buichung12/IPv6nopass/raw/refs/heads/main/GoogleChromePortable_134.0.6998.166_online.paf.exe"')
			    Sleep(15000)

				If FileExists('C:\Users\"&@UserName&"\Downloads\GoogleChromePortable_134.0.6998.166_online.paf.exe')=0 Then
					_GetDOSOutput('start chrome "https://github.com/buichung12/IPv6nopass/raw/refs/heads/main/GoogleChromePortable_134.0.6998.166_online.paf.exe"')
					Sleep(15000)
				EndIf

		     	FileCopy("C:\Users\"&@UserName&"\Downloads\GoogleChromePortable_134.0.6998.166_online.paf.exe",'C:\Users\'&@UserName&'\Desktop',1)
		        Sleep(2000)
				Run('C:\Users\'&@UserName&'\Desktop\GoogleChromePortable_134.0.6998.166_online.paf.exe')
				Sleep(5000)
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
				Sleep(5000)
				_closeTrinhDuyet($i)

				Run('C:\Users\'&@UserName&'\Desktop\GoogleChromePortable\GoogleChromePortable.exe')
				Sleep(5000)
				For $i20=1 to 50
					$pixcel=PixelSearch(600, 150,800, 350,0x1A73E8,5)
					If IsArray($pixcel) Then                     ; tat trang
						    Sleep(1000)
							MouseClick('left',$pixcel[0],$pixcel[1],20)
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

				_closeTrinhDuyet($i)
				Sleep(10000)

			Else
				$check15=1
            EndIf



                 $check=FileExists('C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe')
				 $check1=FileExists('C:\Program Files\Microsoft\Edge\Application\msedge.exe')
			If $check=0 and $check1=0 Then
				$i=1

                Run('C:\Users\'&@UserName&'\Desktop\trinh duyet\MicrosoftEdgeSetup (1).exe')
				Sleep(90000)
				For $i20=1 to 50
					        $pixcel=PixelSearch(600, 569,808, 758,0x0078D4,5)
					    If IsArray($pixcel) Then                     ; tat trang
						    $i20=50
							Sleep(2000)
							MouseClick('left',$pixcel[0]+5,$pixcel[1]+5,1,20)
					    EndIf
					Sleep(1000)
				Next
				    Sleep(3000)
				For $i20=1 to 10
					        $pixcel=PixelSearch(600, 569,980, 700,0x0078D4,5)
					    If IsArray($pixcel) Then                     ; tat trang
						    $i20=50
							Sleep(2000)
							MouseClick('left',$pixcel[0]+5,$pixcel[1]+5,1,20)
					    EndIf
					Sleep(1000)
				Next
				Sleep(2000)
				For $i20=1 to 10
					        $pixcel=PixelSearch(600, 569,980, 700,0x0078D4,5)
					    If IsArray($pixcel) Then                     ; tat trang
						    $i20=50
							Sleep(2000)
							MouseClick('left',$pixcel[0]+5,$pixcel[1]+5,1,20)
					    EndIf
					Sleep(1000)
				Next
				Sleep(2000)
				MouseClick('left',987, 167,1,20)
				_closeTrinhDuyet($i)
				Sleep(2000)
				Run("C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe")
				Run("C:\Program Files\Microsoft\Edge\Application\msedge.exe")

				Sleep(5000)
				WinClose('Khôi phục trang')
				Sleep(1000)

                WinSetState('Tab mới - Hồ sơ 1 - Microsoft​ Edge','',@SW_RESTORE)
				Sleep(2000)
				WinMove('','',0,0,1366,768)
				Sleep(1000)
				_closeTrinhDuyet($i)

			Else
				$check16=1
            EndIf

               $check=FileExists("C:\Users\"&@UserName&"\AppData\Local\Chromium\Application\chrome.exe")
			If $check=0 Then

				$i=8
				Run('C:\Users\'&@UserName&'\Desktop\trinh duyet\chromium (1).exe')
				Sleep(5000)
				MouseClick('left',780,460,1,20)
				Sleep(120000)
				WinMove('','',0,0,1366,768)
				Sleep(2000)
				_closeTrinhDuyet($i)

			Else
				$check17=1
            EndIf



                $check=FileExists("C:\Program Files (x86)\SlimBrowser\slimbrowser.exe")
				$check1=FileExists("C:\Program Files\SlimBrowser\slimbrowser.exe")
			If $check=0 and $check1=0 Then

				$i=9
				Run('C:\Users\'&@UserName&'\Desktop\trinh duyet\sbsetup_x86.exe')
				Sleep(15000)
				Send('{tab}')
				Sleep(2000)
				Send('{enter}')
				Sleep(60000)
				Send('{enter}')
				Sleep(4000)
				Send('{enter}')
				Sleep(4000)
				Send('{enter}')
				Sleep(60000)
				Send('{enter}')
				Sleep(15000)
				Send('{tab}')
				Sleep(2000)
				Send('{tab}')
				Sleep(4000)
				Send('{tab}')
				Sleep(4000)
				Send('{enter}')
				Sleep(4000)
                $check=FileExists("C:\Program Files (x86)\SlimBrowser\slimbrowser.exe")
				$check1=FileExists("C:\Program Files\SlimBrowser\slimbrowser.exe")
			  If $check=0 and $check1=0 Then
				  $i=9
				Run('C:\Users\'&@UserName&'\Desktop\trinh duyet\sbsetup_x86.exe')
				Sleep(15000)
				ControlClick('Installer Language','OK','[CLASS:Button; INSTANCE:1]')
				Sleep(30000)
				ControlClick('SlimBrowser 16.0.0.0 (32 bit) Setup ','I &Agree','[CLASS:Button; INSTANCE:2]')
				Sleep(3000)
				ControlClick('SlimBrowser 16.0.0.0 (32 bit) Setup ','&Next >','[CLASS:Button; INSTANCE:2]')
				Sleep(3000)
				ControlClick('SlimBrowser 16.0.0.0 (32 bit) Setup ','&Install','[CLASS:Button; INSTANCE:2]')
				Sleep(15000)
				For $i20=1 to 20
					$check=WinExists('FlashPeak Slimbrowser')
					If $check=1 Then
						Sleep(2000)
						$i20=50
						$check=1
					EndIf
					$check=WinExists('SlimBrowser 16.0.0.0 (32 bit) Setup ')
					If $check=1 Then
						Sleep(2000)
						$i20=50
						$check=1
					EndIf
					Sleep(2000)
				Next
				ControlClick('SlimBrowser 16.0.0.0 (32 bit) Setup ','&Finish','[CLASS:Button; INSTANCE:2]')
				Sleep(2000)
				For $i20=1 to 30
					$check=WinExists('FlashPeak Slimbrowser')
					If $check=1 Then
						Sleep(2000)
						WinSetState('FlashPeak Slimbrowser','',@SW_RESTORE)
						Sleep(1000)
						WinMove('FlashPeak Slimbrowser','',0,0,1366,768)
				        Sleep(1000)
						$i20=50
						$check=1
					EndIf
					Sleep(1000)
				Next

				Sleep(60000)
				MouseClick('left',767,488,1,20)
				Sleep(5000)
				MouseClick('left',831,600,1,20)
				Sleep(15000)

				MouseClick('left',719, 376,1,20)
				Sleep(2000)
				MouseClick('left',707, 498,1,20)
				Sleep(2000)
				MouseClick('left',524, 401,1,20)
				Sleep(2000)
				MouseClick('left',524, 401,1,20)
				Sleep(2000)
				MouseClick('left',711, 436,1,20)
				Sleep(2000)

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
				EndIf
              EndIf

				_closeTrinhDuyet($i)
				Sleep(2000)
			Else
				$check19=1
			EndIf
            #ce

			 $check=FileExists("C:\Program Files\Google\Chrome\Application\chrome.exe")
		    If $check=0 Then
				$i=10
				Run('C:\Users\'&@UserName&'\Desktop\trinh duyet\ChromeSetup.exe')
				Sleep(5000)
				MouseClick('left',780,460,1,20)
				Sleep(90000)
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
					Sleep(5000)
	            Next
	            Sleep(2000)
				WinMove('','',0,0,1366,768)
				Sleep(1000)
				_closeTrinhDuyet($i)
			Else
				$check20=1
		    EndIf


				$check=FileExists("C:\Program Files (x86)\Mozilla Firefox\firefox.exe")
				$check2=FileExists("C:\Program Files\Mozilla Firefox\firefox.exe")
			If $check=0 And $check2=0 Then

				_requetGooGleDOC('https://docs.google.com/document/d/1L9RptErh3kWrdbAiopnRJd-dbutow6MqpKYlir7B9kw/export?format=txt','CheckupdateFireFox.txt')
				$linkupdatefirefox=FileReadLine(@ScriptDir&'\CheckupdateFireFox.txt',1)
				Sleep(1000)
				_GetDOSOutput($linkupdatefirefox)
				Sleep(60000)
				If FileExists('C:\Users\'&@UserName&'\Downloads\Firefox Setup 102.15.0esr.exe')=1 Then

				Else
					Sleep(60000)
				EndIf

				_closeTrinhDuyet(6)
				Sleep(1000)

				Run('C:\Users\'&@UserName&'\Downloads\Firefox Setup 102.15.0esr.exe')
				Sleep(15000)
				ControlClick('Open File - Security Warning','&Run','[CLASS:Button; INSTANCE:1]')
				Sleep(20000)
				ControlClick('Mozilla Firefox Setup','&Next >','[CLASS:Button; INSTANCE:2]')
				Sleep(3000)
				ControlClick('Mozilla Firefox Setup','&Next >','[CLASS:Button; INSTANCE:2]')
				Sleep(3000)
				ControlClick('Mozilla Firefox Setup','&Install','[CLASS:Button; INSTANCE:2]')
				Sleep(20000)
				ControlClick('Mozilla Firefox Setup','&Finish','[CLASS:Button; INSTANCE:2]')
				Sleep(20000)

			EndIf

			_closeTrinhDuyet(1)


          	$check=FileExists('C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe')
				If $check=0 Then MsgBox(0,0,'chua cai dat duoc edge 1',6)

				$check=FileExists('C:\Program Files\BraveSoftware\Brave-Browser\Application\brave.exe')
				If $check=0 Then MsgBox(0,0,'chua cai dat duoc brave 2',6)

				$check=FileExists('C:\Users\'&@UserName&'\AppData\Local\Maxthon\Application\Maxthon.exe')
				If $check=0 Then MsgBox(0,0,'chua cai dat duoc Maxthon 3',6)

				$check=FileExists("C:\portapps\brave-portable\brave-portable.exe")
				If $check=0 Then MsgBox(0,0,'chua cai dat duoc brave por 4',6)

				$check=FileExists('C:\Users\'&@UserName&'\AppData\Local\Programs\Opera\launcher.exe')
				If $check=0 Then MsgBox(0,0,'chua cai dat duoc google offline 5',6)

				$check=FileExists("C:\Users\"&@UserName&"\Desktop\trinh duyet\FirefoxPortable\FirefoxPortable.exe")
				If $check=0 Then MsgBox(0,0,'chua cai dat duoc firefox por 6',6)

				$check=FileExists("C:\Program Files (x86)\Mozilla Firefox\firefox.exe")
                $check2=FileExists("C:\Program Files\Mozilla Firefox\firefox.exe")
				If $check=0 And $check2=0 Then MsgBox(0,0,'chua cai dat duoc firefox.exe 7',6)

				$check=FileExists("C:\Users\"&@UserName&"\AppData\Local\Chromium\Application\chrome.exe")
				If $check=0  Then MsgBox(0,0,'chua cai dat duoc chromium 8',6)

				$check=FileExists("C:\Program Files\Google\Chrome\Application\chrome.exe")
			    If $check=0 Then MsgBox(0,0,'chua cai dat duoc chrome 10',6)

				$check=FileExists('C:\Program Files (x86)\SlimBrowser\slimbrowser.exe')
				If $check=0 Then MsgBox(0,0,'chua cai dat duoc slim 9',10)

            $check1=0
			$check2=0
			$check3=0
			$check4=0
			$check5=0
			$check6=0
			$check7=0
			$check8=0
			$check9=0
			$check10=0

			FileDelete(@ScriptDir&'\KetQuaDangNhap.txt') ;up ket qua dang nhap
			FileDelete(@ScriptDir&'\gmailkhoiphucCoMatKhau.txt')
			_requetGooGleDOC('https://docs.google.com/document/d/14wywJJt6GlHEfF3NQ0_Xr7wNrFGChNzvpl_0nZXTlKw/export?format=txt','gmailkhoiphucCoMatKhau.txt')

		    For $i=1 to 1
                $check=0
				  ToolTip('check dang nhap 	'&$i&'	phien ban:'&$phienban,0,0)

				  $e=FileReadLine(@ScriptDir&'\Gmail.txt',$vpsso)    ;l?y ID , pass, mail kh𩠰h?c
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


				_resetMang($i)
				;_FakeIPOptionV6($i,$vpsso)
				_khoidongFireFox($i)

				WinSetState('Windows Security','',@SW_HIDE)

                $check=_loginGmail($i)
               If $check=0 Then
				ControlClick('','','','left',1,600, 60)
				Sleep(1000)
				Send('^a')
				Sleep(500)
				Sleep(1000)
				Send('https://myaccount.google.com/')
				Sleep(2000)
				Send('?'&'fgbfasdhdfgf'&Chr(Random(56,90,1))&Chr(Random(56,90,1))&Chr(Random(56,90,1))&Chr(Random(56,90,1))&Chr(Random(56,90,1))&Chr(Random(56,90,1)))
				Sleep(2000)
				Send('{enter}')
				Sleep(5000)
				Send($g)
				Sleep(1000)
				Send('{enter}')
				Sleep(7000)

				If $i=1 Then
					$pixcel=PixelSearch(19, 158,227, 249,0xC2E7FF)   ; xoa loi edge
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
				Send('?'&'fgbfasdhdfgf'&Chr(Random(56,90,1))&Chr(Random(56,90,1))&Chr(Random(56,90,1))&Chr(Random(56,90,1))&Chr(Random(56,90,1))&Chr(Random(56,90,1)))
				Sleep(2000)
				Send('{enter}')
				Sleep(10000)
				Send($g)
				Sleep(1000)
				Send('{enter}')
				Sleep(7000)

				For $i20=1 to 10
					$pixcel=PixelSearch(19, 158,227, 249,0xC2E7FF)
					Sleep(500)
					If IsArray($pixcel) Then
						$check=1
						$i20=17
						$i2=2
					EndIf
						Sleep(1000)
				Next
               EndIf
				;MsgBox(0,0,$check)

                $check2=1

				If $check=0 Then

					_closeTrinhDuyet($i)
					_resetMang($i)
					;_FakeIPOptionV6($i,$vpsso)
					_khoidongFireFox($i)
				    ControlClick('','','','left',1,600, 60)
				    Sleep(1000)
				    Send('^a')
				    Sleep(500)
				    Sleep(1000)
				    Send('google.com')
				    Sleep(15000)
                    $pixcel=PixelSearch(541, 142,897, 350,0xEA4335)
			        Sleep(1000)
			        If IsArray($pixcel)  Then
                        ;_XoaDaTaTrinhDuyet($i)
						_loginGmail($i)
					    ControlClick('','','','left',1,600, 60)
				        Sleep(1000)
				        Send('^a')
				        Sleep(500)
				        Sleep(1000)
				        Send('https://myaccount.google.com/')
				        Sleep(2000)
					    Send('?'&'fgbfasdhdfgf'&Chr(Random(56,90,1))&Chr(Random(56,90,1))&Chr(Random(56,90,1))&Chr(Random(56,90,1))&Chr(Random(56,90,1))&Chr(Random(56,90,1)))
					    Sleep(2000)
				        Send('{enter}')
				        Sleep(10000)
					    Send($g)
				        Sleep(1000)
				        Send('{enter}')
				        Sleep(7000)

				        For $i20=1 to 10
							$pixcel=PixelSearch(19, 158,227, 249,0xC2E7FF)
					        Sleep(500)
					        If IsArray($pixcel) Then
						       $check=1
						       $i20=17
						       $i2=2
					        EndIf
						      Sleep(1000)
						Next
					EndIf

				EndIf

				$e=FileReadLine(@ScriptDir&'\Gmail.txt',$i)

				If $check=1 Then   ; dieu kien tam thoi
					FileWriteLine(@ScriptDir&'\KetQuaDangNhap.txt',$e&'	DangNhapThanhCong'&'	'&$i)
				Else
                    FileWriteLine(@ScriptDir&'\KetQuaDangNhap.txt',$e&'	DangNhapThatBai'&'	'&$i)
				EndIf

				_closeTrinhDuyet($i)

		    Next
        Sleep(2000)


	           $dataIP=FileRead(@ScriptDir&'\KetQuaDangNhap.txt')
			    Sleep(2000)
			    _resetMang(1)
			    $link='https://docs.google.com/document/d/1qHVR9Vg6S3_AgJuPAqKmYHbwWYgtfiPkOjEm05iEMHc/edit?usp=sharing'
			    _postdataGoogleDOC($link)
			    For $i20=1 to 10
			        $pixcel=PixelSearch(11, 99,179, 197,0x2684FC)
			        Sleep(1000)
			        If IsArray($pixcel)  Then
					   $i20=10
				    EndIf
				    Sleep(1000)
			    Next
			    Sleep(2000)
			    Send('{enter}')
			    Sleep(2000)
			    Send('{UP}')
			    Sleep(2000)
			    ClipPut($dataIP)
			    Sleep(2000)
			    Send('^+v')
			    Sleep(10000)
                _closeTrinhDuyet(1)

		Return 	$check4

	EndFunc

    Func _XoaDaTaTrinhDuyet($i)

		If $i=1 Then

            Send('^+{DELETE}')
			Sleep(5000)
			MouseClick('left',802, 269,1,20)
			Sleep(2000)
			MouseClick('left',650, 317,1,20)
			Sleep(2000)
			Send('{DOWN}')
			Sleep(1000)
			Send('{DOWN}')
			Sleep(1000)
			Send('{DOWN}')
			Sleep(1000)
			Send('{DOWN}')
			Sleep(1000)
			Send('{enter}')
			Sleep(2000)
			MouseClick('left',930,583,1,20)  ; xuống
		    Sleep(2000)
			MouseClick('left',455,438,1,20)
            Sleep(2000)
			MouseClick('left',455,488,1,20)
            Sleep(2000)
			MouseClick('left',455,536,1,20)
            Sleep(2000)
			MouseClick('left',455,585,1,20)
            Sleep(2000)
			MouseClick('left',867, 644,1,20)
			Sleep(5000)
			MouseClick('left',867, 664,1,20)
			Sleep(5000)
			MouseClick('left',600, 60,1,20)
			Sleep(2000)
			Send('https://accounts.google.com')
			Sleep(1000)
			Send('{enter}')
			Sleep(3000)

		EndIf

		If $i=2 Then
			Send('^+{DELETE}')
			Sleep(5000)
			MouseClick('left',675,240,1,20)
			Sleep(2000)
			MouseClick('left',626,290,1,20)
			Sleep(2000)
			Send('{DOWN}')
			Sleep(1000)
			Send('{DOWN}')
			Sleep(1000)
			Send('{DOWN}')
			Sleep(1000)
			Send('{DOWN}')
			Sleep(1000)
			Send('{enter}')
			Sleep(3000)
			MouseClick('left',930, 606,1,20)
			Sleep(2000)
			MouseClick('left',930, 606,1,20)
			Sleep(2000)
			MouseClick('left',930, 606,1,20)
			Sleep(2000)

			MouseClick('left',455, 430,1,20)
			Sleep(2000)
			MouseClick('left',455, 480,1,20)
			Sleep(2000)
			MouseClick('left',455, 530,1,20)
			Sleep(2000)
			MouseClick('left',455, 580,1,20)
			Sleep(2000)
			MouseClick('left',876, 666,1,20)
			Sleep(6000)
			MouseClick('left',876, 686,1,20)
			Sleep(6000)
			MouseClick('left',600, 60,1,20)
			Sleep(2000)
			Send('https://accounts.google.com/Logout')
			Sleep(1000)
			Send('{enter}')
			Sleep(3000)

		EndIf

		If $i=3 Then
			Send('^+{DELETE}')
			Sleep(5000)
			MouseClick('left',787,289,1,20)
			Sleep(2000)
			MouseClick('left',620,337,1,20)
			Sleep(2000)
			Send('{DOWN}')
			Sleep(1000)
			Send('{DOWN}')
			Sleep(1000)
			Send('{DOWN}')
			Sleep(1000)
			Send('{DOWN}')
			Sleep(1000)
			Send('{enter}')
			Sleep(3000)
			MouseClick('left',908, 612,1,20)
			Sleep(2000)
			MouseClick('left',908, 612,1,20)
			Sleep(2000)
			MouseClick('left',435, 450,1,20)
			Sleep(2000)
			MouseClick('left',435, 500,1,20)
			Sleep(2000)
			MouseClick('left',435, 550,1,20)
			Sleep(2000)
			MouseClick('left',435, 600,1,20)
			Sleep(2000)
			MouseClick('left',853, 665,1,20)
			Sleep(4000)
			MouseClick('left',853, 685,1,20)
			Sleep(4000)
			MouseClick('left',600, 60,1,20)
			Sleep(2000)
			Send('https://accounts.google.com/Logout')
			Sleep(1000)
			Send('{enter}')
			Sleep(3000)

		EndIf

		If $i=4 Then
			Send('^+{DELETE}')
			Sleep(5000)
			MouseClick('left',680,295,1,20)
			Sleep(2000)
			MouseClick('left',621,338,1,20)
			Sleep(2000)
			Send('{DOWN}')
			Sleep(1000)
			Send('{DOWN}')
			Sleep(1000)
			Send('{DOWN}')
			Sleep(1000)
			Send('{DOWN}')
			Sleep(1000)
			Send('{enter}')
			Sleep(3000)
			MouseClick('left',930,604,1,20)
			Sleep(2000)
			MouseClick('left',930,604,1,20)
			Sleep(2000)
			MouseClick('left',455,430,1,20)
			Sleep(2000)
			MouseClick('left',455,475,1,20)
			Sleep(2000)
			MouseClick('left',455,525,1,20)
			Sleep(2000)
			MouseClick('left',455,575,1,20)
			Sleep(2000)
			MouseClick('left',870, 675,1,20)
			Sleep(4000)
			MouseClick('left',870, 695,1,20)
			Sleep(4000)
			MouseClick('left',600, 60,1,20)
			Sleep(2000)
			Send('https://accounts.google.com/Logout')
			Sleep(1000)
			Send('{enter}')
			Sleep(3000)

		EndIf

		If $i=5 Then
			Send('^+{DELETE}')
			Sleep(5000)
			MouseClick('left',803, 275,1,20)
			Sleep(2000)
			MouseClick('left',604, 323,1,20)
			Sleep(2000)
			Send('{DOWN}')
			Sleep(1000)
			Send('{DOWN}')
			Sleep(1000)
			Send('{DOWN}')
			Sleep(1000)
			Send('{DOWN}')
			Sleep(1000)
			Send('{enter}')
			Sleep(3000)
			MouseClick('left',930, 587,1,20)
			Sleep(2000)
			MouseClick('left',930, 587,1,20)
			Sleep(2000)
			MouseClick('left',455, 440,1,20)
			Sleep(2000)
			MouseClick('left',455, 490,1,20)
			Sleep(2000)
			MouseClick('left',455, 540,1,20)
			Sleep(2000)
			MouseClick('left',455, 590,1,20)
			Sleep(2000)
			MouseClick('left',674, 653,1,20)
			Sleep(5000)
			MouseClick('left',674, 673,1,20)
			Sleep(5000)
			MouseClick('left',674, 693,1,20)
			Sleep(5000)
			MouseClick('left',600, 60,1,20)
			Sleep(2000)
			Send('https://accounts.google.com/Logout')
			Sleep(1000)
			Send('{enter}')
			Sleep(3000)

		EndIf

		If $i=6 Then
			Send('^+{DELETE}')
			Sleep(5000)
			MouseClick('left',699, 297,1,20)
			Sleep(2000)
			Send('{DOWN}')
			Sleep(1000)
			Send('{DOWN}')
			Sleep(1000)
			Send('{DOWN}')
			Sleep(1000)
			Send('{DOWN}')
			Sleep(1000)
			Send('{enter}')
			Sleep(3000)
			MouseClick('left',502, 573,1,20)
			Sleep(2000)
			MouseClick('left',705, 573,1,20)
			Sleep(2000)
			MouseClick('left',746, 674,1,20)
			Sleep(4000)
			MouseClick('left',746, 694,1,20)
			Sleep(4000)
			MouseClick('left',600, 60,1,20)
			Sleep(2000)
			Send('https://accounts.google.com/Logout')
			Sleep(1000)
			Send('{enter}')
			Sleep(3000)

		EndIf

		If $i=7 Then
			Send('^+{DELETE}')
			Sleep(5000)
			MouseClick('left',676, 177,1,20)
			Sleep(2000)
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
			MouseClick('left',503, 597,1,20)
			Sleep(2000)
			MouseClick('left',746, 674,1,20)
			Sleep(5000)
			MouseClick('left',746, 694,1,20)
			Sleep(5000)
			MouseClick('left',600, 60,1,20)
			Sleep(2000)
			Send('https://accounts.google.com/Logout')
			Sleep(1000)
			Send('{enter}')
			Sleep(3000)

		EndIf

		If $i=9 Then
			Send('^+{DELETE}')
			Sleep(5000)
			MouseClick('left',727, 147,1,20)
			Sleep(2000)
			Send('{DOWN}')
			Sleep(1000)
			Send('{DOWN}')
			Sleep(1000)
			Send('{DOWN}')
			Sleep(1000)
			Send('{DOWN}')
			Sleep(1000)
			Send('{enter}')
			Sleep(5000)
			MouseClick('left',503, 472,1,20)
			Sleep(2000)
			MouseClick('left',706, 472,1,20)
			Sleep(2000)
			MouseClick('left',770, 517,1,20)
			Sleep(5000)
			MouseClick('left',770, 537,1,20)
			Sleep(5000)
			MouseClick('left',600, 60,1,20)
			Sleep(2000)
			Send('https://accounts.google.com/Logout')
			Sleep(1000)
			Send('{enter}')
			Sleep(3000)

		EndIf

		If $i=10 Then
			Send('^+{DELETE}')
			Sleep(5000)
			MouseClick('left',810, 276,1,20)
			Sleep(2000)
			MouseClick('left',647, 324,1,20)
			Sleep(2000)
			Send('{DOWN}')
			Sleep(1000)
			Send('{DOWN}')
			Sleep(1000)
			Send('{DOWN}')
			Sleep(1000)
			Send('{DOWN}')
			Sleep(1000)
			Send('{enter}')
			Sleep(3000)
			MouseClick('left',930, 589,1,20)
			Sleep(2000)
			MouseClick('left',930, 589,1,20)
			Sleep(2000)
			MouseClick('left',454, 440,1,20)
			Sleep(2000)
			MouseClick('left',454, 490,1,20)
			Sleep(2000)
			MouseClick('left',454, 540,1,20)
			Sleep(2000)
			MouseClick('left',454, 590,1,20)
			Sleep(2000)
			MouseClick('left',872, 650,1,20)
			Sleep(4000)
			MouseClick('left',872, 670,1,20)
			Sleep(4000)
			MouseClick('left',600, 60,1,20)
			Sleep(2000)
			Send('https://accounts.google.com/Logout')
			Sleep(1000)
			Send('{enter}')
			Sleep(3000)

		EndIf

		If $i=8 Then
			Send('^+{DELETE}')
			Sleep(5000)
			MouseClick('left',804, 270,1,20)
			Sleep(2000)
			MouseClick('left',607, 315,1,20)
			Sleep(2000)
			Send('{DOWN}')
			Sleep(1000)
			Send('{DOWN}')
			Sleep(1000)
			Send('{DOWN}')
			Sleep(1000)
			Send('{DOWN}')
			Sleep(1000)
			Send('{enter}')
			Sleep(3000)
			MouseClick('left',930, 580,1,20)
			Sleep(2000)
			MouseClick('left',930, 580,1,20)
			Sleep(2000)
			MouseClick('left',454, 435,1,20)
			Sleep(2000)
			MouseClick('left',454, 485,1,20)
			Sleep(2000)
			MouseClick('left',454, 535,1,20)
			Sleep(2000)
			MouseClick('left',454, 585,1,20)
			Sleep(2000)
			MouseClick('left',454, 605,1,20)
			Sleep(2000)

			MouseClick('left',875, 646,1,20)
			Sleep(2000)
			MouseClick('left',600, 60,1,20)
			Sleep(2000)
			Send('https://accounts.google.com/Logout')
			Sleep(1000)
			Send('{enter}')
			Sleep(3000)

		EndIf



	EndFunc

        Func _FakeIPOptionV6($i,$vpsso)
				$a=0
				$b=0
				For $icheck=1 to 2
					  For $i20=1 to 2
			            ProcessClose('WerFault.exe')
                         $check=0
				        If FileExists('C:\Users\'&@UserName&'\Desktop\csFireFox - 10 sea\Internet Options - Shortcut.lnk')=1 Then
							ShellExecute('C:\Users\'&@UserName&'\Desktop\csFireFox - 10 sea\Internet Options - Shortcut.lnk')
						Else
                            ShellExecute('C:\Users\'&@UserName&'\Desktop\csFireFox - 10 sea\Internet Options - Shortcut.url')
						EndIf
				        Sleep(4000)
						$a=WinExists('Internet Properties')
						$b=WinExists('Settings')
		                If $a=0 and $b=0  Then
							If FileExists('C:\Users\'&@UserName&'\Desktop\csFireFox - 10 sea\Internet Options - Shortcut.lnk')=1 Then
							    ;ShellExecute('C:\Users\'&@UserName&'\Desktop\csFireFox - 10 sea\Internet Options - Shortcut.lnk')
						    Else
                                ShellExecute('C:\Users\'&@UserName&'\Desktop\csFireFox - 10 sea\Internet Options - Shortcut.url')
								Sleep(4000)
							EndIf
						EndIf

						If $a=1 Then

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
								WinClose('Settings')
							    WinClose('Colors')
							    WinClose('Tabbed Browsing Settings')
							    WinClose('Local Area Network (LAN) Settings')
				                WinClose('Internet Properties')
							    WinClose('Colors')
							    WinClose('Tabbed Browsing Settings')

						    Else
							    $i20=2

						    EndIf
						EndIf
                      Next

						$IPtho=FileReadLine(@ScriptDir&'\Keytinsoft2.txt',$i)    ; da loc lay 10 IP-- dung có doi file .txt
						$kiemtraProxy=_kiemtraProxy($IPtho)
						If $kiemtraProxy=0 Then $IPtho=FileReadLine(@ScriptDir&'\Keytinsoft4.txt',$i)  ;ip du phong

						$IP=1
						$port=1
						Sleep(100)
						$IPtho2=StringSplit($IPtho,':')
						If IsArray($IPtho2) Then
							If $IPtho2[0]>1 Then
								;$ID=$IPtho2[3]
								;$Pass=$IPtho2[4]
								$IP=$IPtho2[1]
								$port=$IPtho2[2]
							EndIf

						EndIf

					    If IsArray($IPtho2) Then
						    If $a=1 Then
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
								WinClose('Settings')
						        ProcessClose('WerFault.exe')
							EndIf
							If $b=1 Then


								WinSetState('Settings','',@SW_RESTORE)
								Sleep(2000)
								WinActivate('Settings')
								Sleep(2000)
                                WinMove('Settings','',0,0,900,900)
								Sleep(3000)
								$pixcel=PixelSearch(331, 189,488, 290,0x0078D7)
								If not IsArray($pixcel) Then
                                    MouseClick('left',366, 236,1,20)
									Sleep(4000)
                                EndIf
								MouseMove(500,180)
								Sleep(2000)
								$pixcel=PixelSearch(331, 189,488, 290,0x0078D7)
								If not IsArray($pixcel) Then
                                    MouseClick('left',381, 256,1,20)
									Sleep(4000)
                                EndIf

								MouseClick('left',500,180,1,20)
								Sleep(2000)
								Send('{tab}')
								Sleep(2000)
								Send('{tab}')
								Sleep(2000)
								$pixcel=PixelSearch(222, 499,462, 725,0x0078D7)
								If not IsArray($pixcel) Then
                                    Send('{SPACE}')
									Sleep(2000)
                                EndIf

								Sleep(2000)
								Send('{tab}')
								Sleep(2000)
								Send('^a')
								Sleep(2000)
								Send($IP)
								Sleep(2000)
								Send('{tab}')
								Sleep(2000)
								Send('^a')
								Sleep(2000)
								Send($port)
								Sleep(2000)
								Send('{tab}')
								Sleep(2000)
								Send('{DELETE}')
								Sleep(2000)
								Send('{tab}')
								Sleep(2000)
								$pixcel=PixelSearch(327, 822,475, 889,0x0078D7)
								If not IsArray($pixcel) Then
                                    Send('{SPACE}')
									Sleep(2000)
                                EndIf
								Send('{tab}')
								Sleep(2000)
								Send('{SPACE}')
								Sleep(2000)
								WinClose('Settings')
								Sleep(2000)
								ProcessClose('SystemSettings.exe')
								Sleep(1000)

							EndIf

					    EndIf

                        If IsArray($IPtho2) Then
                              $check=1
							  $icheck=2
						EndIf




				        Sleep(100)
				        WinClose('Authentication Required - Mozilla Firefox')
				        Sleep(100)
				        WinClose('Authentication Required - FlashPeak SlimBrowser')
				        Sleep(100)
				        WinClose('Yêu cầu xác minh - Mozilla Firefox')
						Sleep(1000)
						WinClose('Settings')

                       ; _resetMang(1)   ; bản 1.1.60

				Next
			Return $check

		EndFunc

#cs
        Func _dienIpPort($i)
					Sleep(1000)
					$var = WinList ("[CLASS:Chrome_WidgetWin_1]")
                    Sleep(1000)
					If $var[0][0]=0 Then $var = WinList ("[CLASS:MozillaWindowClass]")
					Sleep(1000)
					If $i=9 Then $var = WinList ("[CLASS:FlashPeakWindowClass]")
					For $i10 = 1 to $var[0][0]
					    If BitAnd (WinGetState ($var[$i10][1]), 2) And $var[$i10][0] <> "" Then
							Sleep(2000)
							ControlClick($var[$i10][1],'','','left',1,600, 60)
							Sleep(2000)
							ControlSend($var[$i10][1],'','','google.com')
							Sleep(1000)
							ControlSend($var[$i10][1],'','','{enter}')
							Sleep(5000)

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
					WinSetState('Windows Security','',@SW_HIDE)
					Sleep(1000)
					If $i=1  Then
						Sleep(1000)
						Send('^a')
						Sleep(2000)
						Send($ID,1)
						Sleep(2000)
						Send('{tab}')
						Sleep(2000)
						Send($Pass,1)
						Sleep(2000)
						Send('{tab}')
						Sleep(2000)
						Send('{enter}')
						Sleep(5000)
					EndIf
					If $i=2  Then
						Sleep(1000)
						Send('^a')
						Sleep(2000)
						Send($ID,1)
						Sleep(2000)
						Send('{tab}')
						Sleep(2000)
						Send($Pass,1)
						Sleep(2000)
						Send('{tab}')
						Sleep(2000)
						Send('{enter}')
						Sleep(5000)
					EndIf
					If $i=3  Then
						Sleep(1000)
						Send('^a')
						Sleep(2000)
						Send($ID,1)
						Sleep(2000)
						Send('{tab}')
						Sleep(2000)
						Send($Pass,1)
						Sleep(2000)
						Send('{tab}')
						Sleep(2000)
						Send('{enter}')
						Sleep(5000)
					EndIf
					If $i=4  Then
						Sleep(1000)
						Send('^a')
						Sleep(2000)
						Send($ID,1)
						Sleep(2000)
						Send('{tab}')
						Sleep(2000)
						Send($Pass,1)
						Sleep(2000)
						Send('{tab}')
						Sleep(2000)
						Send('{enter}')
						Sleep(5000)
					EndIf
					If $i=5  Then
						Sleep(1000)
						Send('^a')
						Sleep(2000)
						Send($ID,1)
						Sleep(2000)
						Send('{tab}')
						Sleep(2000)
						Send($Pass,1)
						Sleep(2000)
						Send('{tab}')
						Sleep(2000)
						Send('{enter}')
						Sleep(5000)
					EndIf
					If $i=6  Then
						Sleep(1000)
						Send('^a')
						Sleep(2000)
						Send($ID,1)
						Sleep(2000)
						Send('{tab}')
						Sleep(2000)
						Send($Pass,1)
						Sleep(2000)
						Send('{tab}')
						Sleep(2000)
						Send('{tab}')
						Sleep(2000)
						Send('{enter}')
						Sleep(5000)
					EndIf
					If $i=6  Then
						MouseClick('left',600, 60,1,20)
						Sleep(2000)
						Send('google.com')
						Sleep(1000)
						Send('{enter}')
						Sleep(5000)
						Send('^a')
						Sleep(2000)
						Send($ID,1)
						Sleep(2000)
						Send('{tab}')
						Sleep(2000)
						Send($Pass,1)
						Sleep(2000)
						Send('{tab}')
						Sleep(2000)
						Send('{enter}')
						Sleep(5000)
					EndIf
					If $i=7  Then
						Sleep(1000)
						Send('^a')
						Sleep(2000)
						Send($ID,1)
						Sleep(2000)
						Send('{tab}')
						Sleep(2000)
						Send($Pass,1)
						Sleep(2000)
						Send('{tab}')
						Sleep(2000)
						Send('{enter}')
						Sleep(5000)
					EndIf
					If $i=7  Then
						MouseClick('left',600, 60,1,20)
						Sleep(2000)
						Send('google.com')
						Sleep(1000)
						Send('{enter}')
						Sleep(5000)
						Send('^a')
						Sleep(2000)
						Send($ID,1)
						Sleep(2000)
						Send('{tab}')
						Sleep(2000)
						Send($Pass,1)
						Sleep(2000)
						Send('{tab}')
						Sleep(2000)
						Send('{enter}')
						Sleep(5000)
					EndIf
					If $i=8  Then
						Sleep(1000)
						Send('^a')
						Sleep(2000)
						Send($ID,1)
						Sleep(2000)
						Send('{tab}')
						Sleep(2000)
						Send($Pass,1)
						Sleep(2000)
						Send('{tab}')
						Sleep(2000)
						Send('{enter}')
						Sleep(5000)
					EndIf
					If $i=9  Then
						Sleep(1000)
						Send('^a')
						Sleep(2000)
						Send($ID,1)
						Sleep(2000)
						Send('{tab}')
						Sleep(2000)
						Send($Pass,1)
						Sleep(2000)
						Send('{tab}')
						Sleep(2000)
						Send('{enter}')
						Sleep(5000)
					EndIf
					If $i=9  Then
						MouseClick('left',528,411,1,20)
						Sleep(1000)
						Send('^a')
						Sleep(2000)
						Send($ID,1)
						Sleep(2000)
						Send('{tab}')
						Sleep(2000)
						Send($Pass,1)
						Sleep(2000)
						Send('{tab}')
						Sleep(2000)
						Send('{enter}')
						Sleep(5000)
					EndIf
					If $i=9  Then
						MouseClick('left',528,411,1,20)
						Sleep(1000)
						Send('^a')
						Sleep(2000)
						Send($ID,1)
						Sleep(2000)
						Send('{tab}')
						Sleep(2000)
						Send($Pass,1)
						Sleep(2000)
						Send('{tab}')
						Sleep(2000)
						Send('{tab}')
						Sleep(2000)
						Send('{tab}')
						Sleep(2000)
						Send('{enter}')
						Sleep(5000)
					EndIf
					If $i=10  Then
						Sleep(1000)
						Send('^a')
						Sleep(2000)
						Send($ID,1)
						Sleep(2000)
						Send('{tab}')
						Sleep(2000)
						Send($Pass,1)
						Sleep(2000)
						Send('{tab}')
						Sleep(2000)
						Send('{enter}')
						Sleep(5000)
					EndIf

                Sleep(3000)
				If $i=1 Then MouseClick('left',845, 255,1,20)
				If $i=2 Then MouseClick('left',980, 248,1,20)
				If $i=3 Then MouseClick('left',1000, 297,1,20)
				If $i=4 Then MouseClick('left',1030, 250,1,20)
				If $i=5 Then MouseClick('left',1219, 101,1,20)
				If $i=6 Then MouseClick('left',390,224 ,1,20)
				If $i=7 Then MouseClick('left',555,340,1,20)
				If $i=9 Then MouseClick('left',456, 344,1,20)  ;luu mat khau $1
				If $i=10 Then MouseClick('left',1080, 372,1,20)  ;luu mat khau $10
				If $i=10 Then MouseClick('left',1090, 382,1,20)  ;luu mat khau $10

                Sleep(1000)
			#cs
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
				If $i=10 Then MouseClick('left',1219, 101,1,20)  ;luu mat khau $1
				If $i=9 Then MouseClick('left',385, 320,1,20)  ;luu mat khau $1
				Sleep(2000)
				If $i=4 Then MouseClick('left',1036, 226,1,20)

				If $i=1 Then MouseClick('left',927, 282,1,20)   ;update pass
				If $i=2 Then MouseClick('left',1000, 248,1,20);update pass
				If $i=2 Then MouseClick('left',980, 262,1,20);update pass
				If $i=3 Then MouseClick('left',816, 266,1,20);update pass
				If $i=3 Then MouseClick('left',816, 243,1,20);update pass
				If $i=4 Then MouseClick('left',1028, 231,1,20);update pass
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
            #ce


		EndFunc
#ce
		Func _chonProFileFFv6($i5,$i,$vpsso)
                $check=0
	           ; $check2=0
               WinSetState('Windows Security','',@SW_HIDE)
			 ;  _dienIpPort($i)

				ProcessClose('WerFault.exe')
          For $i2=1 TO 2
					WinClose('Server Manager')
					WinClose('Restore pages')
				    ProcessClose('WerFault.exe')
                    Sleep(100)

                $var = WinList ("[CLASS:Chrome_WidgetWin_1]")
                Sleep(100)
				If $var[0][0]=0 Then $var = WinList ("[CLASS:MozillaWindowClass]")
				Sleep(100)
				If $i=9 Then $var = WinList ("[CLASS:FlashPeakWindowClass]")


			For $i10 = 1 to $var[0][0]
			    If BitAnd (WinGetState ($var[$i10][1]), 2) And $var[$i10][0] <> "" Then

					If $i=5 Then
						ControlClick($var[$i10][1],'','','left',1,426, 30)    ; tat tab thua
						Sleep(1000)
						ControlClick($var[$i10][1],'','','left',1,426, 30)    ; tat tab thua
						Sleep(1000)
					EndIf
					WinClose('Restore pages')

                    For $i20=1 to 10
					        $pixcel=PixelSearch(52, 100,245, 170,0xFF0033)   ; xoa loi edge
							$pixcel2=PixelSearch(52, 100,245, 170,0xFF0000)   ; xoa loi edge
							$pixcel3=PixelSearch(52, 100,245, 170,0xFF0100)   ; xoa loi edge
					    If IsArray($pixcel) or IsArray($pixcel2) or IsArray($pixcel3) Then
						    $i20=20
							$checkload=1
						EndIf
				        Sleep(1000)
					Next

					Sleep(3000)
				    MouseClick('left',600, 60,1,20)
				    Sleep(2000)
					ClipPut('https://www.youtube.com/channel_switcher?next=%2Faccount&feature=settings')
					Sleep(1000)
				    Send("^v")
				    Sleep(200)
				    Send('{enter}')
				    Sleep(7000)
					Send('^0')
					Sleep(200)
					$checkload=0

					If $i=6 or $i=7 Then
                       MouseClick('left',421, 103,1,20)
				       Sleep(1000)
					   MouseClick('left',363, 120,1,20)
				       Sleep(1000)
					EndIf



					For $i20=1 to 20
					        $pixcel=PixelSearch(58,110,245, 170,0xFF0033)   ; xoa loi edge
							$pixcel2=PixelSearch(58,110,245, 170,0xFF0000)   ; xoa loi edge
							$pixcel3=PixelSearch(58,110,245, 170,0xFF0100)   ; xoa loi edge
					    If IsArray($pixcel) or IsArray($pixcel2) or IsArray($pixcel3) Then
						    $i20=20
							$checkload=1
						EndIf
				        Sleep(1000)
					Next

					$pixcel=PixelSearch(500,230,800,500,0xBD79FF)    ; check internet
					If IsArray($pixcel) Then
						Sleep(100)
                        ControlClick($var[$i10][1],'','','left',1,600, 60)
				        Sleep(1000)
						ClipPut('https://www.youtube.com/channel_switcher?next=%2Faccount&feature=settings')
						Send('^v')
						Sleep(1000)
						Send('{enter}')
						Sleep(5000)
						;_dienIpPort($i)
						;Sleep(5000)
						Send('^0')
					    Sleep(2000)
					EndIf

					If $checkload=0 Then
						ControlClick($var[$i10][1],'','','left',1,600, 60)
				        Sleep(1000)
						Send('https://www.youtube.com/channel_switcher?next=%2Faccount&feature=settings')
						Sleep(1000)
						Send('{enter}')
						Sleep(5000)
						;_dienIpPort($i)
						;Sleep(5000)
						Send('^0')
					    Sleep(1000)

					EndIf


					If $i=1 Then
							$pixcel=PixelSearch(20, 130,40, 245,0xFF0033)   ; xoa loi edge
							$pixcel2=PixelSearch(20, 130,40, 245,0xFF0000)   ; xoa loi edge
							$pixcel3=PixelSearch(20, 130,40, 245,0xFF0100)   ; xoa loi edge
					    If IsArray($pixcel) or IsArray($pixcel2) or IsArray($pixcel3) Then
						    Sleep(2000)
							Send('^+,')
							Sleep(1000)
						EndIf
				        Sleep(1000)
					EndIf

					Sleep(8000)

					If $i=1 Then MouseClick('left',581, 191,1,20)
					If $i=2 Then ControlClick($var[$i10][1],'','','left',1,594, 182)
					If $i=3 Then ControlClick($var[$i10][1],'','','left',1,518, 210)
					If $i=4 Then ControlClick($var[$i10][1],'','','left',1,596, 184)
					If $i=5 Then ControlClick($var[$i10][1],'','','left',1,506, 200)
					If $i=6 Then ControlClick($var[$i10][1],'','','left',1,503, 177)
					If $i=7 Then ControlClick($var[$i10][1],'','','left',1,504, 190)
					If $i=8 Then ControlClick($var[$i10][1],'','','left',1,594, 189)
					If $i=9 Then ControlClick($var[$i10][1],'','','left',1,590, 213)
					If $i=10 Then ControlClick($var[$i10][1],'','','left',1,500, 180)
					If $i=10 Then ControlClick($var[$i10][1],'','','left',1,500, 190)
					Sleep(2000)
					If $i=1 Then MouseClick('left',700, 191,1,20)
					If $i=2 Then ControlClick($var[$i10][1],'','','left',1,594, 182)
					If $i=3 Then ControlClick($var[$i10][1],'','','left',1,518, 210)
					If $i=4 Then ControlClick($var[$i10][1],'','','left',1,596, 184)
					If $i=5 Then ControlClick($var[$i10][1],'','','left',1,600, 200)
					If $i=6 Then ControlClick($var[$i10][1],'','','left',1,503, 177)
					If $i=7 Then ControlClick($var[$i10][1],'','','left',1,504, 190)
					If $i=8 Then ControlClick($var[$i10][1],'','','left',1,594, 189)
					If $i=9 Then ControlClick($var[$i10][1],'','','left',1,590, 213)
					If $i=10 Then ControlClick($var[$i10][1],'','','left',1,500, 180)
					If $i=10 Then ControlClick($var[$i10][1],'','','left',1,500, 190)

					Sleep(1000)
                    For $i20=1 to 2
					    ;$pixcel=PixelSearch(55,110,245, 170,0xFF0033)   ; xoa loi edge
					    $pixcel2=PixelSearch(545, 347,1151, 744,0x606060)   ; xoa loi edge
					    If IsArray($pixcel2) Then
						    Sleep(4000)
					        For $i20=1 to $i5+2
						       ControlSend($var[$i10][1],'','','{tab}')
						       Sleep(500)
					        Next
					        Sleep(1000)
					        ControlSend($var[$i10][1],'','','{enter}')
							$i2=2
							$check=1
							$i20=2
					    EndIf
						Sleep(10000)
					Next


				EndIf
			Next
          Next

		   Return $check
        EndFunc

        Func _subIpv6($vpsso,$i,$i5)
				        WinClose('trinh duyet')
					    WinClose('csFireFox - 10 sea')
                        WinClose('Server Manager')
						WinClose('Proxy Client Tinsoft')
						ProcessClose('WerFault.exe')
                $linkvideo=5
				Sleep(1000)
				_xoa1NuaFileDasub($i,$i5)

                $linkkenhtho=1
				$sodonglinkkenhto=1
				$checkchaykenhto=0
				$sodong=1
				$linkdasub='1'
				$datalink="1"
				$sosub5=1

			  For $i21=1 to 7

						For $i23=1 to 15
					        $sodong=_FileCountLines(@ScriptDir&"\linkkenhchaySUB2.txt")
							Sleep(100)
                            $linkkenhtho=FileReadLine(@ScriptDir&"\linkkenhchaySUB2.txt",Random(1,$sodong,1))    ; chu y thay doi
				            Sleep(100)
						    ;$kiemtralink=FileReadLine(@ScriptDir&"\linkkenhchaySUB2.tx",1)
						  If StringLen($linkkenhtho)>20 Then

						    If 	StringLen($linkkenhtho)>10 Then
					    	    $datalink=StringSplit($linkkenhtho,'	')
								Sleep(100)
				                If IsArray($datalink) Then $linkkenh=$datalink[1]
								Sleep(100)
							    If FileExists(@ScriptDir&"\LinkDaSub.txt")=0 Then  FileWriteLine(@ScriptDir&"\LinkDaSub.txt",'khoi tao')
							    Sleep(1000)
						        $sodonglinkdasub=_FileCountLines(@ScriptDir&"\LinkDaSub.txt")
								Sleep(100)
						        For $i22=$sodonglinkdasub-5 to $sodonglinkdasub
                                    $linkdasub=FileReadLine(@ScriptDir&"\LinkDaSub.txt",$i22)
									Sleep(100)
                                    If $linkkenh=$linkdasub Then
								        $i22=$sodonglinkdasub
							        EndIf
						        Next
								Sleep(100)
						        If $linkkenh <> $linkdasub Then
							        $i23=15
						        EndIf
						    EndIf
						  Else
							;$sodonglinkkenhto=_FileCountLines(@ScriptDir&'\linkkenhto.txt')
							;$linkkenh=FileReadLine(@ScriptDir&'\linkkenhto.txt',Random(2,$sodonglinkkenhto,1))


						  EndIf

						Next



				        If IsArray($datalink) Then
                           $linkkenh=$datalink[1]

				           $kq=_HttpRequest(2,$linkkenh,'','','','','')
					       $arry=_StringBetween($kq,'subscriberCountText":{"accessibility":{"accessibilityData":{"label":','simpleText')

						  If IsArray($arry)  Then
			 			    $kickthuocmang=UBound($arry)
						    $sosub1=StringTrimLeft($arry[($kickthuocmang-1)],1)
						    $sosub2=StringTrimRight($sosub1,19)
						    $sosub3=StringSplit($sosub2,' ')
						    If IsArray($sosub3) Then
							   If $sosub3[0]=2 Then
								    If $sosub3[2]='nghìn' Then
									   $sosub4=StringReplace($sosub3[1],',','.')
									   $sosub5=$sosub4*1000
								    EndIf
							    Else
								    $sosub5=$sosub2
							    EndIf
                            EndIf
						  EndIf


						  If $datalink[0]>2 Then
								If $sosub5<1000 Then $datalink[2]=$datalink[2]+100
							    If $sosub5<50000 AND $sosub5>=1000  Then $datalink[2]=$datalink[2]+200
                                If $sosub5<100000 AND $sosub5>=50000  Then $datalink[2]=$datalink[2]+300
						        If $sosub5>=100000  Then $datalink[2]=$datalink[2]+1000
						        If $sosub5< $datalink[2]+$datalink[3] Then
								    $linkkenh=$datalink[1]
									$i21=7
						        Else
									;$sodonglinkkenhto=_FileCountLines(@ScriptDir&'\linkkenhto.txt')
                                   ; $linkkenh=FileReadLine(@ScriptDir&'\linkkenhto.txt',Random(2,$sodonglinkkenhto,1))
						        EndIf
						  EndIf

                        EndIf
			  Next


			  WinSetState('Proxy Client Tinsoft','',@SW_MINIMIZE)
			  Sleep(100)
			  $var = WinList ("[CLASS:Chrome_WidgetWin_1]")
			  Sleep(100)
		   	  If $var[0][0]=0 Then $var = WinList ("[CLASS:MozillaWindowClass]")
			  Sleep(100)
			  If $i=9 Then $var = WinList ("[CLASS:FlashPeakWindowClass]")


			  For $i10 = 1 to $var[0][0]

			    If BitAnd (WinGetState ($var[$i10][1]), 2) And $var[$i10][0] <> "" Then

				    Sleep(Random(1000,3000,1))

					$linkvideo=0

					$checklink=StringRight($linkkenh,6)
				    If $checklink='videos' or $checklink='treams' Then
                         $linkvideo=1
					EndIf

					If $checklink='shorts' Then
					    $linkvideo=2
				    EndIf

					If $checklink='atured' Then
					     $linkvideo=0
				    EndIf
					$checklink=StringMid($linkkenh,25,5)
				    If $checklink='watch' Then
					    $linkvideo=3
			    	EndIf
					If $checklink='tion=1' Then
					    $linkvideo=4

				    EndIf


					ControlClick($var[$i10][1],'','','left',1,600, 60)
				    Sleep(1000)
					ClipPut($linkkenh)
					Sleep(1000)
				    Send('^v')
					Sleep(1000)
				    ControlSend($var[$i10][1],'','','{enter}')
				    Sleep(10000)
				    WinClose('Restore pages?')
				    WinClose('Khôi phục trang')
				    WinClose('Bạn có muốn khôi phục trang không?')
				    WinClose('Install Google Translate extension to translate this page?')
                    WinClose('Manik Ahmed - YouTube - Vivaldi')
				    WinClose('Restore pages?')
				    Sleep(1000)
					If $linkvideo=4 Then
						Sleep(5000)
						Send('{tab}')
						Sleep(3000)
						Send('{tab}')
						Sleep(3000)
						Send('{enter}')
						Sleep(5000)
					EndIf

					If $linkvideo=5 or $linkvideo=0 Then

						$x3=0
				        $y3=0
						$emailkhoiphuc=_ImageSearchArea(@ScriptDir&'\videos.bmp',1,406, 318,831,610,$x3,$y3,50)
				        If $x3>0 Then
				         	ControlClick('','','','left',1,$x3,$y3)    ; click video
					        Sleep(3000)
							$linkvideo=1
				        Else

							$emailkhoiphuc=_ImageSearchArea(@ScriptDir&'\videos2.bmp',1,406, 318,831, 610,$x3,$y3,50)
							If $x3>0 Then
								ControlClick('','','','left',1,$x3,$y3)   ; click shorts
					            Sleep(3000)
								$linkvideo=1
						    EndIf

				        EndIf

					EndIf

					$checklink=0
				    For $i20=1 to 10
				          $pixcel=PixelSearch(76,110,146, 166,0xFF0033)
						  $pixcel2=PixelSearch(76,110,146, 166,0xFF00100)
						  $pixcel3=PixelSearch(76,110,146, 166,0xFF0000)
						If IsArray($pixcel) or IsArray($pixcel2) or IsArray($pixcel3) Then
							$i20=20
							$checklink=1
						EndIf
						    Sleep(1000)
					Next

					$pixcel=PixelSearch(500,230,800,500,0xBD79FF)    ; check internet
					If IsArray($pixcel) Then
						Sleep(1000)
                        ControlClick($var[$i10][1],'','','left',1,700, 60)
				        Sleep(2000)
						ClipPut($linkkenh)
					    Sleep(1000)
				        Send('^v')
						Sleep(2000)
						Send('{enter}')
						Sleep(10000)
					EndIf

					If $checklink=0 Then
                        Sleep(1000)
                        ControlClick($var[$i10][1],'','','left',1,600, 60)
				        Sleep(2000)
						ClipPut($linkkenh)
					    Sleep(1000)
				        Send('^v')
						Sleep(2000)
						Send('{enter}')
						Sleep(20000)
					EndIf

				    Sleep(3000)     ;thoi gian nghi


					WinMove('','',0,0,500,800)  ; thu nho tap
					Sleep(2000)


					If $linkvideo=0 Then
                         ToolTip("link trang chu"&'	phien ban:'&$phienban,0,0)
						;Sleep(5000)
						For $i20=1 to 10
				           $pixcel=PixelSearch(57, 99,146, 166,0xFF0033)
						   $pixcel2=PixelSearch(57, 99,146, 166,0xFF0000)
						   $pixcel3=PixelSearch(57, 99,146, 166,0xFF0100)
					        If IsArray($pixcel) or IsArray($pixcel2) or IsArray($pixcel3) Then
							   $i20=20
						    EndIf
						    Sleep(1000)
						Next

						$pixcel=PixelSearch(29, 244,80,550,0x0F0F0F)
						Sleep(1000)
						If IsArray($pixcel) Then
						    MouseClick('left',$pixcel[0]+5,$pixcel[1]+5,1,20)
							Sleep(2000)
                        EndIf


                        Sleep(2000)
						MouseClick('left',152, 170,1,20)
						Sleep(1000)
						Send('{tab}')
						Sleep(1000)
						Send('{tab}')
						Sleep(1000)
						Send('{tab}')
						Sleep(1000)
						Send('{tab}')
						Sleep(1000)
						Send('{enter}')
						Sleep(3000)
						MouseClick('left',247, 176,1,20)
						Sleep(3000)
						MouseClick('left',152, 170,1,20)
						Sleep(3000)
						Send('{tab}')
						Sleep(1000)
						Send('{tab}')
						Sleep(1000)
						Send('{tab}')
						Sleep(1000)
						Send('{enter}')
						Sleep(3000)
						MouseClick('left',247, 176,1,20)
						Sleep(3000)
						MouseClick('left',152, 170,1,20)
						Sleep(3000)
						Send('{tab}')
						Sleep(1000)
						Send('{tab}')
						Sleep(1000)
						Send('{enter}')
						Sleep(3000)

						Sleep(200)
						ControlClick($var[$i10][1],'','','left',1,421, 300)
						Sleep(200)
						ControlClick($var[$i10][1],'','','left',1,377, 458)
						Sleep(200)

					EndIf

                    If $linkvideo=2 Then
                        ToolTip("link shorts"&'	phien ban:'&$phienban,0,0)
						MouseMove(742,Random(440,600,1))
						Sleep(1000)
						For $i20=1 to Random(4,20,1)
						   MouseWheel($MOUSE_WHEEL_DOWN,1)
						   Sleep(500)
						Next
						Sleep(2000)
						ControlClick($var[$i10][1],'','','left',1,Random(138, 676,1),Random(413, 696,1))  ;xem video
					    Sleep(50)
						ControlClick($var[$i10][1],'','','left',1,Random(138, 676,1),Random(413, 696,1))  ;xem video
					    Sleep(50)
						ControlClick($var[$i10][1],'','','left',1,Random(138, 676,1),Random(413, 696,1))  ;xem video
					    Sleep(50)
						ControlClick($var[$i10][1],'','','left',1,Random(138, 676,1),Random(413, 696,1))  ;xem video
					    Sleep(50)
					    Sleep(10000)
						For $i20=1 to 10
				            $pixcel=PixelSearch(56, 96,146, 166,0xFF0033)
							$pixcel2=PixelSearch(56, 96,146, 166,0xFF0000)
							$pixcel3=PixelSearch(56, 96,146, 166,0xFF0100)
					        If IsArray($pixcel) or IsArray($pixcel2) or IsArray($pixcel3) Then
							    $i20=20
						    EndIf
						   Sleep(1000)
						Next

						Sleep(3000)
						MouseClick('left',247, 394,1,20)
						Sleep(1000)
						Send('{tab}')
						Sleep(1000)
						Send('{tab}')
						Sleep(1000)
						Send('{tab}')
						Sleep(1000)
						Send('{tab}')
						Sleep(1000)
						Send('{tab}')
						Sleep(1000)
						Send('{tab}')
						Sleep(1000)
						Send('{tab}')
						Sleep(1000)
						Send('{tab}')
						Sleep(1000)
						Send('{enter}')
						Sleep(5000)
                        Send('^t')
				        Sleep(2000)
						ClipPut($linkkenh)
					    Sleep(1000)
				        Send('^v')
						Sleep(2000)
						Send('{enter}')
						Sleep(15000)
						Sleep(2000)
						ControlClick($var[$i10][1],'','','left',1,Random(138, 676,1),Random(413, 696,1))  ;xem video
					    Sleep(50)
						ControlClick($var[$i10][1],'','','left',1,Random(138, 676,1),Random(413, 696,1))  ;xem video
					    Sleep(50)
						ControlClick($var[$i10][1],'','','left',1,Random(138, 676,1),Random(413, 696,1))  ;xem video
					    Sleep(50)
						ControlClick($var[$i10][1],'','','left',1,Random(138, 676,1),Random(413, 696,1))  ;xem video
					    Sleep(50)
					    Sleep(10000)
						For $i20=1 to 10
				            $pixcel=PixelSearch(56, 96,146, 166,0xFF0033)
							$pixcel2=PixelSearch(56, 96,146, 166,0xFF0000)
							$pixcel3=PixelSearch(56, 96,146, 166,0xFF0100)
					        If IsArray($pixcel) or IsArray($pixcel2) or IsArray($pixcel3) Then
							    $i20=20
						    EndIf
						   Sleep(1000)
						Next
						Sleep(3000)
						MouseClick('left',258, 320,1,20)
						Sleep(1000)

							ControlClick($var[$i10][1],'','','left',1,317, 693)
							Sleep(200)
                            ControlClick($var[$i10][1],'','','left',1,306, 671)
							Sleep(200)
						    ControlClick($var[$i10][1],'','','left',1,274, 654)
							Sleep(200)
							ControlClick($var[$i10][1],'','','left',1,271, 653)
							Sleep(200)

							ControlClick($var[$i10][1],'','','left',1,332, 655)
							Sleep(200)
							ControlClick($var[$i10][1],'','','left',1,274, 654)
							Sleep(200)
							ControlClick($var[$i10][1],'','','left',1,356, 671)
							Sleep(200)
							ControlClick($var[$i10][1],'','','left',1,367, 693)
							Sleep(2000)
						Send('^w')

                       ; EndIf
					EndIf

                    If $linkvideo=1 Then

						ToolTip("link video"&'	phien ban:'&$phienban,0,0)
                        Sleep(1000)
						MouseMove(236, 317)
						Sleep(1000)
						For $i20=1 to Random(2,20,1)
						   MouseWheel($MOUSE_WHEEL_DOWN,1)
						   Sleep(500)
						Next
						Sleep(2000)
						ControlClick($var[$i10][1],'','','left',1,249, 273)  ;xem video
					    Sleep(50)
						ControlClick($var[$i10][1],'','','left',1,240, 478)  ;xem video
					    Sleep(50)
						ControlClick($var[$i10][1],'','','left',1,243, 625)  ;xem video
					    Sleep(50)
					    Sleep(7000)
					    For $i20=1 to 10
				          $pixcel=PixelSearch(76,90,146, 166,0xFF0033)
						  $pixcel2=PixelSearch(76,90,146, 166,0xFF0000)
						  $pixcel3=PixelSearch(76,90,146, 166,0xFF0100)
					       If IsArray($pixcel) or IsArray($pixcel2) or IsArray($pixcel3) Then
							  $i20=20
						   EndIf
						   Sleep(1000)
						Next

						Sleep(5000)

						ControlClick($var[$i10][1],'','','left',1,245, 308)  ;tam dung video

						Sleep(3000)     ;thoi gian nghi
						$pixcel=PixelSearch(18,485,41,550,0x0F0F0F)         ; sub ytb
						If IsArray($pixcel) Then
							MouseClick('left',$pixcel[0],$pixcel[1],1,20)
							Sleep(1000)
							Send('{tab}')
							Sleep(1000)
							Send('{tab}')
							Sleep(1000)
							Send('{tab}')
							Sleep(1000)
							Send('{enter}')
							Sleep(2000)
							MouseClick('left',$pixcel[0],$pixcel[1],1,20)
							Sleep(1000)
							Send('{tab}')
							Sleep(1000)
							Send('{tab}')
							Sleep(1000)
							Send('{enter}')
							Sleep(3000)
						Else
							   $pixcel=PixelSearch(18,412,41,550,0x0F0F0F)         ; sub ytb
						  If IsArray($pixcel) Then
							MouseClick('left',$pixcel[0],$pixcel[1],1,20)
							Sleep(1000)
							Send('{tab}')
							Sleep(1000)
							Send('{tab}')
							Sleep(1000)
							Send('{tab}')
							Sleep(1000)
							Send('{enter}')
							Sleep(2000)
							MouseClick('left',$pixcel[0],$pixcel[1],1,20)
							Sleep(1000)
							Send('{tab}')
							Sleep(1000)
							Send('{tab}')
							Sleep(1000)
							Send('{enter}')
							Sleep(3000)
						  Else

							$pixcel=PixelSearch(23, 491,41, 777,0x0F0F0F)         ; sub ytb
						    If IsArray($pixcel) Then
                                MouseClick('left',$pixcel[0],$pixcel[1],1,20)
							    Sleep(1000)
						     	Send('{tab}')
						    	Sleep(1000)
						    	Send('{tab}')
						    	Sleep(1000)
						    	Send('{tab}')
						    	Sleep(1000)
						    	Send('{enter}')
							    Sleep(2000)
						    	MouseClick('left',$pixcel[0],$pixcel[1],1,20)
						    	Sleep(1000)
						     	Send('{tab}')
						    	Sleep(1000)
						    	Send('{tab}')
						    	Sleep(1000)
						    	Send('{enter}')
						    	Sleep(3000)
							Else

								$pixcel=PixelSearch(20, 423,484, 693,0x0F0F0F)         ; sub ytb
						        If IsArray($pixcel) Then
                                    MouseClick('left',$pixcel[0],$pixcel[1],1,20)
									Sleep(1000)
						     	    Send('{tab}')
						    	    Sleep(1000)
						    	    Send('{tab}')
						    	    Sleep(1000)
						    	    Send('{tab}')
						    	    Sleep(1000)
						    	    Send('{enter}')
							        Sleep(2000)
						    	    MouseClick('left',$pixcel[0],$pixcel[1],1,20)
						    	    Sleep(1000)
						     	    Send('{tab}')
						    	    Sleep(1000)
						    	    Send('{tab}')
						    	    Sleep(1000)
						    	    Send('{enter}')
						    	    Sleep(3000)
                                EndIf

                            EndIf
						  EndIf
						EndIf



						;If $x>0 Then ToolTip("đã tìm thấy ảnh sub",0,0)
						Sleep(2000)
						ControlClick($var[$i10][1],'','','left',1,265, 505) ;sub
						Sleep(200)
						ControlClick($var[$i10][1],'','','left',1,265, 440) ;sub
						Sleep(200)
						ControlClick($var[$i10][1],'','','left',1,381, 506) ;sub
						Sleep(200)
						ControlClick($var[$i10][1],'','','left',1,381, 440) ;sub
						Sleep(200)
						ControlClick($var[$i10][1],'','','left',1,312, 565) ;sub
						Sleep(200)
						ControlClick($var[$i10][1],'','','left',1,329, 538) ;sub
						Sleep(200)
						ControlClick($var[$i10][1],'','','left',1,267, 559) ;sub
						Sleep(200)
						ControlClick($var[$i10][1],'','','left',1,300, 571) ;sub

							#cs
							_ImageSearchArea(@ScriptDir&'\sub.bmp',1,170, 365,450, 650,$x,$y,1,1)
                            Sleep(500)
						    If $x>0 Then
							    MouseClick('left',$x,$y,1,20)
							    Sleep(5000)
						    EndIf

		                     _ImageSearchArea(@ScriptDir&'\sub2.bmp',1,170, 365,451, 650,$x,$y,1,1)
                            Sleep(500)
						    If $x>0 Then
							    MouseClick('left',$x,$y,1,20)
							    Sleep(5000)
						    EndIf
						    Sleep(500)

						    _ImageSearchArea(@ScriptDir&'\sub3.bmp',1,170, 365,451,650,$x,$y,1,1)
                             Sleep(500)
					    	If $x>0 Then
							    MouseClick('left',$x,$y,1,20)
							    Sleep(5000)
						    EndIf
						    Sleep(500)
							#ce


					  If $datalink[0]=4 Or not IsArray($pixcel) Then
                        If $datalink[0]='SubLan2' Or not IsArray($pixcel) Then
						    Sleep(1000)
                            Send('^t')
				            Sleep(2000)
						    ClipPut($linkkenh)
					        Sleep(1000)
				            Send('^v')
						    Sleep(2000)
						    Send('{enter}')
						    Sleep(10000)
						    ToolTip("link video"&'	phien ban:'&$phienban,0,0)
                            Sleep(1000)
						    MouseMove(236, 317)
						    Sleep(1000)
						    For $i20=1 to Random(2,20,1)
						       MouseWheel($MOUSE_WHEEL_DOWN,1)
						       Sleep(500)
						    Next
						    Sleep(2000)
						    ControlClick($var[$i10][1],'','','left',1,249, 273)  ;xem video
					        Sleep(50)
						    ControlClick($var[$i10][1],'','','left',1,240, 478)  ;xem video
					        Sleep(50)
						    ControlClick($var[$i10][1],'','','left',1,243, 625)  ;xem video
					        Sleep(50)
					        Sleep(7000)
					        For $i20=1 to 10
				               $pixcel=PixelSearch(76,90,146, 166,0xFF0033)
						       $pixcel2=PixelSearch(76,90,146, 166,0xFF0000)
						       $pixcel3=PixelSearch(76,90,146, 166,0xFF0100)
					           If IsArray($pixcel) or IsArray($pixcel2) or IsArray($pixcel3) Then
							      $i20=20
						        EndIf
						       Sleep(1000)
						     Next

						     ControlClick($var[$i10][1],'','','left',1,245, 308)  ;tam dung video
                            Sleep(3000)

                        $x=0
		                    $y=0
		                    _ImageSearchArea(@ScriptDir&'\sub.bmp',1,100, 576,476, 654,$x,$y,100,0)
                            Sleep(500)
						    If $x>0 Then
							    MouseClick('left',$x,$y-10,1,20)
							    Sleep(5000)
							Else
								_ImageSearchArea(@ScriptDir&'\sub.bmp',1,100, 525,476, 654,$x,$y,100,0)
                                Sleep(500)
								If $x>0 Then
							        MouseClick('left',$x,$y-10,1,20)
							        Sleep(5000)
								Else
									_ImageSearchArea(@ScriptDir&'\sub.bmp',1,100, 475,476, 654,$x,$y,100,0)
                                    Sleep(500)
						            If $x>0 Then
							            MouseClick('left',$x,$y-10,1,20)
									    Sleep(5000)
									Else
										_ImageSearchArea(@ScriptDir&'\sub.bmp',1,100,475,468, 776,$x,$y,100,0)
                                        Sleep(500)
						                If $x>0 Then
							                MouseClick('left',$x,$y-10,1,20)
											Sleep(5000)
										Else
											_ImageSearchArea(@ScriptDir&'\sub2.bmp',1,100,525,470, 785,$x,$y,100,0)
                                            Sleep(500)
						                    If $x>0 Then
							                    MouseClick('left',$x,$y+10,1,20)
							                    Sleep(5000)
											Else
												_ImageSearchArea(@ScriptDir&'\sub2.bmp',1,132,475,479, 731,$x,$y,100,0)
                                                Sleep(500)
								                If $x>0 Then
													MouseClick('left',$x,$y+10,1,20)
							                        Sleep(5000)
								                EndIf

											EndIf

						                    EndIf
						            EndIf


						        EndIf

						    EndIf

						ControlClick($var[$i10][1],'','','left',1,265, 505) ;sub
						Sleep(200)
						ControlClick($var[$i10][1],'','','left',1,265, 440) ;sub
						Sleep(200)
						ControlClick($var[$i10][1],'','','left',1,381, 506) ;sub
						Sleep(200)
						ControlClick($var[$i10][1],'','','left',1,381, 440) ;sub
						Sleep(200)
						ControlClick($var[$i10][1],'','','left',1,312, 565) ;sub
						Sleep(200)
						ControlClick($var[$i10][1],'','','left',1,329, 538) ;sub
						Sleep(200)
						ControlClick($var[$i10][1],'','','left',1,267, 559) ;sub


						EndIf
                      EndIf

                    EndIf

					If $linkvideo=3 Then
                        ToolTip("link truc tiep"&'	phien ban:'&$phienban,0,0)
					    Sleep(2000)

					    For $i20=1 to 10
				          $pixcel=PixelSearch(76,90,146, 166,0xFF0033)
						  $pixcel2=PixelSearch(76,90,146, 166,0xFF0000)
						  $pixcel3=PixelSearch(76,90,146, 166,0xFF0100)
					       If IsArray($pixcel) or IsArray($pixcel2) or IsArray($pixcel3) Then
							  $i20=20
						   EndIf
						   Sleep(1000)
						Next

						ControlClick($var[$i10][1],'','','left',1,245, 308)  ;tam dung video
					    Sleep(2000)



				        Sleep(2000)     ;thoi gian nghi
						$pixcel=PixelSearch(22, 420,324, 455,0x0F0F0F)         ; sub ytb
						If IsArray($pixcel) Then
							MouseClick('left',$pixcel[0],$pixcel[1],1,20)
							Sleep(1000)
							Send('{tab}')
							Sleep(1000)
							Send('{tab}')
							Sleep(1000)
							Send('{tab}')
							Sleep(1000)
							Send('{enter}')
							Sleep(2000)
							MouseClick('left',$pixcel[0],$pixcel[1],1,20)
							Sleep(1000)
							Send('{tab}')
							Sleep(1000)
							Send('{tab}')
							Sleep(1000)
							Send('{enter}')
							Sleep(3000)
						Else

							$pixcel=PixelSearch(324, 480,387, 484,0x0F0F0F)         ; sub ytb
						    If IsArray($pixcel) Then
                                MouseClick('left',$pixcel[0],$pixcel[1],1,20)
							    Sleep(1000)
						     	Send('{tab}')
						    	Sleep(1000)
						    	Send('{tab}')
						    	Sleep(1000)
						    	Send('{tab}')
						    	Sleep(1000)
						    	Send('{enter}')
							    Sleep(2000)
						    	MouseClick('left',$pixcel[0],$pixcel[1],1,20)
						    	Sleep(1000)
						     	Send('{tab}')
						    	Sleep(1000)
						    	Send('{tab}')
						    	Sleep(1000)
						    	Send('{enter}')
						    	Sleep(3000)
                            EndIf
						EndIf


						ControlClick($var[$i10][1],'','','left',1,265, 505) ;sub
						Sleep(200)
						ControlClick($var[$i10][1],'','','left',1,265, 440) ;sub
						Sleep(200)
						ControlClick($var[$i10][1],'','','left',1,381, 506) ;sub
						Sleep(200)
						ControlClick($var[$i10][1],'','','left',1,381, 440) ;sub
						Sleep(1000)


					  					  If $datalink[0]=4 Then
                        If $datalink[0]='SubLan2' Then
						    Sleep(1000)
                            Send('^t')
				            Sleep(2000)
						    ClipPut($linkkenh)
					        Sleep(1000)
				            Send('^v')
						    Sleep(2000)
						    Send('{enter}')
						    Sleep(10000)
						    ToolTip("link video"&'	phien ban:'&$phienban,0,0)
                            Sleep(1000)
						    MouseMove(236, 317)
						    Sleep(1000)
						    For $i20=1 to Random(2,20,1)
						       MouseWheel($MOUSE_WHEEL_DOWN,1)
						       Sleep(500)
						    Next
						    Sleep(2000)
						    ControlClick($var[$i10][1],'','','left',1,249, 273)  ;xem video
					        Sleep(50)
						    ControlClick($var[$i10][1],'','','left',1,240, 478)  ;xem video
					        Sleep(50)
						    ControlClick($var[$i10][1],'','','left',1,243, 625)  ;xem video
					        Sleep(50)
					        Sleep(7000)
					        For $i20=1 to 10
				               $pixcel=PixelSearch(76,90,146, 166,0xFF0033)
						       $pixcel2=PixelSearch(76,90,146, 166,0xFF0000)
						       $pixcel3=PixelSearch(76,90,146, 166,0xFF0100)
					           If IsArray($pixcel) or IsArray($pixcel2) or IsArray($pixcel3) Then
							      $i20=20
						        EndIf
						       Sleep(1000)
						     Next

						     ControlClick($var[$i10][1],'','','left',1,245, 308)  ;tam dung video
                            Sleep(2000)

						    $x=0
		                    $y=0
		                    _ImageSearchArea(@ScriptDir&'\sub.bmp',1,98, 425,397, 549,$x,$y,50)
                            Sleep(500)
						    If $x>0 Then
							    MouseClick('left',$x,$y,1,20)
							    Sleep(5000)
						    EndIf

		                     _ImageSearchArea(@ScriptDir&'\sub2.bmp',1,98, 425,397, 549,$x,$y,50)
                            Sleep(500)
						    If $x>0 Then
							    MouseClick('left',$x,$y,1,20)
							    Sleep(5000)
						    EndIf
						    Sleep(500)

						    _ImageSearchArea(@ScriptDir&'\sub3.bmp',1,98, 425,397, 549,$x,$y,50)
                             Sleep(500)
					    	If $x>0 Then
							    MouseClick('left',$x,$y,1,20)
							    Sleep(5000)
						    EndIf
						    Sleep(500)

						    If $x=0 Then
							    ControlClick($var[$i10][1],'','','left',1,265, 505) ;sub
						        Sleep(200)
							    ControlClick($var[$i10][1],'','','left',1,265, 440) ;sub
						        Sleep(200)
							    ControlClick($var[$i10][1],'','','left',1,381, 506) ;sub
						        Sleep(200)
							    ControlClick($var[$i10][1],'','','left',1,381, 440) ;sub
						        Sleep(1000)
						    EndIf

						EndIf
                      EndIf



					EndIf

                    If $linkvideo=4 Then
						Sleep(5000)
						Send('{tab}')
						Sleep(3000)
						Send('{tab}')
						Sleep(3000)
						Send('{enter}')
						Sleep(5000)
					EndIf

                    WinMove('','',0,0,1366,800)
					Sleep(2000)
					ControlClick('','','','left',1,600,60)
					Sleep(2000)
					Send('google.com')
					Sleep(1000)
					Send('{enter}')
					Sleep(5000)
					;_MoTaskmgr()

				EndIf
			  Next


              FileWriteLine(@ScriptDir&"\LinkDaSub.txt",$linkkenh)

		  ;Next

	    EndFunc

        Func _xoa1NuaFileDasub($i,$i5)
            $sodonglinkdasub=1
			$i20=50
			FileDelete(@ScriptDir&"\LinkTam.txt")
			Sleep(1000)
            $sodonglinkdasub=_FileCountLines(@ScriptDir&"\LinkDaSub"&$i&$i5&".txt")
			If $sodonglinkdasub>100 Then
				For $i20=50 to $sodonglinkdasub
                    $linktam=FileReadLine(@ScriptDir&"\LinkDaSub"&$i&$i5&".txt",$i20)
					FileWriteLine(@ScriptDir&"\LinkTam.txt",$linktam)
				Next

				FileDelete(@ScriptDir&"\LinkDaSub"&$i&$i5&".txt")
				Sleep(1000)
			    FileMove(@ScriptDir&"\LinkTam.txt",@ScriptDir&"\LinkDaSub"&$i&$i5&".txt",1)
			EndIf

        EndFunc

        Func _subrandomSheet($vpsso,$i)
				        WinClose('trinh duyet')
                        WinClose('Server Manager')
						WinClose('Proxy Client Tinsoft')
						ProcessClose('WerFault.exe')

                $linkvideo=0
				Sleep(1000)
                For $i21=1 to 50
				    $sodong=_FileCountLines(@ScriptDir&'\linkkenhchay.txt')
                    $linkkenh=FileReadLine(@ScriptDir&"\linkkenhchay.txt",Random(1,$sodong,1))    ; chu y thay doi
				    Sleep(1000)
				    $datalink=StringSplit($linkkenh,'	')
				    If IsArray($datalink) Then
                        $linkkenh=$datalink[1]
						$kq=_HttpRequest(2,$linkkenh,'','','','','')
					    $arry=_StringBetween($kq,'subscriberCountText":{"accessibility":{"accessibilityData":{"label":','simpleText')

                        If IsArray($arry)  Then
			 			    $kickthuocmang=UBound($arry)
						    $sosub1=StringTrimLeft($arry[($kickthuocmang-1)],1)
						    $sosub2=StringTrimRight($sosub1,19)
						    $sosub3=StringSplit($sosub2,' ')
						    If IsArray($sosub3) Then
							   If $sosub3[0]=2 Then
								    If $sosub3[2]='nghìn' Then
									   $sosub4=StringReplace($sosub3[1],',','.')
									   $sosub5=$sosub4*1000
								    EndIf
							    Else
								    $sosub5=$sosub2
							    EndIf
                            EndIf


					    EndIf

						If $sosub5<1000 Then $datalink[2]=$datalink[2]+100




				    EndIf



				Next


                $checklink=StringRight($linkkenh,6)
				If $checklink='videos' or $checklink='treams' Then
                     $linkvideo=1
				EndIf

				WinSetState('Proxy Client Tinsoft','',@SW_MINIMIZE)
			    Sleep(1000)

				$var = WinList ("[CLASS:Chrome_WidgetWin_1]")
                Sleep(1000)
				If $var[0][0]=0 Then $var = WinList ("[CLASS:MozillaWindowClass]")
				Sleep(1000)
				If $i=9 Then $var = WinList ("[CLASS:FlashPeakWindowClass]")


			For $i10 = 1 to $var[0][0]
			    If BitAnd (WinGetState ($var[$i10][1]), 2) And $var[$i10][0] <> "" Then
				    ControlClick($var[$i10][1],'','','left',1,500, 60)
				    Sleep(500)
				    Sleep(Random(1000,5000,1))
				    Sleep(500)
				    ClipPut($linkkenh)
				    Sleep(50)
				    ControlSend($var[$i10][1],'','','^v')
				    Sleep(1000)
					;Send('/videos')
					;Send('/streams')
					Sleep(1000)
				    ControlSend($var[$i10][1],'','','{enter}')
				    Sleep(15000)
				    WinClose('Restore pages?')
				    WinClose('Khôi phục trang')
				    WinClose('Bạn có muốn khôi phục trang không?')
				    WinClose('Install Google Translate extension to translate this page?')
                    WinClose('Manik Ahmed - YouTube - Vivaldi')
				    WinClose('Restore pages?')
				    Sleep(1000)
					;If $i=5 Then ControlClick($var[$i10][1],'','','left',1,1245, 216)

				    For $i20=1 to 10
				          $pixcel=PixelSearch(76,110,146, 166,0xFF0000)
					       If IsArray($pixcel) Then
							  $i20=20
						   EndIf
						   Sleep(1000)
				    Next

				    Sleep(4000)     ;thoi gian nghi

                    If $linkvideo=1 Then
					    If $i=10 Then
						   MouseClick('left',396, 596,1,20)
						   Sleep(500)
						   MouseClick('left',106, 731,1,20)
						   Sleep(10000)
					    EndIf

					    ControlClick($var[$i10][1],'','','left',1,459, 725)  ;xem video
					    Sleep(200)
					    ControlClick($var[$i10][1],'','','left',1,317, 690)  ;xem video
					    Sleep(200)
					    ControlClick($var[$i10][1],'','','left',1,317, 690)  ;xem video
					    Sleep(200)
					    ControlClick($var[$i10][1],'','','left',1,329, 460)  ;xem video
					    Sleep(200)
					    ControlClick($var[$i10][1],'','','left',1,529, 460)  ;xem video
					    Sleep(200)

					    Sleep(7000)
					    For $i20=1 to 10
				          $pixcel=PixelSearch(76,110,146, 166,0xFF0000)
					       If IsArray($pixcel) Then
							  $i20=20
						   EndIf
						   Sleep(1000)
						Next

						If $i=10 Then
                              Sleep(2000)
							  MouseClick('left',237, 139 ,1,20)    ;sub  771, 378
						      Sleep(1000)
							  MouseClick('left',215, 303,1,20)    ;sub
						      Sleep(1000)
							  MouseClick('left',235, 331,1,20)    ;sub
						      Sleep(1000)
							  MouseClick('left',318, 313,1,20)    ;sub
						      Sleep(1000)
							  MouseClick('left',974, 152,1,20)    ;sub
						      Sleep(1000)
							  MouseClick('left',1121, 149,1,20)    ;sub
						      Sleep(1000)
							  MouseClick('left',220, 310,1,20)    ;sub
						      Sleep(1000)
							  MouseClick('left',220,165 ,1,20)    ;sub  771, 378
						      Sleep(1000)
							  MouseClick('left',220,185 ,1,20)    ;sub  771, 378
						      Sleep(1000)


							  $pixcel=PixelSearch(203, 277,353, 322,0x0F0F0F)
							  If IsArray($pixcel) Then
							     MouseClick('left',$pixcel[0]+5,$pixcel[1]+5,1,20)    ;sub
						         Sleep(1000)

							  EndIf
					    EndIf

				        Sleep(4000)     ;thoi gian nghi
					    ControlClick($var[$i10][1],'','','left',1,368, 685) ;sub
						Sleep(500)
						ControlClick($var[$i10][1],'','','left',1,310, 685) ;sub
						Sleep(500)
						ControlClick($var[$i10][1],'','','left',1,262, 685) ;sub
						Sleep(500)
						ControlClick($var[$i10][1],'','','left',1,368, 630) ;sub
						Sleep(500)
						ControlClick($var[$i10][1],'','','left',1,310, 630) ;sub
						Sleep(500)
						ControlClick($var[$i10][1],'','','left',1,262, 630) ;sub
						Sleep(500)
						ControlClick($var[$i10][1],'','','left',1,368, 700) ;sub
						Sleep(500)
						ControlClick($var[$i10][1],'','','left',1,310, 700) ;sub
						Sleep(500)
						ControlClick($var[$i10][1],'','','left',1,262, 700) ;sub
						Sleep(500)
						ControlClick($var[$i10][1],'','','left',1,368, 750) ;sub
						Sleep(500)
						ControlClick($var[$i10][1],'','','left',1,310, 750) ;sub
						Sleep(500)
						ControlClick($var[$i10][1],'','','left',1,262, 750) ;sub
						Sleep(500)

						ControlClick($var[$i10][1],'','','left',1,257, 751)    ;sub
						Sleep(500)
						ControlClick($var[$i10][1],'','','left',1,280, 688)    ;sub
						Sleep(500)
						ControlClick($var[$i10][1],'','','left',1,279, 722)    ;sub
						Sleep(500)
						ControlClick($var[$i10][1],'','','left',1,279, 700)    ;sub
						Sleep(500)
						ControlClick($var[$i10][1],'','','left',1,284, 650)    ;sub
						Sleep(500)
						ControlClick($var[$i10][1],'','','left',1,278, 630)    ;sub
						Sleep(500)

						ControlClick($var[$i10][1],'','','left',1,440, 700) ;sub
						Sleep(500)

                    Else


						;Sleep(5000)
						For $i20=1 to 10
				          $pixcel=PixelSearch(76,110,146, 166,0xFF0000)
					       If IsArray($pixcel) Then
							  $i20=20
						   EndIf
						   Sleep(1000)
						Next

                           If $i=5 Then ControlClick($var[$i10][1],'','','left',1,1245, 216)
							Sleep(2000)
							ControlClick($var[$i10][1],'','','left',1,1165, 370)
					        Sleep(100)
							ControlClick($var[$i10][1],'','','left',1,1165, 215)
					        Sleep(100)
							ControlClick($var[$i10][1],'','','left',1,1165, 226)
					        Sleep(100)
							ControlClick($var[$i10][1],'','','left',1,1165, 390)
					        Sleep(100)
							ControlClick($var[$i10][1],'','','left',1,1165, 230)
					        Sleep(100)
							ControlClick($var[$i10][1],'','','left',1,1165, 411)
					        Sleep(100)
							ControlClick($var[$i10][1],'','','left',1,1165, 312)
					        Sleep(100)
							ControlClick($var[$i10][1],'','','left',1,1165, 148)
					        Sleep(100)
							ControlClick($var[$i10][1],'','','left',1,1165, 189)
					        Sleep(100)
							ControlClick($var[$i10][1],'','','left',1,997, 147)
					        Sleep(100)
							ControlClick($var[$i10][1],'','','left',1,1245, 216)

							If $i=7 Then ControlClick($var[$i10][1],'','','left',1,1260,208)
							Sleep(1000)

							ControlClick($var[$i10][1],'','','left',1,1195, 370)
					        Sleep(100)
							ControlClick($var[$i10][1],'','','left',1,1195, 215)
					        Sleep(100)
							ControlClick($var[$i10][1],'','','left',1,1195, 226)
					        Sleep(100)
							ControlClick($var[$i10][1],'','','left',1,1195, 390)
					        Sleep(100)
							ControlClick($var[$i10][1],'','','left',1,1195, 230)
					        Sleep(100)
							ControlClick($var[$i10][1],'','','left',1,1195, 411)
					        Sleep(100)
							ControlClick($var[$i10][1],'','','left',1,1195, 312)
					        Sleep(100)
							ControlClick($var[$i10][1],'','','left',1,1195, 148)
					        Sleep(100)
							ControlClick($var[$i10][1],'','','left',1,1195, 189)
					        Sleep(100)
							ControlClick($var[$i10][1],'','','left',1,997, 147)
					        Sleep(100)
							ControlClick($var[$i10][1],'','','left',1,1225, 207)
					        Sleep(100)
							ControlClick($var[$i10][1],'','','left',1,1230, 418)
					        Sleep(100)
							ControlClick($var[$i10][1],'','','left',1,1245, 216)

							$pixcel=PixelSearch(631, 170,1246, 606,0x0F0F0F)
					        If IsArray($pixcel) Then
							    $i20=20
							    ControlClick($var[$i10][1],'','','left',1,$pixcel[0]+5,$pixcel[1]+5)
								Sleep(1000)
						    EndIf

							ControlClick($var[$i10][1],'','','left',1,368, 680) ;sub
						    Sleep(500)
						    ControlClick($var[$i10][1],'','','left',1,310, 680) ;sub
						    Sleep(500)
						    ControlClick($var[$i10][1],'','','left',1,262, 680) ;sub
						    Sleep(500)
						    ControlClick($var[$i10][1],'','','left',1,368, 630) ;sub
						    Sleep(500)
						    ControlClick($var[$i10][1],'','','left',1,310, 630) ;sub
						    Sleep(500)
						    ControlClick($var[$i10][1],'','','left',1,262, 630) ;sub
						    Sleep(500)
						    ControlClick($var[$i10][1],'','','left',1,368, 700) ;sub
						    Sleep(500)
						    ControlClick($var[$i10][1],'','','left',1,310, 700) ;sub
						    Sleep(500)
						    ControlClick($var[$i10][1],'','','left',1,262, 700) ;sub
						    Sleep(500)
						    ControlClick($var[$i10][1],'','','left',1,368, 750) ;sub
						    Sleep(500)
						    ControlClick($var[$i10][1],'','','left',1,310, 750) ;sub
						    Sleep(500)
						    ControlClick($var[$i10][1],'','','left',1,262, 750) ;sub
						    Sleep(500)

					EndIf

                EndIf
			Next


	    EndFunc

	    Func _khoidongFireFox($i)
			        $dangnhap=0

			        WinClose('trinh duyet')
					WinClose('csFireFox - 10 sea')
			        WinClose('Proxy Client Tinsoft')
				    Send('^w')
					Sleep(1000)
                    WinClose('Server Manager')
					Sleep(2000)
					$linkblu2=''

                    WinClose('Proxy Client Tinsoft')

					MouseClick('left',1366,10,1,20)
					Sleep(1000)
					MouseClick('left',1366,10,1,20)
					Sleep(1000)

					If $i=1 Then $linkblu="C:\Program Files\Google\Chrome\Application\chrome.exe"

					Sleep(2000)
					Run( $linkblu,'')
					Sleep(5000)

					$var = WinList ("[CLASS:Chrome_WidgetWin_1]")
                    Sleep(100)
					If $var[0][0]=0 Then $var = WinList ("[CLASS:MozillaWindowClass]")
					Sleep(100)
					If $i=9 Then $var = WinList ("[CLASS:FlashPeakWindowClass]")
					If $var[0][0] = 0 Then
	                    If $i=1 Then
						    ;$linkblu='C:\Program Files\Microsoft\Edge\Application\msedge.exe'
						    Run( $linkblu2,'')
					    EndIf
					    If $i=7 Then
						    ;$linkblu='C:\Program Files\Mozilla Firefox\firefox.exe'
						    Run( $linkblu2,'')
					    EndIf
					    If $i=6 Then
						    ;$linkblu="C:\Users\"&@UserName&"\AppData\Local\Google\Chrome\Application\chrome.exe"
		        	        Run( $linkblu2,'')
					    EndIf

					    Sleep(8000)
						If $i=6 or 7 Then
						    Send('{enter}')
						EndIf
                    EndIf

					$var = WinList ("[CLASS:Chrome_WidgetWin_1]")
                    Sleep(100)
					If $var[0][0]=0 Then $var = WinList ("[CLASS:MozillaWindowClass]")
					Sleep(100)
					If $i=9 Then $var = WinList ("[CLASS:FlashPeakWindowClass]")

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
					WinClose('opera.exe - System Error')

				#cs
					If  $i=9 Then
							WinClose('Check Update')
							Sleep(1000)
							Send('{tab}')
							Sleep(1000)
							Send('{tab}')
							Sleep(1000)
							Send('{tab}')
							Sleep(1000)
							Send('{enter}')
							Sleep(2000)
					EndIf

					If $i=6 Then
						MouseClick('left',1185, 192,1,20)  ;tat thong bao update
				        Sleep(2000)
						MouseClick('left',1260,200,1,20)
						Sleep(1000)
					EndIf

					If $i=5 Then
							ControlClick('','','','left',1,66, 26)
							Sleep(2000)
							Send('{tab}')
							Sleep(1000)
							Send('{tab}')
							Sleep(1000)
							Send('{enter}')
							Sleep(2000)
							ControlClick('','','','left',1,427, 26)
							Sleep(2000)
							ControlClick('','','','left',1,1322,99)
						    Sleep(100)
							ControlClick('','','','left',1,1280,163)
						    Sleep(100)

					EndIf

					If $i=4 Then
						MouseClick('left',600, 102,1,20)
						Sleep(2000)
						MouseClick('left',800, 155,1,20)
						Sleep(2000)
						MouseClick('left',842, 104,1,20)
						Sleep(2000)
						MouseClick('left',842, 104,1,20)
						Sleep(2000)
						MouseClick('left',852, 510,1,20)  ;tat thong bao update
				        Sleep(3000)
					EndIf


                    If $i=1 Then
						MouseClick('left',1280,700,1,20)  ;tat thong bao update
				        Sleep(7000)
					EndIf
                #ce

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

						If $i=7 or $i=9 Then
                           MouseClick('left',830,240,1,20)
						   Sleep(2000)
						   MouseClick('left',830,265,1,20)
						   Sleep(2000)
						   MouseClick('left',830,285,1,20)
						   Sleep(2000)

						EndIf
                        If $i<>1 Then
						    MouseClick('left',658, 240,1,20)
						    Sleep(3000)
						    MouseClick('left',658, 240,1,20)
						    Sleep(3000)
						EndIf

						 If $i=4 Then
						    Send('{tab}')
							Sleep(2000)
							Send('{enter}')
							Sleep(2000)
							ControlClick('','','','left',1,1327,98)
						    Sleep(100)
						EndIf

						If  $i=10 or $i=5 Then
                           MouseClick('left',500,500,1,20)
						   Sleep(2000)
						   Send('{tab}')
						   Sleep(2000)
						   Send('{tab}')
						   Sleep(2000)
						   Send('{tab}')
						   Sleep(2000)
						   Send('{enter}')
						   Sleep(3000)
						EndIf

						WinClose('Restore pages?')
					    WinClose('Restore pages')

						If $i=7 Then
                            $pixcel=PixelSearch(251, 87,1209, 645,0xFD2D51)
					        If IsArray($pixcel) Then
                                MouseClick('left',$pixcel[0]+5,$pixcel[1]+5,1,20)
								Sleep(2000)
								Send('{tab}')
								Sleep(2000)
								Send('{tab}')
								Sleep(2000)
								Send('{SPACE}')
								Sleep(2000)
								Send('{tab}')
								Sleep(2000)
								Send('{tab}')
								Sleep(2000)
								Send('{enter}')
								Sleep(3000)

                            EndIf

						EndIf


						WinMove($var[$i10][1],'',0,0,1366,850)
						Sleep(3000)

						If $i=7 or $i=9 Then
                           MouseClick('left',830,240,1,20)
						   Sleep(2000)
						   MouseClick('left',830,265,1,20)
						   Sleep(2000)

						EndIf
						If $i=7 Then
						   MouseClick('left',770,275,1,20)
						   MouseClick('left',770,265,1,20)
						EndIf
						If $i=7 Then
						   MouseClick('left',1330,135,1,20)
						   Sleep(1000)
						   MouseClick('left',1330,103,1,20)
						EndIf
						If $i=1 Then
							MouseClick('left',300,650,1,20)
							Sleep(3000)
						    MouseClick('left',800,120,1,20)
						EndIf
						If $i=2 Then
						   MouseClick('left',1325,106,1,20)
						EndIf
						If $i=3 Then
						   MouseClick('left',1325,109,1,20)
						   Sleep(2000)
						   MouseClick('left',1325,140,1,20)
						   Sleep(2000)
						EndIf
						If $i=4 Then
						   ControlClick('','','','left',1,1327,98)
						    Sleep(100)
						   Sleep(2000)
					    EndIf


                    #cs
						If  $i=10 Then
							Sleep(2000)
			            	Send('{tab}')
				            Sleep(2000)
				            Send('{tab}')
				            Sleep(2000)
				            Send('{tab}')
				            Sleep(2000)
				            Send('{enter}')
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
							Send('{tab}')
							Sleep(1000)
							Send('{tab}')
							Sleep(1000)
							Send('{tab}')
							Sleep(1000)
							Send('{enter}')
							Sleep(2000)
							MouseClick('left',503, 200,1,20)
							Sleep(1000)
							MouseClick('left',831, 237,1,20)
							Sleep(1000)
							MouseClick('left',830,280,1,20)
							Sleep(2000)
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
							MouseClick('left',600, 102,1,20)
						    Sleep(2000)
						    MouseClick('left',800, 155,1,20)
						    Sleep(2000)
							MouseClick('left',842, 104,1,20)
						    Sleep(2000)
						    MouseClick('left',842, 104,1,20)
						    Sleep(2000)
						    MouseClick('left',852, 510,1,20)  ;tat thong bao update
				            Sleep(7000)
						    MouseClick('left',725, 132,1,20)  ;tat thong bao update
				            Sleep(2000)

					    EndIf


						If $i=3 Then


                           MouseClick('left',1324,109,1,20)
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
					#ce


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

	    Func _khoidongFireFox2($i5,$vpsso)
			        $dangnhap=0
			        WinClose('trinh duyet')
					;WinClose('csFireFox - 10 sea')
			        WinClose('Proxy Client Tinsoft')
			        Sleep(200)
                    WinClose('Server Manager')
					Sleep(100)
					ProcessClose('WerFault.exe')
					$linkblu2=''
                    $link=''
					Sleep(Random(1,180000,1))
					$checklink=  mod($i5,5)
                If $checklink=1 Then

					FileDelete(@ScriptDir&'\linkkenhchaySUB2.txt')

				    If $vpsso=1  Then _requetGooGleDOC('https://docs.google.com/document/d/1ovARvIbwSXide3zh42IbuWuGmgu8NW4HaFiwh2LJaOM/export?format=txt','linkkenhchaySUB2.txt')                       ;bản 1.1.60
					If $vpsso=2 Then _requetGooGleDOC('https://docs.google.com/document/d/1W7_gFyfDBhRYkCJw5v1hukJu5PwKpy2brANwWX-wHQQ/export?format=txt','linkkenhchaySUB2.txt')                       ;bản 1.1.60
					If $vpsso=3 Then _requetGooGleDOC('https://docs.google.com/document/d/1YxkIOCzSPpev_oWRnKGDyASf1SCxH_-IoWEAI_yYCXs/export?format=txt','linkkenhchaySUB2.txt')                       ;bản 1.1.60
					If $vpsso=4 Then _requetGooGleDOC('https://docs.google.com/document/d/1PTxYeX31wdMOaCiLBfPLuhNISjlLAHQpRleIRfAByiE/export?format=txt','linkkenhchaySUB2.txt')                       ;bản 1.1.60
					If $vpsso=5 Then _requetGooGleDOC('https://docs.google.com/document/d/1hjCOmYyFbTyV7d21LSfG27_sNAB_7U5ueMdLTACq1XQ/export?format=txt','linkkenhchaySUB2.txt')                       ;bản 1.1.60
					If $vpsso=6 Then _requetGooGleDOC('https://docs.google.com/document/d/1hkV92YBc3trV9o5feO3j0qPSj67ZQru0ILE1Uvezd28/export?format=txt','linkkenhchaySUB2.txt')                       ;bản 1.1.60
					If $vpsso=7 Then _requetGooGleDOC('https://docs.google.com/document/d/1xeBxK9evfG5CbXoUJXFCR2KJGev8Hwt7h4HvjLb4WvU/export?format=txt','linkkenhchaySUB2.txt')                       ;bản 1.1.60
					If $vpsso=8 Then _requetGooGleDOC('https://docs.google.com/document/d/18ZsgvrdzrHgE3Oq3qOG-b2aL-iryKiRttZHBjx6ufzQ/export?format=txt','linkkenhchaySUB2.txt')                       ;bản 1.1.60
					If $vpsso=9 Then _requetGooGleDOC('https://docs.google.com/document/d/1DvKg_sh07GuIfR9bb2eiIlaRCvSfy1_Fn1BqZEpjcVc/export?format=txt','linkkenhchaySUB2.txt')                       ;bản 1.1.60
					If $vpsso=10 Then _requetGooGleDOC('https://docs.google.com/document/d/1hmq3luKvvH1XrdXm6yjDH3ZgdiTM3vSyTXFrfOScn0Y/export?format=txt','linkkenhchaySUB2.txt')                       ;bản 1.1.60
					If $vpsso=11 Then _requetGooGleDOC('https://docs.google.com/document/d/1maWaSxFvinrWR8OeCjMj0LJXpYcrJ6zRwLcqo6TpSFo/export?format=txt','linkkenhchaySUB2.txt')                       ;bản 1.1.60
					If $vpsso=12 Then _requetGooGleDOC('https://docs.google.com/document/d/1IOc72x-SKn44ScD_Zl1OmopcJCVbVWfkWMM9GS9n8_w/export?format=txt','linkkenhchaySUB2.txt')                       ;bản 1.1.60
					If $vpsso=13 Then _requetGooGleDOC('https://docs.google.com/document/d/1XkICV-XHosJJKaI0LMnaGv5ADSaVlKFEIMHZA-ki_y8/export?format=txt','linkkenhchaySUB2.txt')                       ;bản 1.1.60
					If $vpsso=14 Then _requetGooGleDOC('https://docs.google.com/document/d/1NouelZRdWT2OTD5Ci11rEXfMaqJaLHbvECbjLJywFYQ/export?format=txt','linkkenhchaySUB2.txt')                       ;bản 1.1.60
					If $vpsso=15 Then _requetGooGleDOC('https://docs.google.com/document/d/1nUwnzj9kIbFCkf1fvZJd4AxfutU089MPoLfTYXRujlY/export?format=txt','linkkenhchaySUB2.txt')                       ;bản 1.1.60
					If $vpsso=16 Then _requetGooGleDOC('https://docs.google.com/document/d/1g73norj6H-BuhXshRT-CEkYKFdT9o4Uknk_SdI07J-E/export?format=txt','linkkenhchaySUB2.txt')                       ;bản 1.1.60
					If $vpsso=17 Then _requetGooGleDOC('https://docs.google.com/document/d/1L-yTHvqBO531COCIxolgdr6YF3LeLDeZ0Ti9TQjpG2M/export?format=txt','linkkenhchaySUB2.txt')                       ;bản 1.1.60
					If $vpsso=18 Then _requetGooGleDOC('https://docs.google.com/document/d/1rH9MjZm5881K6cD8uNbfi-ox9mgyeLyQMCgwTOHrw1M/export?format=txt','linkkenhchaySUB2.txt')                       ;bản 1.1.60
					If $vpsso=19 Then _requetGooGleDOC('https://docs.google.com/document/d/1up0UWnvQzHSgH8z6ioimAgkBKSSyOZsm5kCeJM5XTqY/export?format=txt','linkkenhchaySUB2.txt')                       ;bản 1.1.60
					If $vpsso=20 Then _requetGooGleDOC('https://docs.google.com/document/d/1GooBX9jn6YXWEcT3ogWCRNVQvBIU9yjnxXujEZj5ahs/export?format=txt','linkkenhchaySUB2.txt')                       ;bản 1.1.60
                EndIf
                #cs
					For $i22=1 to 240
						If Mod($vpsso,5)=1 Then
						    If @MIN=1 or @MIN=11 or @MIN=21  or @MIN=31 or @MIN=41 or @MIN=51  Then
							    $i22=240
							EndIf
						EndIf
						If Mod($vpsso,5)=2 Then
						    If @MIN=3 or @MIN=13 or @MIN=23 or @MIN=33 or @MIN=43 or @MIN=53  Then
							    $i22=240
							EndIf
						EndIf
						If Mod($vpsso,5)=3 Then
						    If @MIN=5 or @MIN=15 or @MIN=25 or @MIN=35 or @MIN=45 or @MIN=55 Then
							    $i22=240
							EndIf
						EndIf
						If Mod($vpsso,5)=4 Then
						    If @MIN=7 or @MIN=17 or @MIN=27 or @MIN=37 or @MIN=47 or @MIN=57 Then
							    $i22=240
							EndIf
						EndIf
						If Mod($vpsso,5)=0 Then
						    If @MIN=9 or @MIN=19 or @MIN=29 or @MIN=39 or @MIN=49 or @MIN=59 Then
							    $i22=240
							EndIf
						EndIf
						Sleep(5000)
				    Next
				#ce

					Sleep(100)
					WinClose('Task Manager')
				    Sleep(100)
				    ProcessClose('Taskmgr.exe')
				    Sleep(100)

                #cs
					For $i22=1 to 240
						If Mod($vpsso,5)=1 Then
						    If @MIN=1 or @MIN=6 or @MIN=11 or @MIN=16 or @MIN=21 or @MIN=26 or @MIN=31 or @MIN=36 or @MIN=41 or @MIN=46 or @MIN=51 or @MIN=56   Then
							    $i22=240
							EndIf
						EndIf
						If Mod($vpsso,5)=2 Then
						    If @MIN=2 or @MIN=7 or @MIN=12 or @MIN=17 or @MIN=22 or @MIN=27 or @MIN=32 or @MIN=37 or @MIN=42 or @MIN=47 or @MIN=52 or @MIN=57  Then
							    $i22=240
							EndIf
						EndIf
						If Mod($vpsso,5)=3 Then
						    If @MIN=3 or @MIN=8 or @MIN=13 or @MIN=18 or @MIN=23 or @MIN=28 or @MIN=33 or @MIN=38 or @MIN=43 or @MIN=48 or @MIN=53 or @MIN=58 Then
							    $i22=240
							EndIf
						EndIf
						If Mod($vpsso,5)=4 Then
						    If @MIN=4 or @MIN=9 or @MIN=14 or @MIN=19 or @MIN=24 or @MIN=29 or @MIN=34 or @MIN=39 or @MIN=44 or @MIN=49 or @MIN=54 or @MIN=59 Then
							    $i22=240
							EndIf
						EndIf
						If Mod($vpsso,5)=0 Then
						    If @MIN=5 or @MIN=10 or @MIN=15 or @MIN=20 or @MIN=25 or @MIN=30 or @MIN=35 or @MIN=40 or @MIN=45 or @MIN=50 or @MIN=55 or @MIN=0 Then
							    $i22=240
							EndIf
						EndIf

						Sleep(5000)
				    Next
				#ce

                    ;_FakeIPOptionV6($i5,$vpsso)
					MouseClick('left',1366,10,1,20)
					Sleep(1000)
					MouseClick('left',1366,10,1,20)
					Sleep(1000)
                    Sleep(Random(1000,10000,1))
					WinClose('Server Manager')

					$linkblu="C:\Program Files\Google\Chrome\Application\chrome.exe"

					Sleep(1000)
					Run( $linkblu,'')
					Sleep(5000)

                    Sleep(100)
					$var = WinList ("[CLASS:Chrome_WidgetWin_1]")
                    Sleep(100)
					If $var[0][0]=0 Then $var = WinList ("[CLASS:MozillaWindowClass]")
					Sleep(100)

					WinClose('Install Google Translate extension to translate this page?')
					WinClose('Restore pages?')
					WinClose('Save password?')
					WinClose('Khôi phục trang')
					WinClose('Bạn có muốn khôi phục trang không?')
					WinClose('Default Client')
					WinClose('Update successful')
					WinClose('Translated page from Vietnamses?')
					Sleep(100)
					WinClose('Restore pages?')
					WinClose('Restore pages')
					WinClose('Default Client')
					WinClose('UC Browser')
					WinClose('Check Update')
					WinClose('Update successful')
					WinClose('Bright VPN - Secure Private & Free VPN Proxy is disabled')
				    WinClose('Remove "Bright VPN - Secure Private & Free VPN Proxy"?')
					Sleep(100)
					WinClose('Check Update')

							Sleep(3000)
							$pixcel=PixelSearch(430, 623,1013, 764,0x0B57D0)
					        If IsArray($pixcel) Then
							     MouseClick('left',$pixcel[0]+5, $pixcel[1]+5,1,20)
							     Sleep(1000)
							EndIf
							$pixcel=PixelSearch(430, 623,1013, 764,0x0B57D0)
					        If IsArray($pixcel) Then
							     MouseClick('left',$pixcel[0]+5, $pixcel[1]+5,1,20)
							     Sleep(1000)
							EndIf
							$pixcel=PixelSearch(430, 623,1013, 764,0x0B57D0)
					        If IsArray($pixcel) Then
							     MouseClick('left',$pixcel[0]+5, $pixcel[1]+5,1,20)
							     Sleep(1000)
							EndIf

							ControlClick('','Chrome Legacy Window','[CLASS:Chrome_RenderWidgetHostHWND; INSTANCE:1]','left',1,291, 635)
		                    Sleep(100)
		                    ControlClick('','Chrome Legacy Window','[CLASS:Chrome_RenderWidgetHostHWND; INSTANCE:1]','left',1,462, 637)
							Sleep(100)
							ControlClick('','','','left',1,1328,145)
							Sleep(100)
							ControlClick('','','','left',1,1280,163)
							Sleep(100)

					Sleep(100)
					$var = WinList ("[CLASS:Chrome_WidgetWin_1]")
                    Sleep(100)
					If $var[0][0]=0 Then $var = WinList ("[CLASS:MozillaWindowClass]")
					Sleep(100)

					For $i10 = 1 to $var[0][0]
					  If BitAnd (WinGetState ($var[$i10][1]), 2) And $var[$i10][0] <> "" Then

						WinSetState($var[$i10][1],'',@SW_RESTORE)
						Sleep(1000)

						WinMove($var[$i10][1],'',0,0,1366,850)
						Sleep(3000)

						ControlClick('','Chrome Legacy Window','[CLASS:Chrome_RenderWidgetHostHWND; INSTANCE:1]','left',1,291, 635)
						Sleep(200)
						ControlClick('','Chrome Legacy Window','[CLASS:Chrome_RenderWidgetHostHWND; INSTANCE:1]','left',1,462, 637)
						Sleep(200)
						ControlClick('','','','left',1,1300,720)
						Sleep(100)
						ControlClick('','','','left',1,1280,163)
						Sleep(100)
						ControlClick('','','','left',1,1322,114)
						Sleep(100)
						ControlClick('','','','left',1,1317,112)
						Sleep(100)
						ControlClick('','','','left',1,1327, 102)
						Sleep(100)



                     EndIf
					Next

					WinClose('Install Google Translate extension to translate this page?')
					WinClose('Restore pages?')
					WinClose('Khôi phục trang')
					WinClose('Bạn có muốn khôi phục trang không?')
					WinClose('Default Client')
					ProcessClose('WerFault.exe')
					WinClose('Translated page from Vietnamses?')
					WinClose('Windows Security')
				    Sleep(100)
				    WinClose('Authentication Required - Mozilla Firefox')
				    Sleep(100)
				    WinClose('Authentication Required - FlashPeak SlimBrowser')
				    Sleep(100)
				    WinClose('Yêu cầu xác minh - Mozilla Firefox')



				Return $dangnhap
	    EndFunc

	    Func _closeTrinhDuyet($i)

			    Sleep(100)
				Send('^w')
				Sleep(100)
				Send('^w')
				WinClose('opera.exe - System Error')
				If $i=5 Then
					For $i20=1 to 3
						Send('^w')
						Sleep(100)
					Next
				EndIf
				If $i=4 Then
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
						WinClose($var[$i10][1])

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
						WinClose($var[$i10][1])
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
						Sleep(100)
						WinClose($var[$i10][1])
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
			If $i=10 Then
			    WinClose('WinAuth')
				Sleep(100)
				ProcessClose('WinAuth.exe')
				Sleep(100)
			EndIf

			If $i=2 Then

				ProcessClose('OperaSetup.exe')
				Sleep(100)
				ProcessClose('conhost.exe')
				WinClose('Settings')
				Sleep(100)
				WinClose('WinAuth')
				Sleep(100)
				WinClose('Protection')
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

				ProcessClose('opera.exe - System Error')
				Sleep(100)
				ProcessClose('opera.exe - System Error')
				Sleep(100)
				ProcessClose('opera.exe - System Error')
				Sleep(100)
				ProcessClose('opera.exe - System Error')
				Sleep(100)
				 WinClose('opera.exe - System Error')
				Sleep(100)
				WinClose('Đang chạy..., Trình cài đặt Cốc Cốc')
                Sleep(300)
                ControlClick('Cài đặt bị dừng.','Hủy Cài đặt','[CLASS:Button; INSTANCE:2]')
				Sleep(100)
				ProcessClose('gAvastBrowser.exe')
                ProcessClose('gbrowser.exe')
				ProcessClose('gmsedge.exe')
				DirRemove('C:\Users\'&@UserName&'\AppData\Roaming\Microsoft\Crypto',1)
				Sleep(1000)
				ControlClick('','','','left',1,1263,887)
				Sleep(200)
				MouseMove(1263,830)
				Sleep(100)
				ProcessClose('BraveSoftware Update.exe')
				Sleep(100)
				ProcessClose('BraveSoftware Update (32 bit).exe')
				Sleep(100)
				ProcessClose('CocCoc Update.exe')
				Sleep(100)
				ProcessClose('CocCoc Update (32 bit).exe')
				Sleep(100)
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
                            WinClose($var[$i10][1])
						    Sleep(100)
                        EndIf
					Next
				EndIf
				ProcessClose('firefox.exe - Bad Image')
				Sleep(100)
				ProcessClose('WinAuth.exe')
				Sleep(100)
			    ProcessClose('Programs.exe')
				Sleep(100)
				ProcessClose('explorer.exe')
				Sleep(100)
				ProcessClose('msedge.exe')
				Sleep(100)
				ProcessClose('chrome.exe')
				Sleep(100)
				ProcessClose('opera.exe - system Error.exe')
				Sleep(100)
				ProcessClose('opera.exe - System Error')
				Sleep(100)
				ProcessClose('opera.exe - System Error')
				Sleep(100)
				WinClose('opera.exe')
				Sleep(100)
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
				WinClose('Settings')
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
				ControlClick('','','',"left",1,1000, 500)   ; tat update
				Sleep(100)
				WinClose('Local Area Network (LAN) Settings')
				Sleep(100)
				WinClose('Internet Properties')
				Sleep(100)
				WinClose('Settings')
				;MouseClick('left',300,455,1,20)   ; thoat loi win
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
				ProcessClose('vivaldi.exe')
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
				;MouseClick("left",1000, 500,1,20)   ; tat update
				Sleep(100)
				WinClose('Local Area Network (LAN) Settings')
				Sleep(100)
				WinClose('Internet Properties')
				Sleep(100)
				WinClose('Settings')
				;MouseClick('left',300,455,1,20)   ; thoat loi win
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
				_ReduceMemory()
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
				ProcessClose('CocCocCrashHandler64.exe')
				Sleep(100)
				ProcessClose('CocCocCrashHandler.exe')
				Sleep(100)

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
	                         ;$arry=StringSplit($data,' ')
                            $data= StringRegExpReplace($data, " +", Chr(9))
							FileWriteLine(@ScriptDir&'\'&$tenTXT,$data)
						Next

					    ;FileWriteLine(@ScriptDir&'/'&$tenTXT,$kq)
						$checkrequet=1

					EndIf
                EndIf

				FileDelete(@ScriptDir&"\data.txt")

			Return $checkrequet
		EndFunc

        Func _checkDungChuongTrinh()
            $check= FileReadLine(@ScriptDir&"/checkdungchuongtrinh.txt",1)
			If $check=1 Then
				Send('{f2}')
				Sleep(1000)
                Send('{esc}')
				Sleep(1000)
				Send('{esc}')
				Sleep(1000)
				Send('{f2}')

			EndIf
		EndFunc

        Func _laydatasheet($link,$tenTXT)
			$i=1
			For $i21=1 to 2
                FileDelete('C:\Users\'&@UserName&'\Downloads\Sub bên a chung - Trang tính1.tsv')
		        Sleep(100)
                FileDelete('C:\Users\'&@UserName&'\Downloads\Sub bên a chung - Trang tính1.tsv')
	         	Sleep(1000)
                _resetMang($i)

                ShellExecute($link)
                Sleep(10000)

		        For $i20=1 to 20
			        $pixcel=PixelSearch(110, 144,593, 363,0xF1C232)
			        If IsArray($pixcel) Then
				        $i20=50
		            EndIf
			        Sleep(1000)
		        Next
		        Sleep(2000)
	        	MouseClick('left',670, 422,1,20)
	        	Sleep(1000)
	        	Send('!f')
	        	Sleep(2000)
	         	Send('d')
	        	Sleep(2000)
	        	Send('t')
	        	Sleep(5000)
	        	_closeTrinhDuyet($i)
	         	$check= FileExists('C:\Users\'&@UserName&'\Downloads\Sub bên a chung - Trang tính1.tsv')
	            If $check=1 Then $i21=2

			Next

            FileDelete(@ScriptDir&'\'&$tenTXT)
			Sleep(1000)
            $oldFilePath='C:\Users\may13\Downloads\Sub bên a chung - Trang tính1.tsv'
            $newFilePath='C:\Users\may13\Desktop\tong hop tool ho tro firefox\linkchaysubtho.txt'
            If FileExists($oldFilePath) Then
				FileMove($oldFilePath, $newFilePath, 1)
            EndIf
			FileDelete('C:\Users\'&@UserName&'\Downloads\Sub bên a chung - Trang tính1.tsv')

			$sodong=_FileCountLines(@ScriptDir&'\linkchaysubtho.txt')
            For $i2=2 to $sodong
                $data=FileReadLine(@ScriptDir&'\linkchaysubtho.txt',$i2)
				$data2=StringSplit($data,'	')
				If IsArray($data2) Then
					If $data2[0]>3 Then FileWriteLine(@ScriptDir&'\'&$tenTXT,$data2[2]&'	'&$data2[3]&'	'&$data2[4])
				EndIf
			Next

			FileDelete(@ScriptDir&'\linkchaysubtho.txt')


		EndFunc

        Func _loginGmail($i)
	                       ToolTip('dang nhap Gmail so:'&$i&'	phien ban:'&$phienban,0,0)
						   $e=FileReadLine(@ScriptDir&'\Gmail.txt',$i)    ;l?y ID , pass, mail kh𩠰h?c
						   If StringLen($e)<10 Then
							   MsgBox(0,0,'khong co gmail',1)
							   _GetDOSOutput('shutdown -r -t 0')

						   EndIf
						   $cacgiatri=StringSplit($e,'	')
	                    For $i11=1 to $cacgiatri[0]
	                       If IsString($cacgiatri[$i11]) Then FileWriteLine(@ScriptDir&'\Gmailtest.txt',$cacgiatri[$i11])
						   ;MsgBox(0,0,'ok')
						Next
                           $f=FileReadLine(@ScriptDir&'\Gmailtest.txt',1)
                           $g=FileReadLine(@ScriptDir&'\Gmailtest.txt',2)
						   $h=FileReadLine(@ScriptDir&'\Gmailtest.txt',3)
						   $Key2fa=FileReadLine(@ScriptDir&'\Gmailtest.txt',4)
						   $SDT=FileReadLine(@ScriptDir&'\Gmailtest.txt',5)
						   FileDelete(@ScriptDir&'\Gmailtest.txt')


				WinClose('Restore pages?')
				WinClose('Restore pages')

                ;MouseClick('left',1280, 129,1,20)
			    $check=0

				If $i=8 Then

                    MouseClick('left',133, 62,1,20)
                    Sleep(2000)
					MouseClick('left',206, 188,1,20)
                    Sleep(2000)
					MouseClick('left',793, 139,1,20)
                    Sleep(2000)
					MouseClick('left',633, 566,1,20)
                    Sleep(2000)
					MouseClick('left',527, 243,1,20)
                    Sleep(2000)
					MouseClick('left',633, 566,1,20)
                    Sleep(2000)
					MouseClick('left',533, 264,1,20)
                    Sleep(2000)
					MouseClick('left',633, 566,1,20)
                    Sleep(2000)
					MouseClick('left',532, 285,1,20)
                    Sleep(2000)
					MouseClick('left',633, 566,1,20)
                    Sleep(2000)
					MouseClick('left',857, 566,1,20)
                    Sleep(2000)

				EndIf

                MouseClick('left',500, 60,1,20)
                Sleep(2000)
				Send('^a')
				Sleep(2000)
				ClipPut('https://www.youtube.com/account')
			    Sleep(200)
			    Send('^v')
				Sleep(1000)
				Send('{enter}')
				Sleep(5000)
				Send('^0')
				Sleep(2000)
				Sleep(5000)
				For $i20=1 to 10
				    $pixcel=PixelSearch(58,96,245, 170,0xFF0033)
					If IsArray($pixcel) Then
						$i20=10
					EndIf
					Sleep(1000)
				Next
				Sleep(1000)
				$pixcel=PixelSearch(58,96,245, 170,0xFF0033)   ; xoa loi edge
				$pixcel2=PixelSearch(58,96,245, 170,0xFF0000)   ; xoa loi edge
				$pixcel3=PixelSearch(58,96,245, 170,0x3E88F4)   ; xoa loi edge
				Sleep(1000)
			If not IsArray($pixcel) and not IsArray($pixcel2) and  not IsArray($pixcel3)  Then  ; kiem tra da dang nhap chua
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


				WinMove('','',0,0,1366,768)
				Sleep(2000)

				MouseClick('left',500, 60,1,20)
                Sleep(2000)
				Send('^a')
				Sleep(2000)
				ClipPut('https://www.youtube.com/account')
			    Sleep(200)
			    Send('^v')
				Sleep(1000)
				Send('{enter}')
				Sleep(5000)
				Send('^0')
				Sleep(2000)
                For $i20=1 to 10
				    $pixcel=PixelSearch(322, 259,1000, 527,0x0B57D0)
					If IsArray($pixcel) Then
						$i20=20
				        Sleep(1000)
					EndIf
					Sleep(1000)
				Next
				Sleep(2000)
				MouseClick('left',970,470,1,20)
				Sleep(7000)
				MouseClick('left',970,430,1,20)
				Sleep(7000)

				MouseClick('left',650,280,1,20)
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
				MouseClick('left',400, 300,1,20)
				Sleep(3000)
				Send('{tab}')
				Sleep(2000)
				Send('{tab}')
				Sleep(3000)
				Send($g,1)
				Sleep(2000)
				Send('{enter}')
                Sleep(10000)
                For $i20=1 to 10
				    $pixcel=PixelSearch(12, 289,1000, 713,0x0B57D0)
					If IsArray($pixcel) Then $i20=20
					Sleep(1000)
				Next


			  For $i21=1 to 2
               If StringLen($Key2fa)>30	Then
				Sleep(2000)
				$Key2fa=StringReplace($Key2fa,'|',' ')
				Sleep(1000)
                Run('C:\Users\'&@UserName&'\Desktop\WinAuth')
				Sleep(5000)
				WinActivate('WinAuth')
				Sleep(1000)
				WinMove('','',0,0,415,250)
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
				        Sleep(5000)
						Send('{enter}')
						Sleep(3000)
						Send('{enter}')
						Sleep(3000)

				For $i20=1 to 10
						$checkProtection=WinExists('Protection')
						If $checkProtection=1 Then
							$i20=10

							MouseClick('left',776,506,1,20)
							Sleep(3000)
							MouseClick('left',810,655,1,20)
							Sleep(1000)
							WinMove('Protection','',0,0)
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
					Sleep(1000)
					MouseClick('right',370, 158,1,20)

				Else

					MouseClick('left',364,93,1,20)
					Sleep(1000)
					MouseClick('right',364,93,1,20)
				EndIf
				Sleep(1000)
				Send('{tab}')
				Sleep(1000)
				Send('{tab}')
				Sleep(1000)
				Send('{tab}')
				Sleep(1000)
				Send('{enter}')
				Sleep(1000)
				MouseClick('left',400, 300,1,20)
				Sleep(1000)
				Send('{tab}')
				Sleep(1000)
				Send('{tab}')
				Sleep(1000)
				Send('^v')
				Sleep(500)
				$checkCode=ClipGet()
				If Number($checkCode)>10000 Then $i21=2
				Sleep(500)
				Send('{enter}')
				Sleep(10000)
				WinClose('WinAuth')
				Sleep(1000)
				ProcessClose('WinAuth.exe')
				Sleep(1000)
				;MsgBox(0,0,'ok')
			   EndIf
			  Next


				If $i=6 Then MouseClick('left',380, 225,1,20)
				Sleep(2000)
				$x3=0
				$y3=0
				$emailkhoiphuc=_ImageSearchArea(@ScriptDir&'\emailkhoiphuc2.bmp',1,409, 506,775, 708,$x3,$y3,50)
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

				$emailkhoiphuc=_ImageSearchArea(@ScriptDir&'\emailhhoiphuc.bmp',1,409, 506,775, 708,$x3,$y3,50)
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

				$emailkhoiphuc=_ImageSearchArea(@ScriptDir&'\emailkhoiphuc2.bmp',1,409, 506,775, 708,$x3,$y3,50)
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


				$emailkhoiphuc=_ImageSearchArea(@ScriptDir&'\emailkhoiphuc.bmp',1,409, 506,775, 708,$x3,$y3,50)
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


				$emailkhoiphuc=_ImageSearch(@ScriptDir&'\emailkhoiphuc2.bmp',1,$x3,$y3,50)
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

				$emailkhoiphuc=_ImageSearch(@ScriptDir&'\emailhoiphuc.bmp',1,$x3,$y3,50)
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

			    If $x3=0 Then
                  If StringLen($Key2fa)<30	Then
					MouseClick('left',523, 262,1,20)    ; click Email khoi phuc
					Sleep(1000)
					Send('{tab}')
					Sleep(1000)
					Send('{tab}')
					Sleep(1000)
					Send('{tab}')
					Sleep(1000)
					Send('{tab}')
					Sleep(1000)
					Send('{tab}')
					Sleep(1000)
					Send('{enter}')
					Sleep(5000)

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
				EndIf


			   If $i=4 Then MouseClick('left',1025, 230,1,20);update pass

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
				Sleep(1000)
				ClipPut('https://myaccount.google.com/')
				Sleep(1000)
				Send('^v')
				Sleep(2000)
				Send('{enter}')
				Sleep(10000)

				For $i20=1 to 10
					        $pixcel=PixelSearch(70, 140,240, 250,0xC2E7FF)
							;$pixcel=PixelSearch(70, 140,310, 275,0xC2E7FF)
					        Sleep(500)
					        If IsArray($pixcel) Then
						       $check=1
						       $i20=17
						       $i2=2
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
					MouseClick('left',600,350,1,20)
				    Sleep(5000)
				    For $i20=1 to 10
					        $pixcel=PixelSearch(211, 189,490, 354,0x34A853)
					        Sleep(500)
					        If IsArray($pixcel) Then
						       $check=1
						       $i20=17
						       $i2=2
					        EndIf
						      Sleep(1000)
					Next
				EndIf
			Else
                $check=1

			EndIf
				     MouseClick('left',600, 320,1,20)  ; cho ngẫu nhiên 1 kênh ytb
				     Sleep(5000)

					  $checkSDT=0
					  For $i23=1 to 2
				            MouseClick('left',600, 60,1,20)
				            Sleep(1000)
							Send('^a')
				            Sleep(1000)
				            ClipPut('https://myaccount.google.com/signinoptions/rescuephone?')
							Sleep(1000)
				            Send('^v')
				            Sleep(2000)
				            Send('{enter}')
				            Sleep(7000)
				            For $i20=1 to 10
					            $pixcel=PixelSearch(67, 98,241, 207,0xFF0033)
					            Sleep(500)
					            If IsArray($pixcel) Then
								    $i20=10
					            EndIf
						        Sleep(1000)
					        Next
						For $i24=1 to 10
                          If $checkSDT=0 Then
							MouseClick('left',480, 22,1,20)
                            Sleep(2000)
                            MouseClick('left',600, 60,1,20)
				            Sleep(1000)
							Send('^a')
							Sleep(1000)
							Send('^c')
							Sleep(200)
							$link=ClipGet()
                            Sleep(1000)
							MouseClick('left',1312, 565,1,20)
				            Sleep(1000)
                            If StringInStr($link, "pwd") Then
                                MouseClick('left',470, 287,1,20)
				                Sleep(2000)
					            Send('{tab}')
					            Sleep(2000)
					            Send('{tab}')
					            Sleep(2000)
					            Send($g)
					            Sleep(1000)
					            Send('{enter}')
					            Sleep(10000)
                            EndIf
							If StringInStr($link, "totp") Then
                                _LayMaAuthen($Key2fa)
                            EndIf
							If StringInStr($link, "rescuephone") Then
                                _ThemSDT($SDT)

                            EndIf
							Sleep(6000)
							$pixcel=PixelSearch(297, 247,538, 630,0xDB231E)
							Sleep(500)
							If IsArray($pixcel) Then
								$checkSDT=1
								$i23=2
								$i24=10
                            EndIf


						  EndIf
						Next

					  Next

					    If $checkSDT=1 Then
							$SDT=$SDT&'	add SDT Thành Công'
                            FileWriteLine(@ScriptDir&'\KetQuaDangNhap.txt',$e&'	add SDT Thành Công'&'	'&$i)

						Else
							$SDT=$SDT&'	add SDT Thất Bại'
							FileWriteLine(@ScriptDir&'\KetQuaDangNhap.txt',$e&'	add SDT Thất Bại'&'	'&$i)

						EndIf


			Return $check    ;;return 1 la ok. 0 la that bai   , 2 la bi verry
        EndFunc

        Func _resetMang($i)
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

					If FileExists('C:\Users\'&@UserName&'\Desktop\csFireFox - 10 sea\Internet Options - Shortcut.lnk')=1 Then
							ShellExecute('C:\Users\'&@UserName&'\Desktop\csFireFox - 10 sea\Internet Options - Shortcut.lnk')
						Else
                            ShellExecute('C:\Users\'&@UserName&'\Desktop\csFireFox - 10 sea\Internet Options - Shortcut.url')
						EndIf
					Sleep(4000)
					WinMove('Internet Properties','',0,0)
					Sleep(3000)
					ControlClick('Internet Properties','',"[CLASS:SysTabControl32; INSTANCE:1]",'left',1,231, 12)
					Sleep(3000)
					ControlClick('Internet Properties','',"[CLASS:Button; INSTANCE:10]")
					Sleep(3000)
					WinMove('Local Area Network (LAN) Settings','',0,0)
					Sleep(3000)
					$pixcel=ControlCommand('Local Area Network (LAN) Settings','Use a pro&xy server for your LAN (These settings will not apply to dial-up or VPN connections).','Button6',"IsChecked", "")
					If $pixcel<>0 Then
						ControlClick('Local Area Network (LAN) Settings','',"[CLASS:Button; INSTANCE:6]")
						Sleep(2000)
					EndIf
					ControlClick('Local Area Network (LAN) Settings','',"[CLASS:Button; INSTANCE:12]")
					Sleep(3000)
					WinClose('Local Area Network (LAN) Settings')
					Sleep(1000)
					WinClose('Internet Properties')
					WinClose('Settings')
					Sleep(1000)

					WinClose('Server Manager')
					WinClose('Proxy Client Tinsoft')

					Sleep(2000)
					Run('C:\Users\'&@UserName&'\Desktop\fakeip\Proxy Client Tinsoft.exe')
					Sleep(2000)
					$handLDplay = WinActivate("Proxy Client Tinsoft")
					Sleep(1500)
					WinMove('Proxy Client Tinsoft','',1137,380,220,340)
					Sleep(2000)
					ControlClick('Proxy Client Tinsoft','','[NAME:button2]')   ;dissconnect
					Sleep(2000)
					ProcessClose('Proxy Client Tinsoft.exe')
					Sleep(2000)
					WinClose('Server Manager')
					WinClose('Proxy Client Tinsoft')


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

        Func _CheckUpdateCode($linknhom)

			_requetGooGleDOC($linknhom,'checkUpdateCode.txt')
			$checkupdatecode=FileReadLine(@ScriptDir&'\checkUpdateCode.txt',1)
			If $checkupdatecode=1 Then
				ToolTip('cho update code'&'	phien ban:'&$phienban,0,0)
				Sleep(1000)
				ShellExecute("C:\Users\"&@UserName&"\Desktop\csFireFox - 10 sea\tool update code.au3")
				Sleep(2000)
				Exit

			EndIf
        EndFunc

		Func _CheckUpdateToolupdate($linknhom)

			_requetGooGleDOC($linknhom,'CheckUpdateToolupdate.txt')
			Sleep(2000)
			$checkupdatecode=FileReadLine(@ScriptDir&'\CheckUpdateToolupdate.txt',1)
			If $checkupdatecode=1 Then
				ToolTip('update tool update'&'	phien ban:'&$phienban,0,0)
                For $i20=1 to 3
				    _closeTrinhDuyet(1)
				    _resetMang(1)
				    Sleep(1000)
					FileDelete('C:\Users\'&@UserName&'\Downloads\tool update code.au3')
					Sleep(1000)
					FileDelete('C:\Users\'&@UserName&'\Downloads\tool update code (1).au3')
					Sleep(1000)
					FileDelete('C:\Users\'&@UserName&'\Downloads\sub.bmp')
					Sleep(1000)
					FileDelete('C:\Users\'&@UserName&'\Downloads\sub (1).bmp')
					Sleep(1000)
					FileDelete('C:\Users\'&@UserName&'\Downloads\sub2.bmp')
					Sleep(1000)
					FileDelete('C:\Users\'&@UserName&'\Downloads\sub2 (1).bmp')
					Sleep(2000)
					$linkdownload=FileReadLine(@ScriptDir&'\CheckUpdateToolupdate.txt',2)
					Sleep(1000)
                    _GetDOSOutput($linkdownload)
					Sleep(10000)
					MouseClick('left',600,60,1,20)
					Sleep(2000)
					Send('{enter}')
					Sleep(20000)
                    $var = WinList ("[CLASS:Chrome_WidgetWin_1]")
                    Sleep(1000)
					For $i10 = 1 to $var[0][0]
					    If BitAnd (WinGetState ($var[$i10][1]), 2) And $var[$i10][0] <> "" Then
                           ; WinMove($var[$i10][1],'',0,0,1366,768)
						  ;  Sleep(2000)
							MouseClick("left",271, 734,1,20)
							Sleep(1000)
							MouseClick("left",300, 734,1,20)
							Sleep(1000)
							MouseClick("left",320, 734,1,20)
							Sleep(1000)
							MouseClick("left",350, 734,1,20)
							Sleep(1000)
							MouseClick("left",400, 734,1,20)
							Sleep(5000)

                        EndIf
                    Next

					_closeTrinhDuyet(1)

					FileCopy('C:\Users\'&@UserName&'\Downloads\tool update code.au3','C:\Users\'&@UserName&'\Desktop\csFireFox - 10 sea\tool update code.au3',1)
					FileCopy('C:\Users\'&@UserName&'\Downloads\sub.bmp','C:\Users\'&@UserName&'\Desktop\csFireFox - 10 sea\sub.bmp',1)
					FileCopy('C:\Users\'&@UserName&'\Downloads\sub2.bmp','C:\Users\'&@UserName&'\Desktop\csFireFox - 10 sea\sub2.bmp',1)
					Sleep(1000)
					If FileExists('C:\Users\'&@UserName&'\Desktop\csFireFox - 10 sea\tool update code.au3')=1 Then $i20=3
					If FileExists('C:\Users\'&@UserName&'\Desktop\csFireFox - 10 sea\sub.bmp')=1 Then $i20=3
					If FileExists('C:\Users\'&@UserName&'\Desktop\csFireFox - 10 sea\sub2.bmp')=1 Then $i20=3
					Sleep(1000)
				Next


			EndIf
        EndFunc

		Func _requetanotepad($link,$tenTXT)
			    FileDelete(@ScriptDir&'\data.txt')
				FileDelete(@ScriptDir&'\data2.txt')
				$checkrequet=0
					For $i12=1 To 10
                         $kq=_HttpRequest(2,$link,'','','','','')        ;lay link kenh va kiem tra view gio
				         Sleep(1000)
						 If StringLen($kq)<1 Then
							     $kq=_HttpRequest(2,$link,'','','','','')        ;lay link kenh va kiem tra view gio
								 Sleep(10000)
						 Else
								 $i12=500
						 EndIf
					Next

					    ;FileWrite(@ScriptDir&'\data.txt',$kq)

			             $data=_StringBetween($kq,'<div class="plaintext ">','</div>')
						; FileWrite(@ScriptDir&'\data2.txt',$data[0])

					If IsArray($data) Then
						;$arrydata=StringSplit($data[0],@CRLF)
						FileDelete(@ScriptDir&'/'&$tenTXT)
						Sleep(1000)
						;For $i20=1 to $arrydata[0]
						    ;MsgBox(0,0,$data[0])
                            $dataTinh=StringReplace($data[0],"&#x9;","	")
							;MsgBox(0,0,$dataTinh)
			                $dataTinh2=StringReplace($dataTinh,'&#xA;',@CRLF)
							$dataTinh3=StringReplace($dataTinh2,'&#xD;','	')
							;MsgBox(0,0,$dataTinh2)
							FileWrite(@ScriptDir&'/'&$tenTXT,$dataTinh3)
							;MsgBox(0,0,$dataTinh3)
						;Next
						$checkrequet=1

					Else
						$checkrequet=0

					EndIf
				Return $checkrequet
		EndFunc

        Func _postdataNew($dataIP,$linkketqua,$linkdulieu)                                            ; gui IP len anotebad.com
			;$dataIP=_bigdataIP($dataIP)
			$ref=$linkketqua
			$url=$linkketqua
			$code=StringRight($linkketqua,8)
			$datalogin='postback=true&accesscode=123456'
			$cookie=''
            $kq=_HttpRequest(1,$url,$datalogin,$cookie,$ref,'Connection: keep-alive|Upgrade-Insecure-Requests: 1')
            $url2='https://anotepad.com/note/quickeditsave'
            $ref2='https://anotepad.com/note/quickedit/'&$code
            $datalogin2='number='&$code&'&notecontent='&$dataIP
            $cookie2=''
            $kq2=_HttpRequest(1,$url2,$datalogin2,$cookie2,$ref2,'Connection: keep-alive|Upgrade-Insecure-Requests: 1')
        EndFunc

        Func _postdataIPGmail($dataIP,$linkketqua,$linkdulieu)                                            ; gui IP len anotebad.com
			FileDelete(@ScriptDir&'\testdata.txt')
			FileDelete(@ScriptDir&'\testdata2.txt')
			Sleep(500)

                _requetanotepad($linkdulieu,'testdata.txt')
			    Sleep(1500)
				$sodong=_FileCountLines(@ScriptDir&'\testdata.txt')
				If $sodong<2 Then
					FileDelete(@ScriptDir&'\testdata.txt')
					Sleep(50000)
					_requetanotepad($linkdulieu,'testdata.txt')
			        Sleep(500)
				EndIf



			;$sodong=_FileCountLines(@ScriptDir&'\testdata.txt')

			;If $sodong>10 Then
			    FileWriteLine(@ScriptDir&'\testdata.txt',$dataIP)
			    Sleep(5000)
			    ;$sodog=_FileCountLines(@ScriptDir&'\testdata.txt')
			   ; For $i20=1 to $sodog
				  ;  $IdPass=FileReadLine(@ScriptDir&'\testdata.txt',$i20)
				  ;  If StringLen($IdPass)>10 Then FileWriteLine(@ScriptDir&'\testdata2.txt',$IdPass)
			  ;  Next
			    Sleep(100)
			    $dataIP2=FileRead(@ScriptDir&'\testdata.txt')
			    ;$dataIP=_bigdataIP($dataIP)
				Sleep(500)
			    $ref=$linkketqua
			    $url=$linkketqua
			    $code=StringRight($linkketqua,8)
			    $datalogin='postback=true&accesscode=123456'
			    $cookie=''
                $kq=_HttpRequest(1,$url,$datalogin,$cookie,$ref,'Connection: keep-alive|Upgrade-Insecure-Requests: 1')
                $url2='https://anotepad.com/note/quickeditsave'
                $ref2='https://anotepad.com/note/quickedit/'&$code
                $datalogin2='number='&$code&'&notecontent='&$dataIP2
                $cookie2=''
                $kq2=_HttpRequest(1,$url2,$datalogin2,$cookie2,$ref2,'Connection: keep-alive|Upgrade-Insecure-Requests: 1')
			;EndIf
        EndFunc

        Func _postdataGoogleDOC($link)
			_khoidongFireFox(10)
			Sleep(5000)
			MouseClick('left',600,60,1,20)
			Sleep(2000)
            Send($link)
			Sleep(1000)
			Send('{enter}')
			Sleep(10000)
		EndFunc

    #cs
        Func _postdataIP($dataIP,$linkketqua,$linkdulieu)                                            ; gui IP len anotebad.com
            _requetanotepad($linkdulieu,'testdata.txt')
			FileWriteLine(@ScriptDir&'\testdata.txt',$dataIP)
			$sodog=_FileCountLines(@ScriptDir&'\testdata.txt')
			For $i20=1 to $sodog
				$IdPass=FileReadLine(@ScriptDir&'\testdata.txt',$i20)
				If StringLen($IdPass)>10 Then FileWriteLine(@ScriptDir&'\testdata2.txt',$IdPass)
			Next
			Sleep(100)
			$dataIP2=FileRead(@ScriptDir&'\testdata2.txt')
			;$dataIP=_bigdataIP($dataIP)
			$ref=$linkketqua
			$url=$linkketqua
			$code=StringRight($linkketqua,8)
			$datalogin='postback=true&accesscode=123456'
			$cookie=''
            $kq=_HttpRequest(1,$url,$datalogin,$cookie,$ref,'Connection: keep-alive|Upgrade-Insecure-Requests: 1')
            $url2='https://anotepad.com/note/quickeditsave'
            $ref2='https://anotepad.com/note/quickedit/'&$code
            $datalogin2='number='&$code&'&notecontent='&$dataIP2
            $cookie2=''
            $kq2=_HttpRequest(1,$url2,$datalogin2,$cookie2,$ref2,'Connection: keep-alive|Upgrade-Insecure-Requests: 1')
        EndFunc
    #ce
        Func _requetanotepad1dong($LinkNhanCode)
				$checkrequet=0

				For $i21=1 to 20
					For $i12=1 To 10
                         $kq=_HttpRequest(2,$LinkNhanCode,'','','','','')        ;lay link kenh va kiem tra view gio
				         Sleep(1000)
						 If StringLen($kq)<2 Then
							     $kq=_HttpRequest(2,$LinkNhanCode,'','','','','')        ;lay link kenh va kiem tra view gio
								 Sleep(10000)
						 Else
								 $i12=500
						 EndIf
					Next
			             $data=_StringBetween($kq,'<div class="plaintext ">','</div>')
					If IsArray($data) Then
						$arrydata=StringSplit($data[0],@CRLF)
						;FileDelete(@ScriptDir&'/'&$tenTXT)
						Sleep(1000)
						For $i20=1 to $arrydata[0]
							;FileWriteLine(@ScriptDir&'/'&$tenTXT,$arrydata[$i20])
							$check=FileReadLine(@ScriptDir&'/data.txt')
							If $arrydata[$i20]=$check Then




                            Else
								$i21=20
								FileDelete(@ScriptDir&'/data.txt')
								Sleep(1000)
								FileWriteLine(@ScriptDir&'/data.txt',$arrydata[$i20])

							EndIf


							Return $arrydata[$i20]
						Next

					EndIf

					Sleep(5000)
				Next

		EndFunc

        Func _kiemtraProxy($Proxy)
				Local $sResult = RunCMD("curl -x "&$Proxy&" http://www.google.com")
				Sleep(1000)
                $sochuketqua=StringLen($sResult)
                Sleep(1000)
				If $sochuketqua<300 Then
					Sleep(30000)
                    Local $sResult = RunCMD("curl -x "&$Proxy&" http://www.google.com")
				    Sleep(1000)
                    $sochuketqua=StringLen($sResult)
                    Sleep(1000)
				    If $sochuketqua<300 Then
						$ketqua=0
						;ToolTip('kiem tra proxy nhà mạng:'&$Tenmang&'  proxy '&$Proxy&' die',0,0)

                    Else
                       ; ToolTip('kiem tra proxy nhà mạng:'&$Tenmang&'  proxy '&$Proxy&' live 1',0,0)
					    $ketqua=1
					EndIf
				Else
					;ToolTip('kiem tra proxy nhà mạng:'&$Tenmang&'  proxy '&$Proxy&' live 2',0,0)
                    $ketqua=1
				EndIf
			Return $ketqua

		EndFunc

		Func RunCMD($sCmd)
                    ; Chạy CMD ở chế độ ẩn và đọc kết quả
				    Local $hCmd = Run("cmd.exe /c " & $sCmd, "", @SW_HIDE, $STDOUT_CHILD)
				    Local $sOutput = ""

                    ; Đọc kết quả dòng lệnh
					While 1
				         Local $sLine = StdoutRead($hCmd)
                         If @error Then ExitLoop
                         $sOutput &= $sLine
                    WEnd

                    Return $sOutput
		EndFunc

        Func _MoTaskmgr()
            $iPID = Run('"cmd"' & @ComSpec & '" /c' & 'taskmgr', "",@SW_HIDE, 2)
            Sleep(5000)
            WinMove('Task Manager','',0,0,700,500)
            Sleep(3000)
			$pixcel=PixelSearch(259, 139,653, 416,0xFFF4C4)  ;0x114AA7
			If not IsArray($pixcel) Then
				Send('{tab}')
				Sleep(2000)
				Send('{SPACE}')
				Sleep(1000)
			EndIf
		EndFunc

        Func _KiemTraemailKhoiPhuc()
		        $x3=0
				$y3=0
				$check=0
				$emailkhoiphuc=_ImageSearchArea(@ScriptDir&'\emailkhoiphuc2.bmp',1,409, 506,775, 708,$x3,$y3,50)
				If $x3>0 Then
					MouseClick('left',$x3,$y3,1,20)   ; click Email khoi phuc
					Sleep(10000)
					$check=1
					For $i20=1 to 20
				      $pixcel=PixelSearch(322, 459,1000, 527,0x0B57D0)
					  If IsArray($pixcel) Then $i20=20
					  Sleep(1000)
					Next

				EndIf

				$emailkhoiphuc=_ImageSearchArea(@ScriptDir&'\emailhhoiphuc.bmp',1,409, 506,775, 708,$x3,$y3,50)
				If $x3>0 Then
					MouseClick('left',$x3,$y3,1,20)    ; click Email khoi phuc
					Sleep(10000)
					$check=1
					For $i20=1 to 20
				      $pixcel=PixelSearch(322, 459,1000, 527,0x0B57D0)
					  If IsArray($pixcel) Then $i20=20
					  Sleep(1000)
					Next
				EndIf

				$emailkhoiphuc=_ImageSearchArea(@ScriptDir&'\emailkhoiphuc2.bmp',1,409, 506,775, 708,$x3,$y3,50)
				If $x3>0 Then
					MouseClick('left',$x3,$y3,1,20)   ; click Email khoi phuc
					Sleep(10000)
					$check=1
					For $i20=1 to 20
				      $pixcel=PixelSearch(322, 459,1000, 527,0x0B57D0)
					  If IsArray($pixcel) Then $i20=20
					  Sleep(1000)
					Next
				EndIf


				$emailkhoiphuc=_ImageSearchArea(@ScriptDir&'\emailkhoiphuc.bmp',1,409, 506,775, 708,$x3,$y3,50)
				If $x3>0 Then
					MouseClick('left',$x3,$y3,1,20)    ; click Email khoi phuc
					Sleep(10000)
					$check=1
					For $i20=1 to 20
				      $pixcel=PixelSearch(322, 459,1000, 527,0x0B57D0)
					  If IsArray($pixcel) Then $i20=20
					  Sleep(1000)
					Next
				EndIf


				$emailkhoiphuc=_ImageSearch(@ScriptDir&'\emailkhoiphuc2.bmp',1,$x3,$y3,50)
				If $x3>0 Then
					MouseClick('left',$x3,$y3,1,20)   ; click Email khoi phuc
					Sleep(10000)
					$check=1
					For $i20=1 to 20
				      $pixcel=PixelSearch(322, 459,1000, 527,0x0B57D0)
					  If IsArray($pixcel) Then $i20=20
					  Sleep(1000)
					Next
				EndIf

				$emailkhoiphuc=_ImageSearch(@ScriptDir&'\emailhoiphuc.bmp',1,$x3,$y3,50)
				If $x3>0 Then
					MouseClick('left',$x3,$y3,1,20)    ; click Email khoi phuc
					Sleep(10000)
					$check=1
					For $i20=1 to 20
				      $pixcel=PixelSearch(322, 459,1000, 527,0x0B57D0)
					  If IsArray($pixcel) Then $i20=20
					  Sleep(1000)
					Next
				EndIf
               Sleep(3000)

            Return $check
		EndFunc


Func _ReduceMemory()
	DllCall("psapi.dll", "int", "EmptyWorkingSet", "long", -1)
EndFunc


Func AutoRun()

	EndFunc

    Func _Exit()
	   Exit
	EndFunc   ;==>_Exit


