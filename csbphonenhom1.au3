#include <func3.au3>
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
#include <String.au3>

HotKeySet("{f2}", "_Exit")
#Region ### START Koda GUI section ### Form=
$Form1 = GUICreate("nhom 0", 615, 437, 192, 124)
$Label1 = GUICtrlCreateLabel("link group view", 15, 16, 50, 35)
$Label1 = GUICtrlCreateLabel("link group sub", 15, 60, 50, 50)
$group = GUICtrlCreateInput("", 88, 16, 200, 21)        ;link sub 3   https://anotepad.com/notes/rcpdta95
$groupsub = GUICtrlCreateInput("", 88, 60, 200, 21)    ; lick sub 2  https://anotepad.com/notes/4sanp7d2
$Label2 = GUICtrlCreateLabel("so luong", 15, 100, 44, 17)
$tongsosub = GUICtrlCreateInput("", 88, 100, 200, 21)
$batdau=GUICtrlCreateButton("BAT DAU", 16, 216, 75, 25)
$Label1 = GUICtrlCreateLabel('vps so: ' , 300, 50, 100, 50)
$Label2 = GUICtrlCreateLabel("bat dau Gmail so", 300, 90, 100, 60)
$giatriA = GUICtrlCreateInput("", 400, 48, 100, 21)
$giatriB = GUICtrlCreateInput("1", 400, 88, 100, 21)
$Label3 = GUICtrlCreateLabel("profile ", 300, 130, 100, 30)
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
			   $groupkq=GUICtrlRead($group)
			   $groupkqSub=GUICtrlRead($groupsub)
			   $tongsoviewkq=GUICtrlRead($tongsosub)
			   $vpsso=GUICtrlRead($giatriA)
			   $Gmailso=GUICtrlRead($giatriB)
			   $profileso=GUICtrlRead($giatriC)
			   $kiemtratrinhduyet=GUICtrlRead($giatriD)
			   $trusomaybandau=GUICtrlRead($giatriE)

			   $vongxoaytho=Mod($vpsso-1,10)
			   MsgBox(0,0,'Chu Y Nhom',2)
               WinSetState('nhom 0','',@SW_HIDE)
			   $somay=GUICtrlRead($giatriA)
                $i2=0
				$i=1
				$i5=Random(2,20,1)
				WinClose('explorer.exe')
				FileDelete(@ScriptDir&'\Gmail.txt')
				FileDelete(@ScriptDir&'\Gmailtho.txt')


				$checkrequet=_requetGooGleDOC('https://docs.google.com/document/d/14EXqbMY3q4g1h-FByQ4WA_oV_GkrvKwx8FgKjGoc0Hk/export?format=txt','Gmail.txt')
				$checkgmail=FileReadLine(@ScriptDir&'\Gmail.txt',1)
				If StringLen($checkgmail)<10 Then
					Sleep(60000)
					$checkrequet=_requetGooGleDOC('https://docs.google.com/document/d/14EXqbMY3q4g1h-FByQ4WA_oV_GkrvKwx8FgKjGoc0Hk/export?format=txt','Gmail.txt')
				EndIf
				_LayGmail($vpsso)

				For  $i21=1 to 3

				     _requetGooGleDOC('https://docs.google.com/document/d/1fNISPX2uU1JRefEBzX07EqUrn9wdFo7ALOSZe7ltzPk/export?format=txt','Keytinsoft.txt')
				    Sleep(2000)
				    $sodongIP0=_FileCountLines(@ScriptDir&"\Keytinsoft.txt")
				    If $sodongIP0<500 Then
					    Sleep(60000)
					    _requetGooGleDOC('https://docs.google.com/document/d/1fNISPX2uU1JRefEBzX07EqUrn9wdFo7ALOSZe7ltzPk/export?format=txt','Keytinsoft.txt')
				    EndIf

				    $STTIP=($vpsso-1)*10+1
				    FileDelete(@ScriptDir&'\Keytinsoft2.txt')
				    Sleep(1000)
				    For $i20=0 to 9
					    $Iptho=FileReadLine(@ScriptDir&'\Keytinsoft.txt',$STTIP+$i20)
					    Sleep(100)
				    	FileWriteLine(@ScriptDir&'\Keytinsoft2.txt',$Iptho)
					    Sleep(100)
					Next

					$check=_FileCountLines(@ScriptDir&"\Keytinsoft2.txt")
					$check2=FileReadLine(@ScriptDir&"\Keytinsoft2.txt",2)
					$check3=StringLen($check2)
				    If $check >8 And $check3>10 Then $i21=3

				Next



				For  $i21=1 to 3


					 _requetGooGleDOC('https://docs.google.com/document/d/1vSxY8GS2LhmgHwEkPFLSAhm4iLu6KA2IDvCU-zmvjx4/export?format=txt','Keytinsoft3.txt')
				    Sleep(2000)
				    $sodongIP0=_FileCountLines(@ScriptDir&"\Keytinsoft3.txt")
				    If $sodongIP0<500 Then
					    Sleep(60000)
					    _requetGooGleDOC('https://docs.google.com/document/d/1vSxY8GS2LhmgHwEkPFLSAhm4iLu6KA2IDvCU-zmvjx4/export?format=txt','Keytinsoft3.txt')
				    EndIf

				    $STTIP=($vpsso-1)*10+1
				    FileDelete(@ScriptDir&'\Keytinsoft4.txt')
				    Sleep(1000)
				    For $i20=0 to 9
					    $Iptho=FileReadLine(@ScriptDir&'\Keytinsoft3.txt',$STTIP+$i20)
					    Sleep(100)
				    	FileWriteLine(@ScriptDir&'\Keytinsoft4.txt',$Iptho)
					    Sleep(100)
					Next

					 $check=_FileCountLines(@ScriptDir&"\Keytinsoft4.txt")
					$check2=FileReadLine(@ScriptDir&"\Keytinsoft4.txt",2)
					$check3=StringLen($check2)
				    If $check >8 And $check3>10 Then $i21=3

				Next


				If $check < 8 Then _GetDOSOutput('shutdown -s -t 0')


				If $kiemtratrinhduyet=1 Then $checkUC=_kiemtratrinhduyet($i5,$vpsso,$trusomaybandau)
				If $vpsso='' Then
					MsgBox(0,0,'loi khong dien so may')
					Exit
                EndIf

				Sleep(1000)
				$kiemtratrinhduyet2=1
				$checkprofile=1

				For $i20=1 to Random(2,20,1)
					 MsgBox(0,0,'chờ khởi động:'&$vpsso&'	 phút:'&$i20,60)  ;b?n 1.1.60
				Next

While 1   ; vong tra lai gia tr
	           ; FileDelete(@ScriptDir&'\Gmail.txt')
			FileDelete(@ScriptDir&'\Gmailtho.txt')
			$checkprofile=0    ; de profile dau tien random conf lan sau bang 1
            $i20=Random(1,20,1)

 For $i5=$i20 to 95
	            HotKeySet("{esc}", "_Exit")

                FileDelete(@ScriptDir&'\linkkenhchaySUB.txt')
				FileDelete(@ScriptDir&'\Gmailtest.txt')
				FileDelete(@ScriptDir&'\linkkenhto.txt')


				If FileExists(@ScriptDir&'\checkUpdateCode.txt')=0 Then
				     _CheckUpdateCode('https://docs.google.com/document/d/1b412WeBXTyAeuvXssuSfIBD9Mrw3dLDA1NoBSbBpavA/export?format=txt')
				EndIf
				FileDelete(@ScriptDir&'\checkUpdateCode.txt')
				Sleep(1000)

                _CapNhatPhienBan()

				ToolTip('KenhSo:'&$i5&'	cummay 1'&'	vpsso:'&$vpsso,0,0)


				_khoidongFireFox2($i5,$vpsso)
				$checkchonprofile=_chonProFileFFv6($i5,$vpsso)

				If 	$checkchonprofile=1 Then
					_subIpv6($vpsso,$i,$i5)
				EndIf

			    _closeTrinhDuyet($i)

				For $i20=1 to 60
					MsgBox(0,0,'chờ khởi động:'&$vpsso&'	 phút:'&$i20,60)  ;b?n 1.1.60
				Next

					$Gmailso=1
                    ProcessClose('Ground.exe')
  Next

WEnd   ; vong tra lai gia tr




        WEnd     ;k?t th�c v�ng l?p v� t?n
	EndSwitch
WEnd




