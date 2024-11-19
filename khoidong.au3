#RequireAdmin
#include <MsgBoxConstants.au3>
#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <File.au3>
#include <String.au3>
#include <FileConstants.au3>
#include <_HttpRequest.au3>

; Lấy đường dẫn tuyệt đối đến thư mục chứa script hiện tại
Local $sScriptDir = @ScriptDir

Opt("SendKeyDelay",20)
HotKeySet("{esc}", "_Exit")
HotKeySet("{f9}", "AutoRun")

                ;C:\Users\Administrator\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
                ToolTip('khoi dong',0,0)
                $vpsso=100
                Sleep(20000)
				ProcessClose('browser.exe')
				Sleep(100)
				ProcessClose('browser.exe')
				Sleep(100)
				ProcessClose('browser.exe')
				Sleep(20000)
				ProcessClose('browser.exe')
				Sleep(100)
				ProcessClose('notepad.exe')
				Sleep(1000)

                $checkinternet=_kiemtraMangInternet()
				If $checkinternet=0 Then
					FileWrite(@ScriptDir&'\checkinternet.txt',1)
					Sleep(1000)
					$checkinternet=FileReadLine(@ScriptDir&'\checkinternet.txt')
					$checkinternet=Number($checkinternet)
					Sleep(1000)

					Sleep(100)
				    ProcessClose('notepad.exe')
				    Sleep(1000)

					If $checkinternet<1111 Then
                        _GetDOSOutput('shutdown -r -t 0')
					Else
						FileDelete(@ScriptDir&'\checkinternet.txt')
						Sleep(1000)
					    _GetDOSOutput('shutdown -s -t 0')
					EndIf
					Sleep(1000)
					Exit
                    Sleep(10000)
				EndIf


				If FileExists(@ScriptDir&"\vpsso.txt")=1 Then $vpsso=FileReadLine(@ScriptDir&"\vpsso.txt",1)   ; khoi dong vps so
				Sleep(1000)
               ; _requetGooGleDOC('https://docs.google.com/document/d/1wwJcPN1NzADljC0GRWAbRfsnhGf_3BfeUiWRkX6Pfts/export?format=txt','trangthaikhoidong.txt')
                _requetTextDoc('https://textdoc.co/index.php/S3gXRHqyD8rhd9lt','trangthaikhoidong.txt')
                Sleep(1000)
				$check=FileReadLine(@ScriptDir&'\trangthaikhoidong.txt',1)
				;$check=1
				WinClose('Server Manager')
				Sleep(1000)

			#cs
				Run('C:\Users\'&@UserName&'\Desktop\csFireFox - 10 sea\csbphone nhom 0 - 20profile.exe')
				Run('C:\Users\'&@UserName&'\Desktop\csFireFox - 10 sea\csbphone nhom 1 - 20profile.exe')
				Run('C:\Users\'&@UserName&'\Desktop\csFireFox - 10 sea\csbphone nhom 2 - 20profile.exe')
				Run('C:\Users\'&@UserName&'\Desktop\csFireFox - 10 sea\csbphone nhom 3 - 20profile.exe')
				Run('C:\Users\'&@UserName&'\Desktop\csFireFox - 10 sea\csbphone nhom 4 - 20profile.exe')
				Run('C:\Users\'&@UserName&'\Desktop\csFireFox - 10 sea\csbphone nhom 5 - 20profile.exe')
				Run('C:\Users\'&@UserName&'\Desktop\csFireFox - 10 sea\csbphone nhom 6 - 20profile.exe')
				Run('C:\Users\'&@UserName&'\Desktop\csFireFox - 10 sea\csbphone nhom 7 - 20profile.exe')
				Run('C:\Users\'&@UserName&'\Desktop\csFireFox - 10 sea\csbphone nhom 8 - 20profile.exe')
				Run('C:\Users\'&@UserName&'\Desktop\csFireFox - 10 sea\csbphone nhom 9 - 20profile.exe')
				Run('C:\Users\'&@UserName&'\Desktop\csFireFox - 10 sea\csbphone nhom 10 - 20profile.exe')
				Run('C:\Users\'&@UserName&'\Desktop\csFireFox - 10 sea\csbphone nhom 11 - 20profile.exe')
				Run('C:\Users\'&@UserName&'\Desktop\csFireFox - 10 sea\csbphone nhom 12 - 20profile.exe')
				Run('C:\Users\'&@UserName&'\Desktop\csFireFox - 10 sea\csbphone nhom 13 - 20profile.exe')
				Run('C:\Users\'&@UserName&'\Desktop\csFireFox - 10 sea\csbphone nhom 14 - 20profile.exe')
				Run('C:\Users\'&@UserName&'\Desktop\csFireFox - 10 sea\csbphone nhom 15 - 20profile.exe')
            #ce
            #cs
			For $i20=0 to 22
                If FileExists('C:\Users\'&@UserName&'\Desktop\csFireFox - 10 sea\csbphonenhom'&$i20&'.exe') = 1 Then
					ShellExecute('C:\Users\'&@UserName&'\Desktop\csFireFox - 10 sea\csbphonenhom'&$i20&'.exe')
                    Sleep(100)
					ExitLoop
				Else

					If FileExists('C:\Users\'&@UserName&'\Desktop\csFireFox - 10 sea\csbphone nhom '&$i20&' - 20profile.au3') = 1 Then
						ShellExecute('C:\Users\'&@UserName&'\Desktop\csFireFox - 10 sea\csbphone nhom '&$i20&' - 20profile.au3')
						Sleep(100)
						ExitLoop
					EndIf

				EndIf

			Next
            #ce
            For $i20=0 to 22
                If FileExists('C:\Users\'&@UserName&'\Desktop\csFireFox - 10 sea\csbphonenhom'&$i20&'.au3') = 1 Then ShellExecute('C:\Users\'&@UserName&'\Desktop\csFireFox - 10 sea\csbphonenhom'&$i20&'.au3')
                Sleep(100)
			Next

			    Sleep(5000)

                ControlClick('Open File - Security Warning','','[CLASS:Button; INSTANCE:4]')
			    Sleep(3000)
		     	ControlClick('Open File - Security Warning','','[CLASS:Button; INSTANCE:1]')
			    Sleep(5000)

				Sleep(10000)
				Send('{enter}')
				Sleep(10000)

				$var = WinList ("[CLASS:AutoIt v3 GUI]")
				Sleep(2000)
				    For $i10 = 1 to $var[0][0]
					    If BitAnd (WinGetState ($var[$i10][1]), 2) And $var[$i10][0] <> "" Then
                            ControlSend($var[$i10][1],'','[CLASS:Edit; INSTANCE:4]',$vpsso)
							Sleep(2000)
							ControlClick($var[$i10][1],'1','[CLASS:Edit; INSTANCE:7]')
							Sleep(2000)
							ControlSend($var[$i10][1],'1','[CLASS:Edit; INSTANCE:7]','{BACKSPACE}')
							Sleep(2000)
							If $check=0 Then
								ControlSend($var[$i10][1],'1','[CLASS:Edit; INSTANCE:7]','0')
							Else
								ControlSend($var[$i10][1],'1','[CLASS:Edit; INSTANCE:7]','1')
                                Sleep(1000)
								MsgBox(0,0,'cho khoi dong',Random(1,600,1))

							EndIf
							Sleep(2000)
							ControlClick($var[$i10][1],'BAT DAU','[CLASS:Button; INSTANCE:1]')
							Sleep(2000)

						EndIf
					Next

					FileDelete(@ScriptDir&'\trangthaikhoidong.txt')


  Exit







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


			Func _requetTextDoc($link,$tenTXT)
				$checkrequet=0
				$kq=''

				    For $i12=1 To 5
                         $kq=_HttpRequest(2,$link,'','','','','')        ;lay link kenh va kiem tra view gio
				         Sleep(1000)
						 If StringLen($kq)<2 Then
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


   Func AutoRun()



	EndFunc


Func _Exit()
	Exit
EndFunc   ;==>_Exit

