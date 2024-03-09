#include <MsgBoxConstants.au3>
#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#include <AutoItConstants.au3>
#include <File.au3>
#include <Array.au3>
#include <String.au3>
#include <FileConstants.au3>
#include <MsgBoxConstants.au3>
#include <WinAPIFiles.au3>
#RequireAdmin
$i=1

HotKeySet("{f4}", "_Exit")

                ToolTip('update code',0,0)
            For $i21=1 to 2

				_resetMang($i)
				_closeTrinhDuyet($i)
				For $i20=0 to 22
					FileDelete('C:\Users\'&@UserName&'\Downloads\csbphonenhom'&$i20&'.au3')
					Sleep(200)
				Next
				For $i20=0 to 22
					FileDelete('C:\Users\'&@UserName&'\Downloads\csbphone nhom '&$i20&' - 20profile.au3')
					Sleep(200)
				Next

				FileDelete('C:\Users\'&@UserName&'\Downloads\func3.au3')
				Sleep(200)

                    $linkdownload=FileReadLine(@ScriptDir&'\checkUpdateCode.txt',2)
					$linkdownloadFunc=FileReadLine(@ScriptDir&'\checkUpdateCode.txt',3)

                    If $i21=1 Then
						_GetDOSOutput($linkdownload)
						Sleep(10000)

			            MouseClick('left',1325,112,1,20)  ; xoa khoi phuc
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
		                Sleep(2000)
	                 	MouseClick('left',1265, 460,1,20)
		                Sleep(2000)
		                MouseClick('left',1265, 421,1,20)
		                Sleep(2000)
		                MouseClick('left',1204, 340,1,20)
		                Sleep(5000)


					    _GetDOSOutput($linkdownloadFunc)
						Sleep(10000)
		                MouseClick('left',1325,112,1,20)  ; xoa khoi phuc
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
		                Sleep(2000)
	                 	MouseClick('left',1265, 460,1,20)
		                Sleep(2000)
		                MouseClick('left',1265, 421,1,20)
		                Sleep(2000)
		                MouseClick('left',1204, 340,1,20)
		                Sleep(5000)

						For $i20=0 to 22
		                     FileCopy('C:\Users\'&@UserName&'\Downloads\csbphonenhom'&$i20&'.au3','C:\Users\'&@UserName&'\Desktop\csFireFox - 10 sea',1)
		                     Sleep(1000)
		                Next

					Else
						$linkdownload=FileReadLine(@ScriptDir&'\checkUpdateCode.txt',4)
					    $linkdownloadFunc=FileReadLine(@ScriptDir&'\checkUpdateCode.txt',5)
						Sleep(1000)
						_GetDOSOutput($linkdownload)
						Sleep(20000)

						Sleep(2000)
						MouseClick('left',1265, 460,1,20)
						Sleep(2000)
						MouseClick('left',1265, 421,1,20)
						Sleep(2000)
						MouseClick('left',1204, 340,1,20)
						Sleep(5000)
					    _GetDOSOutput($linkdownloadFunc)
						Sleep(20000)
						Sleep(2000)
						MouseClick('left',1265, 460,1,20)
						Sleep(2000)
						MouseClick('left',1265, 421,1,20)
						Sleep(2000)
						MouseClick('left',1204, 340,1,20)
						Sleep(5000)

					EndIf

					Sleep(30000)
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

					_closeTrinhDuyet($i)


					For $i20=0 to 22
					    FileCopy('C:\Users\'&@UserName&'\Downloads\csbphonenhom'&$i20&'.au3','C:\Users\'&@UserName&'\Desktop\csFireFox - 10 sea',1)
					    Sleep(200)
				    Next

					FileCopy('C:\Users\'&@UserName&'\Downloads\func3.au3','C:\Users\'&@UserName&'\Desktop\csFireFox - 10 sea',1)


					Sleep(1000)

					For $i20=0 to 22
					    If FileExists('C:\Users\'&@UserName&'\Desktop\csFireFox - 10 sea\csbphonenhom'&$i20&'.au3')=1 And FileExists('C:\Users\'&@UserName&'\Desktop\csFireFox - 10 sea\func3.au3')=1  Then $i21=3
					    Sleep(200)
				    Next


            Next

					MsgBox(0,0,'cho khoi dong chuong trinh',Random(10,60,1))
					Sleep(1000)
					ShellExecute('C:\Users\'&@UserName&'\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\khoidong.au3')
		            Sleep(2000)

Exit

	    Func _closeTrinhDuyet($i)

			    Sleep(100)
				Send('^w')
				Sleep(100)

				If $i=5 Then
					For $i20=1 to 10
						Send('^w')
						Sleep(1000)
					Next
				EndIf



				If $i=5 Then ControlClick('','','','left',1,428, 27)    ; tat tab thua
				Sleep(500)
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
				$a = WinExists('Firefox')                                                    ;x󡠴o஠b? tap
				If $a=1 Then
				    For $i20 = 1 to 100
					   ControlClick('Firefox','','[CLASS:Button; INSTANCE:1]')
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
				$a = WinExists('Đóng Firefox')                                                    ;x󡠴o஠b? tap
				If $a=1 Then
				    For $i20 = 1 to 100
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
                WinClose('Default Host Application')
				Sleep(100)
				ProcessClose('launcher.exe')
				Sleep(100)
				ProcessClose('msdt.exe')
				Sleep(100)
				ProcessClose('msdt.exe')
				ProcessClose('chrome.exe')
				Sleep(100)
				ProcessClose('chrome.exe')
				Sleep(100)
				ProcessClose('chrome.exe')
				Sleep(100)
				ProcessClose('chrome.exe')
				Sleep(100)
				ProcessClose('chrome.exe')
				Sleep(100)
				ProcessClose('chrome.exe')
				Sleep(100)
				Sleep(100)
				WinClose('Update successful')

                ProcessClose('shutdown.exe')
				Sleep(100)
				WinClose('[class:CabinetWClass]','')
				Sleep(100)
				WinClose('7z SFX: warning')
				Sleep(100)
				WinClose('7z SFX: warning')
				ProcessClose('Windows Network Diagnostics.exe')
				Sleep(100)
				Sleep(100)
				ProcessClose('WerFault.exe')
				Sleep(100)
				ProcessClose('Opera_94.0.4606.38_Autoupdate_x64.exe')
				Sleep(100)
				ProcessClose('Windows Security.exe')
				Sleep(100)
				ProcessClose('opera_autoupdate.exe')
				Sleep(100)
				ProcessClose('Windows Security.exe')
				Sleep(100)
				ProcessClose('AvastBrowser.exe.exe')
				Sleep(100)
				ProcessClose('brave.exe')
				Sleep(100)
				ProcessClose('browser_assistant.exe')
				Sleep(100)
				ProcessClose('notepad.exe')
				Sleep(100)
				ProcessClose('launcher.exe')
				Sleep(100)
				ProcessClose('browser.exe')
				Sleep(100)
				ProcessClose('browser.exe')
				Sleep(100)
				ProcessClose('shutdown.exe')
				Sleep(100)
				ProcessClose('browser.exe')
				Sleep(100)
				ProcessClose('browser.exe')
				Sleep(100)
				ProcessClose('browser.exe')
				Sleep(100)
				ProcessClose('notepad.exe')
				Sleep(100)
				ProcessClose('notepad.exe')
				Sleep(100)
				ProcessClose('WerFault.exe')
				Sleep(100)
				ProcessClose('WerFault.exe')
				Sleep(100)
				ProcessClose('WerFault.exe')
				Sleep(100)
				ProcessClose('WerFault.exe')
				Sleep(100)
				ProcessClose('WerFault.exe')
				Sleep(100)
				ProcessClose('UCBrowser.exe')
				Sleep(100)
				ProcessClose('brave.exe')
				Sleep(100)
				ProcessClose('brave.exe')
				Sleep(100)
				ProcessClose('brave.exe')
				Sleep(100)
				ProcessClose('chrome.exe')
				Sleep(100)
				ProcessClose('chrome.exe')
				Sleep(100)
				ProcessClose('browser_assistant.exe')
				Sleep(100)
				Sleep(100)
				ProcessClose('chrome.exe')
				ProcessClose('opera_autoupdate.exe')
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
				ProcessClose('crashreporter.exe')
				Sleep(100)
				ProcessClose('crashreporter.exe')
				Sleep(100)
				ProcessClose('opera_autoupdate.exe')
				Sleep(100)
				ProcessClose('msdt.exe')
				Sleep(100)
				ProcessClose('msdt.exe')
				Sleep(100)
				ProcessClose('crashreporter.exe')
				Sleep(100)
				ProcessClose('EpicUpdate.exe')
				Sleep(100)
                ProcessClose('slimbrowser.exe')
				Sleep(100)
				ProcessClose('gGlobusPrivacyBrowser.exe')
				Sleep(100)
				ProcessClose('epic.exe')
				Sleep(100)
				ProcessClose('epic.exe')
				Sleep(100)
				ProcessClose('iepic.exe')
				Sleep(100)
				ProcessClose('gepic.exe')
				Sleep(100)
				ProcessClose('chrome.exe')
				Sleep(100)
				ProcessClose('chrome.exe')
				Sleep(100)
				ProcessClose('opera_autoupdate.exe')
				Sleep(100)
				Sleep(100)
				ProcessClose('chrome.exe')
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
				Sleep(100)
				ProcessClose('Maxthon.exe')
				Sleep(100)
				ProcessClose('Maxthon.exe')
				Sleep(100)
				ProcessClose('GoogleCrashHandler64.exe')
				Sleep(100)
				ProcessClose('GoogleCrashHandler.exe')
				Sleep(100)
				ProcessClose('Maxthon.exe')
				Sleep(100)
				ProcessClose('Windows Security.exe')
				Sleep(100)
				ProcessClose('Windows Security.exe')
				Sleep(100)
				Sleep(100)
				ProcessClose('Maxthon.exe')
				Sleep(100)
				ProcessClose('gfirefox.exe')
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
				ProcessClose('brave.exe')
				Sleep(100)
				ProcessClose('brave.exe')
				Sleep(100)
				ProcessClose('vivaldi.exe')
				Sleep(100)
				ProcessClose('firefox.exe')
				Sleep(100)
				ProcessClose('launcher.exe')
				Sleep(100)
				ProcessClose('firefox.exe')
				Sleep(100)
				ProcessClose('opera_autoupdate.exe')
				Sleep(100)
				ProcessClose('Windows Security.exe')
				Sleep(100)

                ProcessClose('Windows Security.exe')
				Sleep(100)
				ProcessClose('firefox.exe')
				Sleep(100)
				ProcessClose('launcher.exe')
				Sleep(100)
				ProcessClose('firefox.exe')
				Sleep(100)
				ProcessClose('firefox.exe')
				Sleep(100)
				ProcessClose('firefox.exe')
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
				ProcessClose('vivaldi.exe')
				Sleep(100)
				ProcessClose('gMaxthon.exe')
				Sleep(100)
				ProcessClose('gfirefox.exe')
				Sleep(100)
				ProcessClose('gchrome.exe')
				Sleep(100)
				ProcessClose('gUCBrowser.exe')
				Sleep(100)
				ProcessClose('browser.exe')
				Sleep(100)
			    ProcessClose('opera.exe')
				Sleep(100)
				ProcessClose('brave.exe')
				Sleep(100)
				ProcessClose('vivaldi.exe')
				Sleep(100)
				ProcessClose('Maxthon.exe')
				Sleep(100)
				ProcessClose('slimbrowser.exe')
				Sleep(100)
				ProcessClose('chrome.exe')
				Sleep(100)
				ProcessClose('msedge.exe')
				Sleep(100)
				ProcessClose('gmsedge.exe')
				Sleep(100)
				ProcessClose('AvastBrowser.exe')
				Sleep(100)
				ProcessClose('gAvastBrowser.exe')
				Sleep(100)
				ProcessClose('vivaldi.exe')
				Sleep(100)
				ProcessClose('rundll32.exe')
				Sleep(100)
				ProcessClose('Windows Security.exe')
				Sleep(100)
				ProcessClose('seamonkey.exe')
				Sleep(100)
				ProcessClose('gseamonkey.exe')
				Sleep(100)
				ProcessClose('firefox.exe')
				Sleep(100)
				ProcessClose('Maxthon.exe')
				Sleep(100)
				ControlClick('Maxthon','','[CLASS:Button; INSTANCE:2]')
				Sleep(100)
				ControlClick('Maxthon','','[CLASS:Button; INSTANCE:2]')

				ProcessClose('browser.exe')
				Sleep(100)
				ProcessClose('browser.exe')
				Sleep(100)
				ProcessClose('browser.exe')
				Sleep(100)
				ProcessClose('browser.exe')
				Sleep(100)
				ProcessClose('browser.exe')
				Sleep(100)
				ProcessClose('browser.exe')
				Sleep(100)

				Send('{f5}')
				Sleep(100)
				Send('{f5}')
				Sleep(100)
				WinClose("Open File - Security Warning")
				Sleep(100)
				WinClose("SeaMonkey")
				Sleep(100)
				ProcessClose('AvastBrowserCrashHandler64.exe')
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
				ProcessClose('GoogleCrashHandler64.exe')
				Sleep(100)
				ProcessClose('UCService.exe')
				Sleep(100)
				ProcessClose('UCAgent.exe')
				ProcessClose('Windows Security.exe')
				Sleep(100)
				ProcessClose('Windows Security.exe')
				Sleep(100)
				Sleep(100)
				Send('{f5}')
				Sleep(300)
				Send('{f5}')
				MouseClick("left",1000, 500,1,20)   ; tat update
				Sleep(500)
				WinClose('Local Area Network (LAN) Settings')
				Sleep(100)
				WinClose('Internet Properties')
				Sleep(100)
				MouseClick('left',300,455,1,20)   ; thoat loi win
				Sleep(100)
				WinClose('[class:CabinetWClass]','')
				Sleep(100)
				WinClose('Proxy Client Tinsoft')
				Sleep(100)
				ProcessClose('mmc.exe')
				; Sleep(10000)
				 Send('{f5}')
				 Sleep(100)
				 Send('{f5}')
				 Sleep(100)



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

					ShellExecute(@ScriptDir&'\Internet Options - Shortcut.lnk')
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

	Func AutoRun()

	EndFunc

    Func _Exit()
	   Exit
	EndFunc   ;==>_Exit
