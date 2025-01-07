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
$Form1 = GUICreate("nhom 7", 615, 437, 192, 124)
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
			   $nhomkenh=Int(($vpsso-1)/10)
			   ;If Not IsArray($somay) Then MsgBox(0,0,'dien so may va so Gmail bat dau',10)
			   MsgBox(0,0,'Chu Y Nhom',2)
			   Sleep(1000)
               WinSetState('nhom 7','',@SW_HIDE)
			   $somay=GUICtrlRead($giatriA)
                $i2=0
				$i=1
				$i5=Random(2,20,1)
				WinClose('explorer.exe')
				FileDelete(@ScriptDir&'\Gmail.txt')
				FileDelete(@ScriptDir&'\Gmailtho.txt')

				_CheckUpdateToolupdate('https://docs.google.com/document/d/1U-ygJ4ghdNsqzzvd73tFEhVHYwVXR4apvWNTzhS_klw/export?format=txt')
				_CheckUpdateToolupdate('https://docs.google.com/document/d/1Bp2Dfajh16hcjmhgR1GR4Fmqu3KZJMC-7jdfqUR4c08/export?format=txt')
				_CheckUpdateToolupdate('https://docs.google.com/document/d/1PStUUV13AuRmTXwykdKNy4iEaeW3gktWXn56zrUehfQ/export?format=txt')

				 $checkrequet=_requetGooGleDOC('https://docs.google.com/document/d/12uNfacfJLTPJsOdGleoy84QSFix2pquxcbITRMRufTM/export?format=txt','Gmailtho.txt')    ;thay doi theo nhom
				 $checkgmail=FileReadLine(@ScriptDir&'\Gmailtho.txt',1)
				If StringLen($checkgmail)<10 Then
					Sleep(60000)
					$checkrequet=_requetGooGleDOC('https://docs.google.com/document/d/12uNfacfJLTPJsOdGleoy84QSFix2pquxcbITRMRufTM/export?format=txt','Gmailtho.txt')
				EndIf
                 _LayGmail($vpsso)
            For  $i21=1 to 3
				 _requetGooGleDOC('https://docs.google.com/document/d/13tDZM6pFNpdZ5VAGw11HAtQKhL6C6yqapkO3Pb4MA30/export?format=txt','Keytinsoft.txt')
				Sleep(2000)
				$sodongIP0=_FileCountLines(@ScriptDir&"\Keytinsoft.txt")
				If $sodongIP0<500 Then
					Sleep(60000)
					_requetGooGleDOC('https://docs.google.com/document/d/13tDZM6pFNpdZ5VAGw11HAtQKhL6C6yqapkO3Pb4MA30/export?format=txt','Keytinsoft.txt')
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
				If $check >8 Then $i21=3


			Next

			For  $i21=1 to 3
				 _requetGooGleDOC('https://docs.google.com/document/d/1KXt08scda_qxWFY-hYVD9yRobCm8r8t-HI8hktNeDSU/export?format=txt','Keytinsoft3.txt')
				Sleep(2000)
				$sodongIP0=_FileCountLines(@ScriptDir&"\Keytinsoft3.txt")
				If $sodongIP0<500 Then
					Sleep(60000)
					_requetGooGleDOC('https://docs.google.com/document/d/1KXt08scda_qxWFY-hYVD9yRobCm8r8t-HI8hktNeDSU/export?format=txt','Keytinsoft3.txt')
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
				If $check >8 Then $i21=3

			Next

			   If $check < 8 Then _GetDOSOutput('shutdown -s -t 0')

				$checkUC=0
				If $kiemtratrinhduyet=1 Then $checkUC=_kiemtratrinhduyet($i5,$i,$vpsso,$trusomaybandau)
				If $vpsso='' Then
					MsgBox(0,0,'loi khong dien so may')
					Exit
                EndIf


                $kiemtratrinhduyet2=1
				$checkprofile=1
While 1   ; vong tra lai gia tr
					FileDelete(@ScriptDir&'\Gmail.txt')
				FileDelete(@ScriptDir&'\Gmailtho.txt')


	            $i6=Mod($vpsso,5)
				If $i6=0 Then $i6=5
	        If $i6=1 Then
				$profileso=2
				If $checkprofile=1 Then $profileso=10
				$i7=20
			EndIf
			If $i6=2 Then
				$profileso=21
				If $checkprofile=1 Then $profileso=30
				$i7=40
			EndIf
			If $i6=3 Then
				$profileso=41
				If $checkprofile=1 Then $profileso=50
				$i7=60
			EndIf
			If $i6=4 Then
				$profileso=61
				If $checkprofile=1 Then $profileso=70
				$i7=80
			EndIf
			If $i6=5 Then
				$profileso=81
				If $checkprofile=1 Then $profileso=90
				$i7=100
			EndIf

			$checkprofile=0    ; de profile dau tien random conf lan sau bang 1


            ;If $checkchonprofile=1 Then $profileso
 For $i5=$profileso to $i7
                  HotKeySet("{esc}", "_Exit")
                FileDelete(@ScriptDir&'\linkkenhchaySUB.txt')
				FileDelete(@ScriptDir&'\Gmailtest.txt')


				If FileExists(@ScriptDir&'\checkUpdateCode.txt')=0 Then
				     _CheckUpdateCode('https://docs.google.com/document/d/1ADoylJpI_ICAjYPwSMzObIEmMtN17jSbqUY28iNT_68/export?format=txt')          ;thay doi theo nhom
				EndIf

				FileDelete(@ScriptDir&'\checkUpdateCode.txt')
				Sleep(1000)

				_CapNhatPhienBan()

			 	_requetGooGleDOC('https://docs.google.com/document/d/1hmq3luKvvH1XrdXm6yjDH3ZgdiTM3vSyTXFrfOScn0Y/export?format=txt','linkkenhchaySUB2.txt')        ;thay doi theo nhom


				For $i20=1 to 10
                    $linkkenh=FileReadLine(@ScriptDir&'\linkkenhchaySUB2.txt',$nhomkenh*10+$i20)
					Sleep(100)
					FileWriteLine(@ScriptDir&'\linkkenhchaySUB.txt',$linkkenh)
					Sleep(100)
				Next

				$sodong2=_FileCountLines(@ScriptDir&'\linkBlu.txt')
	           $thoigianDau=0
	  For $i=$Gmailso To 10
                 ToolTip('profile:'&$i5&'	 BLU so:'&$i&'	vongxoay:'&$vongxoaytho&'	nhom kenh:'&$nhomkenh&'	cummay 7'&'	vpsso:'&$vpsso&'	phien ban:'&$phienban,0,0)
				 $checkTG=1
                 $checkchonprofile=0
				; $check=_FakeIPOptionV6($i,$vpsso)

				;If $check=1 Then

					    ToolTip('profile:'&$i5&'	 BLU so:'&$i&'	vongxoay:'&$vongxoaytho&'	nhom kenh:'&$nhomkenh&'	cummay 7'&'	vpsso:'&$vpsso&'	phien ban:'&$phienban,0,0)
					     _khoidongFireFox2($i,$vpsso)

					    $checkchonprofile=_chonProFileFFv6($i5,$i,$vpsso)
                        $ThuTukenh=$i+$vongxoaytho
				        If $ThuTukenh=11 Then $ThuTukenh=1
						If $ThuTukenh=12 Then $ThuTukenh=2
				        If $ThuTukenh=13 Then $ThuTukenh=3
				        If $ThuTukenh=14 Then $ThuTukenh=4
				        If $ThuTukenh=15 Then $ThuTukenh=5
				        If $ThuTukenh=16 Then $ThuTukenh=6
				        If $ThuTukenh=17 Then $ThuTukenh=7
				        If $ThuTukenh=18 Then $ThuTukenh=8
				        If $ThuTukenh=19 Then $ThuTukenh=9
				        If $ThuTukenh=20 Then $ThuTukenh=10

			           If 	$checkchonprofile=1 Then
							_subIpv6($ThuTukenh,$vpsso,$i,$i5)
					   EndIf

						_closeTrinhDuyet($i)

				;EndIf
			;EndIf

	  Next     ;ket thuc vong xem cac kenh phu

					$Gmailso=1
                    ProcessClose('Ground.exe')
  Next

                    $profileso=2
					$Gmailso =1
WEnd   ; vong tra lai gia tr




        WEnd     ;k?t thúc vòng l?p vô t?n
	EndSwitch
WEnd

