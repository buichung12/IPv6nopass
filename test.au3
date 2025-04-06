
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
$i=7

$h='buichungtest133@gmail.com'

                            $x=0
		                    $y=0
		                    _ImageSearchArea(@ScriptDir&'\sub.bmp',1,100, 623,482, 724,$x,$y,1,1)
                            Sleep(500)
						    If $x>0 Then
							    MouseClick('left',$x,$y,1,20)
							    Sleep(5000)
							Else
								_ImageSearchArea(@ScriptDir&'\sub.bmp',1,100, 570,479, 659,$x,$y,1,1)
                                Sleep(500)
								If $x>0 Then
							        MouseClick('left',$x,$y,1,20)
							        Sleep(5000)
								Else
									_ImageSearchArea(@ScriptDir&'\sub.bmp',1,100, 528,476, 619,$x,$y,1,1)
                                    Sleep(500)
						            If $x>0 Then
							            MouseClick('left',$x,$y,1,20)
									    Sleep(5000)
									Else
										_ImageSearchArea(@ScriptDir&'\sub.bmp',1,100,486,478, 624,$x,$y,1,1)
                                        Sleep(500)
						                If $x>0 Then
							                MouseClick('left',$x,$y,1,20)
											Sleep(5000)
										Else
											_ImageSearchArea(@ScriptDir&'\sub.bmp',1,100,333,470, 785,$x,$y,1,1)
                                            Sleep(500)
						                    If $x>0 Then
							                    MouseClick('left',$x,$y,1,20)
							                    Sleep(5000)
											Else
												_ImageSearchArea(@ScriptDir&'\sub2.bmp',1,132, 486,479, 731,$x,$y,1,1)
                                                Sleep(500)
								                If $x>0 Then
													MouseClick('left',$x,$y,1,20)
							                        Sleep(5000)
								                EndIf

											EndIf

						                    EndIf
						            EndIf


						        EndIf

						    EndIf

Exit



Sleep(2000)     ;thoi gian nghi
						$pixcel=PixelSearch(28, 625,465, 785,0x0F0F0F)         ; sub ytb
						If IsArray($pixcel) Then

							MouseMove($pixcel[0],$pixcel[1],20)
						Else

						EndIf

Exit
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


