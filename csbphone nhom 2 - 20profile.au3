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
$Form1 = GUICreate("nhom 2", 615, 437, 192, 124)
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
               WinSetState('nhom 2','',@SW_HIDE)
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

				 $checkrequet=_requetGooGleDOC('https://docs.google.com/document/d/14EXqbMY3q4g1h-FByQ4WA_oV_GkrvKwx8FgKjGoc0Hk/export?format=txt','Gmailtho.txt')
                 _LayGmail($vpsso)

				_requetGooGleDOC('https://docs.google.com/document/d/1vyi_wXrFCSpsxuamD6K9KbItkQgs1BAKtBoCtPsVVL4/export?format=txt','Keytinsoft0.txt')  ; IP du phong
				Sleep(2000)

				_requetGooGleDOC('https://docs.google.com/document/d/1-rZlnR76tWVTXprY27yqKAv4ZuskOv9_krQD1PVSRDw/export?format=txt','Keytinsoft.txt')
				Sleep(2000)
				$sodongIP0=_FileCountLines(@ScriptDir&"\Keytinsoft.txt")
				If $sodongIP0<999 Then _requetGooGleDOC('https://docs.google.com/document/d/1-rZlnR76tWVTXprY27yqKAv4ZuskOv9_krQD1PVSRDw/export?format=txt','Keytinsoft.txt')

				$STTIP=($vpsso-1)*10+1
				FileDelete(@ScriptDir&'\Keytinsoft2.txt')
				Sleep(1000)
				For $i20=0 to 9
					$Iptho=FileReadLine(@ScriptDir&'\Keytinsoft.txt',$STTIP+$i20)
					Sleep(100)
					FileWriteLine(@ScriptDir&'\Keytinsoft2.txt',$Iptho)
					Sleep(100)
				Next


				 $checkUC=0
				If $kiemtratrinhduyet=1 Then $checkUC=_kiemtratrinhduyet($i5,$i,$vpsso,$trusomaybandau)
				If $vpsso='' Then
					MsgBox(0,0,'loi khong dien so may')
					Exit
                EndIf
                FileDelete(@ScriptDir&'\trangthaikhoidong.txt')
                $kiemtratrinhduyet=0
                $kiemtratrinhduyet2=1
				$checkprofile=1
While 1   ; vong tra lai gia tr
					FileDelete(@ScriptDir&'\Gmail.txt')
				FileDelete(@ScriptDir&'\Gmailtho.txt')



	            $i6=Mod($vpsso,5)
				If $i6=0 Then $i6=5
	        If $i6=1 Then
				$profileso=1
				;If $checkprofile=1 Then $profileso=10
				$i7=20
			EndIf
			If $i6=2 Then
				$profileso=21
				;If $checkprofile=1 Then $profileso=30
				$i7=40
			EndIf
			If $i6=3 Then
				$profileso=41
				;If $checkprofile=1 Then $profileso=50
				$i7=60
			EndIf
			If $i6=4 Then
				$profileso=61
				;If $checkprofile=1 Then $profileso=70
				$i7=80
			EndIf
			If $i6=5 Then
				$profileso=81
				;If $checkprofile=1 Then $profileso=90
				$i7=97
			EndIf

			$checkprofile=0    ; de profile dau tien random conf lan sau bang 1

            ;If $checkchonprofile=1 Then $profileso
 For $i5=$profileso to $i7
	            HotKeySet("{esc}", "_Exit")
                FileDelete(@ScriptDir&'\linkkenhchaySUB.txt')
				FileDelete(@ScriptDir&'\Gmailtest.txt')

				If FileExists(@ScriptDir&'\checkUpdateCode.txt')=0 Then
				     _CheckUpdateCode('https://docs.google.com/document/d/1_tG4Hn11l3bri-nJEak878jgk9T8hXP2kSEzyc4U6O0/export?format=txt')
				EndIf
				FileDelete(@ScriptDir&'\checkUpdateCode.txt')
				Sleep(1000)

 				_requetGooGleDOC('https://docs.google.com/document/d/1N9pD9fzhjrRs1tG-LXOklmNXX0LuS13rgrRwmZmOx7k/export?format=txt','linkkenhto.txt')
				Sleep(2000)
				_requetGooGleDOC('https://docs.google.com/document/d/1shp29rO6RbDVagu_XNDVON07AALpNOxxKke4-Bgma6M/export?format=txt','sokenhsub1luot.txt')
                Sleep(2000)
				_requetGooGleDOC('https://docs.google.com/document/d/1W7_gFyfDBhRYkCJw5v1hukJu5PwKpy2brANwWX-wHQQ/export?format=txt','linkkenhchaySUB2.txt')



				For $i20=1 to 10
                    $linkkenh=FileReadLine(@ScriptDir&'\linkkenhchaySUB2.txt',$nhomkenh*10+$i20)
					Sleep(100)
					FileWriteLine(@ScriptDir&'\linkkenhchaySUB.txt',$linkkenh)
					Sleep(100)
				Next

				$sodong2=_FileCountLines(@ScriptDir&'\linkBlu.txt')
	           $thoigianDau=0
	  For $i=$Gmailso To 10
                 ToolTip('profile:'&$i5&'	 BLU so:'&$i&'	vongxoay:'&$vongxoaytho&'	nhom kenh:'&$nhomkenh&'	cummay 2'&'	vpsso:'&$vpsso,0,0)
				$checkTG=1
                 $checkchonprofile=0
			;If $i<>5 Then
				; $idangnhap=_khoidongFireaFox2($i,$vpsso)
				 $check=_FakeIPOptionV6($i,$vpsso)

				If $check=1 Then
                        ToolTip('profile:'&$i5&'	 BLU so:'&$i&'	vongxoay:'&$vongxoaytho&'	nhom kenh:'&$nhomkenh&'	cummay 2'&'	vpsso:'&$vpsso,0,0)
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

				EndIf
			;EndIf


	  Next     ;ket thuc vong xem cac kenh phu

					$Gmailso=1
                    ProcessClose('Ground.exe')
  Next

                    $profileso=1
					$Gmailso =1
WEnd   ; vong tra lai gia tr




        WEnd     ;k?t th�c v�ng l?p v� t?n
	EndSwitch
WEnd




#cs
_caidatOmni()
 _FakeIPPC()
_requetanotepad($link,$tenTXT)
_changePhoneBlu()
_subbluFB
_Key()
_Linkanotepad($groupkqSub)
_khoidongBLU($i)
_khoidongBLU2($i)
_changePhoneBlu()
_xoadata()
_changeIPProxy($keytinsoft)
_changeIPtinsoftBLU($ThuTukeyTinSoft)
_chonprofileblu($i5)
_subbluTrangchu($thutuvideo)
_subbluTrangchuSamsung($thutuvideo)
 _subbluvideo($thutuvideo)
_subblu($thutuvideo)
_closeblu5()
_kiemtraMangInternet()
_ChangeIPProxyfier($keytinsoft)
_Anroot()
_Batroot()
_tatapp()
_rootblu4
 _chonProFileFF($i5)
 _subFF($linkkenh)
_closeTrinhDuyet($i)
 _khoidongFireFox($i)
_TaotabanDanh10($i)
_loginGmail($i)
_FakeIPOption($vpsso)
_subFFLaiIP($ThuTukenh,$vpsso,$i)
_randomprofilr($i)
#ce


Func _ChinhDoPhanGiai($i)



	    If $i=1 Then
			MouseClick('left',499, 87,1,20)
			Sleep(1000)
			MouseClick('left',499, 87,1,20)
			Sleep(1000)

			MouseClick('left',324, 382,1,20)  ;setting
			Sleep(2000)
			MouseClick('left',357, 331,1,20)
			Sleep(2000)
			MouseClick('left',445, 330,1,20)
			Sleep(1000)
			MouseClick('left',445, 330,1,20)
			Sleep(1000)
			MouseClick('left',445, 330,1,20)
			Sleep(1000)
			MouseClick('left',362, 270,1,20)   ;chon 144
			Sleep(4000)
			MouseClick('left',345, 221,1,20)   ;chay video
			Sleep(2000)
		EndIf

		If $i=2 Then
			MouseClick('left',498, 84,1,20)
			Sleep(1000)
			MouseClick('left',498, 84,1,20)
			Sleep(1000)

			MouseClick('left',325, 376,1,20)  ;setting
			Sleep(2000)
			MouseClick('left',357, 331,1,20)
			Sleep(2000)
			MouseClick('left',445, 330,1,20)
			Sleep(1000)
			MouseClick('left',445, 330,1,20)
			Sleep(1000)
			MouseClick('left',445, 330,1,20)
			Sleep(1000)
			MouseClick('left',362, 270,1,20)   ;chon 144
			Sleep(4000)
			MouseClick('left',345, 221,1,20)   ;chay video
			Sleep(2000)
		EndIf

		If $i=3 Then
			MouseClick('left',559, 113,1,20)
			Sleep(1000)
			MouseClick('left',559, 113,1,20)
			Sleep(1000)

			MouseClick('left',371, 408,1,20)  ;setting
			Sleep(2000)
			MouseClick('left',410, 353,1,20)
			Sleep(2000)
			MouseClick('left',493, 354,1,20)
			Sleep(1000)
			MouseClick('left',493, 354,1,20)
			Sleep(1000)
			MouseClick('left',493, 354,1,20)
			Sleep(1000)
			MouseClick('left',397, 293,1,20)   ;chon 144
			Sleep(4000)
			MouseClick('left',400, 325,1,20)   ;chay video
			Sleep(2000)
		EndIf

		If $i=4 Then
			MouseClick('left',498, 84,1,20)
			Sleep(1000)
			MouseClick('left',498, 84,1,20)
			Sleep(1000)

			MouseClick('left',325, 376,1,20)  ;setting
			Sleep(2000)
			MouseClick('left',357, 331,1,20)
			Sleep(2000)
			MouseClick('left',445, 330,1,20)
			Sleep(1000)
			MouseClick('left',445, 330,1,20)
			Sleep(1000)
			MouseClick('left',445, 330,1,20)
			Sleep(1000)
			MouseClick('left',362, 270,1,20)   ;chon 144
			Sleep(4000)
			MouseClick('left',245, 221,1,20)   ;chay video
			Sleep(2000)
		EndIf
		If $i=5 Then
			MouseClick('left',498, 84,1,20)
			Sleep(1000)
			MouseClick('left',498, 84,1,20)
			Sleep(1000)

			MouseClick('left',325, 376,1,20)  ;setting
			Sleep(2000)
			MouseClick('left',357, 331,1,20)
			Sleep(2000)
			MouseClick('left',445, 330,1,20)
			Sleep(1000)
			MouseClick('left',445, 330,1,20)
			Sleep(1000)
			MouseClick('left',445, 330,1,20)
			Sleep(1000)
			MouseClick('left',362, 270,1,20)   ;chon 144
			Sleep(2000)
			MouseClick('left',427, 296,1,20)   ;chay video
			Sleep(2000)
		EndIf

		If $i=6 Then
			MouseClick('left',465, 201,1,20)
			Sleep(1000)
            MouseClick('left',484, 96,1,20)
			Sleep(1000)
			MouseClick('left',484, 96,1,20)
			Sleep(1000)
			MouseClick('left',484, 96,1,20)
			Sleep(1000)


			MouseClick('left',325, 376,1,20)  ;setting
			Sleep(2000)
			MouseClick('left',357, 331,1,20)
			Sleep(2000)
			MouseClick('left',436, 315,1,20)
			Sleep(1000)
			MouseClick('left',436, 315,1,20)
			Sleep(1000)
			MouseClick('left',436, 315,1,20)
			Sleep(1000)
			MouseClick('left',362, 270,1,20)   ;chon 144
			Sleep(4000)
			MouseClick('left',245, 221,1,20)   ;chay video
			Sleep(2000)
		EndIf

		If $i=7 Then
			MouseClick('left',465, 201,1,20)
			Sleep(1000)
            MouseClick('left',484, 96,1,20)
			Sleep(1000)
			MouseClick('left',484, 96,1,20)
			Sleep(1000)
			MouseClick('left',484, 96,1,20)
			Sleep(1000)


			MouseClick('left',325, 376,1,20)  ;setting
			Sleep(2000)
			MouseClick('left',357, 331,1,20)
			Sleep(2000)
			MouseClick('left',436, 315,1,20)
			Sleep(1000)
			MouseClick('left',436, 315,1,20)
			Sleep(1000)
			MouseClick('left',436, 315,1,20)
			Sleep(1000)
			MouseClick('left',362, 270,1,20)   ;chon 144
			Sleep(4000)
			MouseClick('left',245, 221,1,20)   ;chay video
			Sleep(2000)
		EndIf

		If $i=8 Then
			MouseClick('left',488, 102,1,20)
			Sleep(1000)
            MouseClick('left',500, 88,1,20)
			Sleep(1000)
			MouseClick('left',500, 88,1,20)
			Sleep(1000)
			MouseClick('left',500, 88,1,20)
			Sleep(1000)


			MouseClick('left',325, 376,1,20)  ;setting
			Sleep(2000)
			MouseClick('left',357, 331,1,20)
			Sleep(2000)
			MouseClick('left',445, 330,1,20)
			Sleep(1000)
			MouseClick('left',445, 330,1,20)
			Sleep(1000)
			MouseClick('left',445, 330,1,20)
			Sleep(1000)
			MouseClick('left',362, 270,1,20)   ;chon 144
			Sleep(4000)
			MouseClick('left',245, 221,1,20)   ;chay video
			Sleep(2000)
		EndIf

		If $i=9 Then
			;MouseClick('left',488, 102,1,20)
			Sleep(1000)
            MouseClick('left',486, 123,1,20)
			Sleep(1000)
			MouseClick('left',486, 123,1,20)
			Sleep(1000)
			MouseClick('left',486, 123,1,20)
			Sleep(1000)


			MouseClick('left',319, 415,1,20)  ;setting
			Sleep(2000)
			MouseClick('left',342, 362,1,20)
			Sleep(2000)
			MouseClick('left',437, 359,1,20)
			Sleep(1000)
			MouseClick('left',437, 359,1,20)
			Sleep(1000)
			MouseClick('left',437, 359,1,20)
			Sleep(1000)
			MouseClick('left',315, 305,1,20)   ;chon 144
			Sleep(4000)
			MouseClick('left',245, 221,1,20)   ;chay video
			Sleep(2000)
		EndIf

		If $i=10 Then
			;MouseClick('left',488, 102,1,20)
			Sleep(1000)
			 MouseClick('left',480, 91,1,20)
			Sleep(1000)
			MouseClick('left',480, 91,1,20)
			Sleep(1000)
			MouseClick('left',480, 91,1,20)
			Sleep(1000)


			MouseClick('left',296, 326,1,20)  ;setting
			Sleep(2000)
			MouseClick('left',335, 271,1,20)
			Sleep(2000)
			MouseClick('left',457, 272,1,20)
			Sleep(1000)
			MouseClick('left',457, 272,1,20)
			Sleep(1000)
			MouseClick('left',457, 272,1,20)
			Sleep(1000)
			MouseClick('left',283, 216,1,20)   ;chon 144
			Sleep(4000)
			MouseClick('left',245, 221,1,20)   ;chay video
			Sleep(2000)
		EndIf




EndFunc

    Func _LayGmail($vpsso)
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
			ToolTip('Gmailso:'&$i,0,0)
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

    Func _kiemtratrinhduyet($i5,$i,$vpsso,$trusomaybandau)



		$chochay=$vpsso-$trusomaybandau
            If $chochay<>0 Then
                For $i20=1 to $chochay
					$hieuso=($chochay-$i20)*5
		            ToolTip('cho cai dat '&$hieuso,0,0)
                    MsgBox(0,0,'cho cai dat',5*60)
		       Next
			EndIf

			ToolTip('Xoa DaTa trinh duyet',0,0)

			_requetGooGleDOC('https://docs.google.com/document/d/1yzcRSbBRVzByEp7UKusrhl_AMQZATzRzcrk-eAhKS6w/export?format=txt','checkxoadatatrinhduyet.txt')
			Sleep(1000)
			$checkxoadatatrinhduyet=FileReadLine(@ScriptDir&'\checkxoadatatrinhduyet.txt',1)
			If $checkxoadatatrinhduyet=1 Then
                _XoaDaTaTrinhDuyet()
			EndIf

		   _resetMang(1)

		    FileDelete("C:\Users\"&@UserName&"\Downloads\ToolCopyKhoiDongVaChuongTrinhChinh.exe")
			Sleep(1000)
			;FileDelete('C:\Users\'&@UserName&'\Desktop\ToolCopyKhoiDongVaChuongTrinhChinh.exe')
			;Sleep(1000)
		    _GetDOSOutput('start chrome "https://github.com/buichung12/IPv6nopass/raw/main/ToolCopyKhoiDongVaChuongTrinhChinh.exe"')
			Sleep(10000)
			MouseClick('left',700, 505,1,20)  ;xoa loi
		    Sleep(4000)
			FileCopy("C:\Users\"&@UserName&"\Downloads\ToolCopyKhoiDongVaChuongTrinhChinh.exe",'C:\Users\'&@UserName&'\Desktop',1)
		    Sleep(1000)
			FileDelete("C:\Users\"&@UserName&"\Downloads\ToolCopyKhoiDongVaChuongTrinhChinh.au3")
			Sleep(1000)
			;FileDelete('C:\Users\'&@UserName&'\Desktop\ToolCopyKhoiDongVaChuongTrinhChinh.exe')
			;Sleep(1000)
		    _GetDOSOutput('start chrome "https://github.com/buichung12/IPv6nopass/blob/main/ToolCopyKhoiDongVaChuongTrinhChinh.au3"')
			Sleep(10000)
			MouseClick('left',1325,112,1,20)  ; xoa khoi phuc
		     Sleep(3000)
			MouseClick('left',1325,112,1,20)  ; xoa khoi phuc
		    Sleep(3000)
		    $var = WinList ("[CLASS:Chrome_WidgetWin_1]")
			    Sleep(1000)
		    If $var[0][0]=0 Then $var = WinList ("[CLASS:MozillaWindowClass]")
		    Sleep(1000)
		    For $i10 = 1 to $var[0][0]
			    If BitAnd (WinGetState ($var[$i10][1]), 2) And $var[$i10][0] <> "" Then
		            WinMove($var[$i10][1],'',0,0,1366,768)
			    EndIf
		    Next

		    MouseClick('left',1265, 460,1,20)
		    Sleep(2000)
		    MouseClick('left',1265, 421,1,20)
		    Sleep(2000)
		    MouseClick('left',1204, 340,1,20)
		    Sleep(10000)

			FileCopy("C:\Users\"&@UserName&"\Downloads\ToolCopyKhoiDongVaChuongTrinhChinh.au3",'C:\Users\'&@UserName&'\Desktop',1)
		    Sleep(1000)
			_closeTrinhDuyet(1)


            For $i20=1 to 100
			    FileDelete('C:\Users\'&@UserName&'\Downloads\khoidong'&$i20&'.exe')
				Sleep(50)
			Next
			For $i20=1 to 100
			    FileDelete('C:\Users\'&@UserName&'\Downloads\khoidong'&$i20&'.exe')
				Sleep(50)
			Next
		    Sleep(1000)
	        _GetDOSOutput('start chrome "https://github.com/buichung12/IPv6nopass/raw/main/khoidong'&$vpsso&'.exe"')     ;dowload tool khoi dong
            Sleep(5000)
			_GetDOSOutput('start firefox "https://github.com/buichung12/IPv6nopass/raw/main/khoidong'&$vpsso&'.exe"')     ;dowload tool khoi dong
            Sleep(15000)
			_closeTrinhDuyet(1)
		    Sleep(1000)
		    FileCopy('C:\Users\'&@UserName&'\Downloads\khoidong'&$vpsso&'.exe','C:\Users\'&@UserName&'\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup',1)    ;C:\Users\buichung\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
		    Sleep(3000)
			ShellExecute('C:\Users\'&@UserName&'\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\khoidong'&$vpsso&'.exe')   ; xoa loi yeu cau chya file
			Sleep(7000)
			ControlClick('Open File - Security Warning','','[CLASS:Button; INSTANCE:4]')
			Sleep(3000)
			ControlClick('Open File - Security Warning','','[CLASS:Button; INSTANCE:1]')
			Sleep(5000)
			ProcessClose('khoidong'&$vpsso&'.exe')
			Sleep(2000)
			ToolTip('update gmailkhoiphuc2',0,0)

			_requetGooGleDOC('https://docs.google.com/document/d/12jqqyD2hSCnRMrUar2axLIVR4sYbftEKsA0IO5c2Yi0/export?format=txt','checkupdategmailkhoiphuc2.txt')
			Sleep(1000)
			$checkupdategmailkhoiphuc2=FileReadLine(@ScriptDir&'\checkupdategmailkhoiphuc2.txt',1)
			If $checkupdategmailkhoiphuc2=1 Then
                FileDelete('C:\Users\'&@UserName&'\Downloads\emailkhoiphuc2.bmp')
				Sleep(2000)
				$linkdownload=FileReadLine(@ScriptDir&'\checkupdategmailkhoiphuc2.txt',2)
				Sleep(1000)
				_GetDOSOutput($linkdownload)
				Sleep(10000)
				FileCopy('C:\Users\'&@UserName&'\Downloads\emailkhoiphuc2.bmp','C:\Users\'&@UserName&'\Desktop\csFireFox - 10 sea',1)
                Sleep(1000)

				FileDelete('C:\Users\'&@UserName&'\Downloads\emailkhoiphuc.bmp')
				Sleep(2000)
				$linkdownload=FileReadLine(@ScriptDir&'\checkupdategmailkhoiphuc2.txt',3)
				Sleep(1000)
				_GetDOSOutput($linkdownload)
				Sleep(10000)
				_closeTrinhDuyet(1)
				FileCopy('C:\Users\'&@UserName&'\Downloads\emailkhoiphuc.bmp','C:\Users\'&@UserName&'\Desktop\csFireFox - 10 sea',1)
                Sleep(1000)

			EndIf


            FileDelete('C:\Users\'&@UserName&'\Downloads\videos.bmp')
			Sleep(200)
			FileDelete('C:\Users\'&@UserName&'\Downloads\videos2.bmp')
			Sleep(200)
			FileDelete('C:\Users\'&@UserName&'\Downloads\shorts.bmp')
			Sleep(200)
			FileDelete('C:\Users\'&@UserName&'\Downloads\shorts2.bmp')
			Sleep(200)
            ToolTip('update videos.BMP',0,0)
			_GetDOSOutput('start firefox "https://github.com/buichung12/IPv6nopass/blob/main/videos.bmp"')
			Sleep(10000)
			WinMove('','',0,0,1366,768)
		    Sleep(2000)
			MouseClick('left',700, 505,1,20)  ;xoa loi
		    Sleep(2000)
	    	MouseClick('left',1305, 415,1,20)
		    Sleep(2000)
		    MouseClick('left',1305, 445,1,20)
		    Sleep(5000)
			ToolTip('update videos2.BMP',0,0)
			_GetDOSOutput('start firefox "https://github.com/buichung12/IPv6nopass/blob/main/videos2.bmp"')
			Sleep(10000)
			Sleep(2000)
	    	MouseClick('left',1305, 415,1,20)
		    Sleep(2000)
		    MouseClick('left',1305, 445,1,20)
		    Sleep(5000)
			_closeTrinhDuyet(2)

			ToolTip('update shorts.BMP',0,0)
			_GetDOSOutput('start firefox "https://github.com/buichung12/IPv6nopass/blob/main/shorts.bmp"')
			Sleep(10000)
			Sleep(2000)
	    	MouseClick('left',1305, 415,1,20)
		    Sleep(2000)
		    MouseClick('left',1305, 445,1,20)
		    Sleep(5000)
			ToolTip('update shorts2.BMP',0,0)
			_GetDOSOutput('start firefox "https://github.com/buichung12/IPv6nopass/blob/main/shorts2.bmp"')
			Sleep(10000)
			Sleep(2000)
	    	MouseClick('left',1305, 415,1,20)
		    Sleep(2000)
		    MouseClick('left',1305, 445,1,20)
		    Sleep(5000)
			FileCopy('C:\Users\'&@UserName&'\Downloads\videos.bmp','C:\Users\'&@UserName&'\Desktop\csFireFox - 10 sea',1)
		    Sleep(1000)
			FileCopy('C:\Users\'&@UserName&'\Downloads\videos2.bmp','C:\Users\'&@UserName&'\Desktop\csFireFox - 10 sea',1)
		    Sleep(1000)
			FileCopy('C:\Users\'&@UserName&'\Downloads\shorts.bmp','C:\Users\'&@UserName&'\Desktop\csFireFox - 10 sea',1)
		    Sleep(1000)
			FileCopy('C:\Users\'&@UserName&'\Downloads\shorts2.bmp','C:\Users\'&@UserName&'\Desktop\csFireFox - 10 sea',1)
		    Sleep(1000)


			FileDelete('C:\Users\'&@UserName&'\Downloads\tool update code.au3')
		    Sleep(1000)
	        _GetDOSOutput('start chrome "https://github.com/buichung12/IPv6nopass/blob/main/tool%20update%20code.au3"')     ;dowload tool up date
            Sleep(15000)
		    WinMove('','',0,0,1366,768)
		    Sleep(2000)
		    MouseClick('left',1265, 460,1,20)
		    Sleep(2000)
		    MouseClick('left',1265, 421,1,20)
		    Sleep(2000)
		    MouseClick('left',1204, 340,1,20)
		    Sleep(15000)
		    FileCopy('C:\Users\'&@UserName&'\Downloads\tool update code.au3','C:\Users\'&@UserName&'\Desktop\csFireFox - 10 sea',1)
		    Sleep(3000)

            _closeTrinhDuyet(1)

			Sleep(1000)
			ToolTip('kiem tra trinh duyet',0,0)


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
					$check=WinExists('Ch�o m?ng d?n v?i Firefox - Mozilla Firefox')
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


		        _resetMang($i)
	                $check=FileExists('C:\Program Files\BraveSoftware\Brave-Browser\Application\brave.exe')
			If $check=0 Then
				$i=2
				Run('C:\Users\'&@UserName&'\Desktop\trinh duyet\BraveBrowserSetup.exe')
				Sleep(15000)
				For $i20=1 to 50

					$check=WinExists('Welcome to Brave - Brave')
					If $check=1 Then
						Sleep(2000)
						$i20=50
						$check=1
					EndIf
					Sleep(3000)
				Next

				MouseClick('left',200,200,1,20)
				Sleep(5000)
				WinMove('','',0,0,1366,768)
				Sleep(1000)
				_closeTrinhDuyet($i)
			Else
				$check11=1
		    EndIf



					        $check=FileExists("C:\portapps\brave-portable\brave-portable.exe")
			If $check=0 Then

				$i=4
				Run('C:\Users\'&@UserName&'\Desktop\trinh duyet\brave-portable-win64-1.43.89-84-setup.exe')
				Sleep(20000)
				ControlClick('Open File - Security Warning','','[CLASS:Button; INSTANCE:1]')
				Sleep(10000)
				ControlClick('Setup - Brave� Portable','','[CLASS:TNewButton; INSTANCE:1]')
				Sleep(3000)
				ControlClick('Setup - Brave� Portable','','[CLASS:TRadioButton; INSTANCE:2]')
				Sleep(3000)
				ControlClick('Setup - Brave� Portable','','[CLASS:TNewButton; INSTANCE:2]')
				Sleep(3000)
				ControlClick('Setup - Brave� Portable','','[CLASS:TNewButton; INSTANCE:3]')
				Sleep(3000)
				ControlClick('Setup - Brave� Portable','','[CLASS:TNewButton; INSTANCE:3]')
				Sleep(50000)
				For $i20=1 to 120
					$check=WinExists('Setup - Brave� Portable')
					If $check=1 Then $i20=120
                    Sleep(1000)
				Next
				ControlClick('Setup - Brave� Portable','','[CLASS:TNewButton; INSTANCE:3]')
                Sleep(3000)
				;_closeTrinhDuyet($i)
			Else
				$check18=1
		    EndIf

			$check=FileExists("C:\Users\"&@UserName&"\Desktop\trinh duyet\FirefoxPortable\FirefoxPortable.exe")
		    If $check=0 Then

				$i=6
				Run('C:\Users\'&@UserName&'\Desktop\trinh duyet\FirefoxPortable-87-0-English-paf.exe')
				Sleep(15000)

				ControlClick('Mozilla Firefox, Portable Edition | PortableApps.com Installer','&Next >','[CLASS:Button; INSTANCE:2]','left',1,33, 12)
				Sleep(2000)
				ControlClick('Open File - Security Warning','','[CLASS:Button; INSTANCE:1]')
				Sleep(3000)
				ControlClick('Mozilla Firefox, Portable Edition | PortableApps.com Installer','','[CLASS:Button; INSTANCE:2]')
				Sleep(3000)
				ControlClick('Mozilla Firefox, Portable Edition | PortableApps.com Installer ','','[CLASS:Button; INSTANCE:2]')
				Sleep(40000)
				For $i20=1 to 50

					$check=WinExists('Mozilla Firefox, Portable Edition | PortableApps.com Installer ')
					If $check=1 Then
						Sleep(2000)
						ControlClick('Mozilla Firefox, Portable Edition | PortableApps.com Installer ','','[CLASS:Button; INSTANCE:2]')
						Sleep(2000)
						MouseClick('left',831, 601,1,20)
			            Sleep(2000)
						$i20=50
						$check=1
					EndIf
					Sleep(2000)
	            Next
	            Sleep(2000)
				MouseClick('left',831, 601,1,20)
				Sleep(2000)
				WinClose('Mozilla Firefox, Portable Edition | PortableApps.com Installer ')

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
					$check=WinExists('Ch�o m?ng d?n v?i Firefox - Mozilla Firefox')
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

		        $check=FileExists('C:\Users\'&@UserName&'\AppData\Local\Maxthon\Application\Maxthon.exe')
			If $check=0 Then

				$i=3
                Run('C:\Users\'&@UserName&'\Desktop\trinh duyet\maxthon_6.1.3.1000_x64.exe')
				Sleep(15000)
				ControlClick('Open File - Security Warning','&Run','[CLASS:Button; INSTANCE:1]','left',1,43, 14)
				Sleep(5000)
				WinMove('Install','',0,0)
				Sleep(3000)
				MouseClick('left',613, 440,1,20)
				Sleep(3000)
				MouseClick('left',651, 94,1,20)
				Sleep(3000)
				MouseClick('left',619, 448,1,20)
				Sleep(3000)
				MouseClick('left',489, 414,1,20)
				Sleep(60000)

				For $i20=1 to 50
					$check=WinExists('Maxthon')
					If $check=1 Then
						Sleep(2000)
						$i20=50
						$check=1
					EndIf
					$check=WinExists('Maxthon Now - Maxthon Start Page USA, Search, Popular Websites, News, 5 Day Weather, TV Shows, Anime, Music, Free Games - Maxthon')
					If $check=1 Then
						Sleep(2000)
						$i20=50
						$check=1
					EndIf
					Sleep(1000)
				Next

				Sleep(2000)
				MouseClick('left',899, 130,1,20)
				Sleep(10000)
				MouseClick('left',1383, 216,1,20)
				WinClose('Bright VPN - Secure Private & Free VPN Proxy is disabled')
				Sleep(3000)
				MouseClick('left',886, 216,1,20)
				WinClose('Remove "Bright VPN - Secure Private & Free VPN Proxy"?')
				Sleep(3000)
				WinClose('Maxthon')
				Sleep(15000)
				WinMove('','',0,0,1366,768)
				Sleep(1000)
				Sleep(2000)
				_closeTrinhDuyet($i)

			Else
				$check14=1
			EndIf

			 $check=FileExists('C:\Users\'&@UserName&'\AppData\Local\Programs\Opera\launcher.exe')
			If $check=0 Then

				$i=5
                Run('C:\Users\'&@UserName&'\Desktop\trinh duyet\OperaSetup.exe')
				Sleep(40000)
				WinMove('','',0,0)
				Sleep(1000)
				MouseClick('left',963, 582,1,20)
				ControlClick('Opera Installer','Install','[CLASS:Button; INSTANCE:6]','left',1,50, 16)
				Sleep(5000)
				MouseClick('left',550, 355,1,20)
				Sleep(30000)
				For $i20=1 to 50
					$checktd= WinExists('[class:Chrome_WidgetWin_1]')
					Sleep(1000)
					If $checktd=1 Then $i20=50
					$checktd= WinExists('Speed Dial - Opera')
					Sleep(1000)
					If $checktd=1 Then $i20=50
				Next
				Sleep(3000)
				Sleep(2000)
				WinMove('','',0,0,1366,768)
				Sleep(1000)
				_closeTrinhDuyet($i)

			Else
				$check15=1
            EndIf

                 $check=FileExists('C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe')
			If $check=0 Then
				$i=1

                Run('C:\Users\'&@UserName&'\Desktop\trinh duyet\MicrosoftEdgeSetup (1).exe')
				Sleep(60000)
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
				WinClose('Kh�i ph?c trang')
				Sleep(1000)

                WinSetState('Tab mo�i - H�` so 1 - Microsoft? Edge','',@SW_RESTORE)
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
				Sleep(30000)
				WinMove('','',0,0,1366,768)
				Sleep(2000)
				_closeTrinhDuyet($i)

			Else
				$check17=1
            EndIf



                $check=FileExists("C:\Program Files (x86)\SlimBrowser\slimbrowser.exe")
			If $check=0 Then

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


				_closeTrinhDuyet($i)
				Sleep(2000)
			Else
				$check19=1
			EndIf


			 $check=FileExists("C:\Program Files\Google\Chrome\Application\chrome.exe")
		    If $check=0 Then
				$i=10
				Run('C:\Users\'&@UserName&'\Desktop\trinh duyet\ChromeSetup.exe')
				Sleep(40000)
				For $i20=1 to 50
					$check=WinExists('Th? m?i - Google Chrome')
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







          	$check=FileExists('C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe')
				If $check=0 Then MsgBox(0,0,'chua cai dat duoc edge 1',6)

				$check=FileExists('C:\Program Files\BraveSoftware\Brave-Browser\Application\brave.exe')
				If $check=0 Then MsgBox(0,0,'chua cai dat duoc brave 2',6)

				$check=FileExists('C:\Users\'&@UserName&'\AppData\Local\Maxthon\Application\Maxthon.exe')
				If $check=0 Then MsgBox(0,0,'chua cai dat duoc Maxthon 3',6)

				$check=FileExists("C:\portapps\brave-portable\brave-portable.exe")
				If $check=0 Then MsgBox(0,0,'chua cai dat duoc brave por 4',6)

				$check=FileExists('C:\Users\'&@UserName&'\AppData\Local\Programs\Opera\launcher.exe')
				If $check=0 Then MsgBox(0,0,'chua cai dat duoc opera 5',6)

				$check=FileExists("C:\Users\"&@UserName&"\Desktop\trinh duyet\FirefoxPortable\FirefoxPortable.exe")
				If $check=0 Then MsgBox(0,0,'chua cai dat duoc firefox por 6',6)

				$check=FileExists("C:\Program Files (x86)\Mozilla Firefox\firefox.exe")
                $check2=FileExists("C:\Program Files\Mozilla Firefox\firefox.exe")
				If $check=0 And $check2=0 Then MsgBox(0,0,'chua cai dat duoc firefox.exe 7',6)

				$check=FileExists("C:\Users\"&@UserName&"\AppData\Local\Chromium\Application\chrome.exe")
				If $check=0  Then MsgBox(0,0,'chua cai dat duoc chromium 8',6)

				$check=FileExists("C:\Program Files\Google\Chrome\Application\chrome.exe")
			    If $check=0 Then MsgBox(0,0,'chua cai dat duoc chrome 10',6)

				;$check=FileExists("C:\Program Files (x86)\CocCoc\Browser\Application\browser.exe")
			    ;If $check=0 Then MsgBox(0,0,'chua cai dat duoc coc coc')

				;$check=FileExists('C:\Users\'&@UserName&'\AppData\Local\Chromium\Application\chrome.exe')
				;If $check=0 Then MsgBox(0,0,'chua cai dat duoc chromrnium')
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
		For $i=1 to 10
                $check=0

				  ToolTip('check dang nhap 	'&$i,0,0)
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
					$pixcel2=PixelSearch(18, 130,206, 263,0x1A73E8)
					Sleep(1000)
					If IsArray($pixcel) or IsArray($pixcel2) Then
						$check=1
						$i20=17
						$i2=2
					EndIf
						Sleep(1000)
				Next


				If $check=0 Then

					If $i=1 Then
			         	MouseClick('left',600,60,1,20)
				        Sleep(2000)
			        	Send('edge://settings/resetProfileSettings',1)
				        Sleep(1000)
				        Send('{enter}')
				        Sleep(4000)
				        MouseClick('left',583, 500,1,20)
				        Sleep(2000)
				        MouseClick('left',591, 538,1,20)
				        Sleep(5000)
				        _closeTrinhDuyet($i)

					EndIf

					If $i=2 Then

			        	MouseClick('left',847, 266,1,20)
			        	Sleep(2000)
			        	MouseClick('left',600,60,1,20)
			         	Sleep(2000)
			        	Send('brave://settings/clearBrowserData',1)
			        	Sleep(1000)
			        	Send('{enter}')
			         	Sleep(4000)
			        	MouseClick('left',675, 241,1,20)
				        Sleep(2000)
			        	MouseClick('left',604, 290,1,20)
			         	Sleep(2000)
						Send('{DOWN}')
						Sleep(500)
						Send('{DOWN}')
						Sleep(500)
						Send('{DOWN}')
						Sleep(500)
						Send('{DOWN}')
						Sleep(500)
						Send('{DOWN}')
						Sleep(500)
						Send("{enter}")
						Sleep(2000)
						$pixcel=PixelSearch(435, 521,474, 562,0xFF4530)
					    If not IsArray($pixcel) Then
							    MouseClick('left',455, 539,1,20)
						        Sleep(3000)
				    	EndIf

						MouseClick('left',872, 625,1,20)
			         	Sleep(1000)
						MouseClick('left',872, 655,1,20)
			         	Sleep(4000)
						MouseClick('left',600,60,1,20)
						Sleep(2000)
						Send('brave://settings/resetProfileSettings?origin=userclick',1)
						Sleep(1000)
						Send('{enter}')
						Sleep(4000)
						MouseClick('left',853, 520,1,20)
						Sleep(1000)
						MouseClick('left',853, 550,1,20)
			        	Sleep(5000)
			        	_closeTrinhDuyet($i)
					EndIf

					If $i=3 Then
						MouseClick('left',600,60,1,20)
						Sleep(2000)
						Send('mx://settings/clearBrowserData',1)
						Sleep(1000)
						Send('{enter}')
						Sleep(4000)
						MouseClick('left',641, 343,1,20)
						Sleep(2000)
						Send('{DOWN}')
						Sleep(500)
						Send('{DOWN}')
						Sleep(500)
						Send('{DOWN}')
						Sleep(500)
						Send('{DOWN}')
						Sleep(500)
						Send('{enter}')
						Sleep(2000)
						MouseClick('left',479, 502,1,20)
						Sleep(2000)
						MouseClick('left',477, 529,1,20)
						Sleep(2000)
						MouseClick('left',900, 633,1,20)
						Sleep(5000)
						_closeTrinhDuyet($i)

					EndIf

					If $i=4 Then

						Sleep(2000)
						MouseClick('left',600,60,1,20)
						Sleep(2000)
						Send('brave://settings/clearBrowserData',1)
						Sleep(1000)
						Send('{enter}')
						Sleep(4000)
						MouseClick('left',676, 243,1,20)
						Sleep(2000)
						MouseClick('left',617, 292,1,20)
						Sleep(2000)
						Send('{DOWN}')
						Sleep(500)
						Send('{DOWN}')
						Sleep(500)
						Send('{DOWN}')
						Sleep(500)
						Send('{DOWN}')
						Sleep(500)
						Send('{DOWN}')
						Sleep(500)
						Send("{enter}")
						Sleep(2000)
						 $pixcel=PixelSearch(433, 520,482, 559,0xFF4530)
					    If not IsArray($pixcel) Then
							    MouseClick('left',455, 537,1,20)
						        Sleep(2000)
								MouseClick('left',870, 626,1,20)
				            Sleep(1000)
				    	EndIf
						Sleep(5000)
						MouseClick('left',600,60,1,20)
						Sleep(2000)
						Send('brave://settings/reset')
						Sleep(1000)
						Send("{enter}")
						Sleep(3000)
						MouseClick('left',690, 227,1,20)
						Sleep(2000)
						MouseClick('left',858, 522,1,20)
						Sleep(4000)
						MouseClick('left',858, 520,1,20)
						Sleep(4000)
						Send('{enter}')
						Sleep(2000)
						_closeTrinhDuyet($i)


					EndIf

					If $i=5 Then

						MouseClick('left',600,60,1,20)
						Sleep(2000)
						Send('opera://settings/clearBrowserData',1)
						Sleep(1000)
						Send('{enter}')
						Sleep(4000)
						MouseClick('left',818, 248,1,20)
						Sleep(2000)
						MouseClick('left',569, 298,1,20)
						Sleep(2000)
						Send('{DOWN}')
						Sleep(500)
						Send('{DOWN}')
						Sleep(500)
						Send('{DOWN}')
						Sleep(500)
						Send('{DOWN}')
						Sleep(500)
						Send('{DOWN}')
						Sleep(500)
						Send("{enter}")
						Sleep(2000)
						MouseClick('left',456, 589,1,20)
						Sleep(2000)
						MouseClick('left',870, 633,1,20)
						Sleep(5000)
						;MouseClick('left',600,60,1,20)
						;Sleep(2000)
						;Send('opera://settings/resetProfileSettings?origin=userclick',1)
						;Sleep(1000)
						;Send('{enter}')
						;Sleep(4000)
						;MouseClick('left',891, 484,1,20)
						;Sleep(2000)
					;	MouseClick('left',904, 500,1,20)
					;	Sleep(5000)
						_closeTrinhDuyet($i)


					EndIf

					If $i=6 Then

						MouseClick('left',1268, 191,1,20)
						Sleep(2000)
						MouseClick('left',600,60,1,20)
						Sleep(2000)
						Send('about:preferences#privacy',1)
						Sleep(1000)
						Send('{enter}')
						Sleep(6000)
						For $i20=1 to 10
							Send('{tab}')
							Sleep(1000)
						Next
						Sleep(1000)
						Send('{enter}')
						Sleep(2000)
						Send('{enter}')
						Sleep(2000)
						Send('{enter}')
						Sleep(2000)
						MouseClick('left',801, 545,1,20)
						Sleep(2000)
						MouseClick('left',636, 415,1,20)
						Sleep(2000)
						Send('{enter}')
						Sleep(5000)
						_closeTrinhDuyet($i)

					EndIf

					If $i=7 Then

						MouseClick('left',847, 266,1,20)
						Sleep(2000)
						MouseClick('left',600,60,1,20)
						Sleep(2000)
						Send('about:preferences#privacy',1)
						Sleep(1000)
						Send('{enter}')
						Sleep(6000)
						For $i20=1 to 11
							Send('{tab}')
							Sleep(1000)
						Next
						Send('{enter}')
						Sleep(2000)
						Send('{enter}')
						Sleep(2000)
						Send('{enter}')
						Sleep(5000)
						_closeTrinhDuyet($i)


					EndIf

					If $i=8 Then

						MouseClick('left',1334, 136,1,20)
						Sleep(2000)
						MouseClick('left',1334, 101,1,20)
						Sleep(2000)
						MouseClick('left',1333, 102,1,20)
						Sleep(2000)
						MouseClick('left',600,60,1,20)
						Sleep(2000)
						Send('chrome://settings/clearBrowserData',1)
						Sleep(1000)
						Send('{enter}')
						Sleep(4000)
						MouseClick('left',802, 243,1,20)
						Sleep(2000)
						MouseClick('left',576, 293,1,20)
						Sleep(2000)
						Send('{DOWN}')
						Sleep(1000)
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
						$pixcel=PixelSearch(432, 522,477, 567,0x1A73E8)
					    If not IsArray($pixcel) Then
							    MouseClick('left',455, 540,1,20)
						        Sleep(2000)
				    	EndIf
					     Sleep(1000)
						MouseClick('left',871, 627,1,20)
						Sleep(5000)
						_closeTrinhDuyet($i)


					EndIf

					If $i=9 Then

						MouseClick('left',600,60,1,20)
						Sleep(2000)
						Send('about:preferences#privacy',1)
						Sleep(1000)
						Send('{enter}')
						Sleep(6000)
						For $i20=1 to 16
							Send('{tab}')
							Sleep(1000)
						Next
						Sleep(2000)
						Send('{enter}')
						Sleep(3000)
						Send('{enter}')
						Sleep(3000)
						Send('{enter}')
						Sleep(4000)
						_closeTrinhDuyet($i)

					EndIf

				   If $i=10 Then

                        ControlClick('','','','left',1,1333, 102)
						Sleep(1000)
						MouseClick('left',1335, 134,1,20)
						Sleep(1000)
						MouseClick('left',1333, 102,1,20)
						Sleep(1000)
						MouseClick('left',600,60,1,20)
						Sleep(2000)
						Send('chrome://settings/clearBrowserData',1)
						Sleep(1000)
						Send('{enter}')
						Sleep(4000)
						MouseClick('left',1333, 102,1,20)
						Sleep(1000)
						MouseClick('left',806, 245,1,20)
						Sleep(2000)
						MouseClick('left',619, 292,1,20)
						Sleep(2000)
						Send('{DOWN}')
						Sleep(500)
						Send('{DOWN}')
						Sleep(500)
						Send('{DOWN}')
						Sleep(500)
						Send('{DOWN}')
						Sleep(500)
						Send('{DOWN}')
						Sleep(500)
						Send("{enter}")
						Sleep(2000)
						$pixcel=PixelSearch(434, 522,477, 567,0x1A73E8)
					    If not IsArray($pixcel) Then
							    MouseClick('left',454, 541,1,20)
						        Sleep(2000)
				    	EndIf
					     Sleep(1000)

						MouseClick('left',873, 630,1,20)
						Sleep(5000)
						MouseClick('left',600,60,1,20)
						Sleep(2000)
						Send('chrome://settings/resetProfileSettings',1)
						Sleep(1000)
						Send('{enter}')
						Sleep(4000)
						MouseClick('left',830, 506,1,20)
						Sleep(4000)
						MouseClick('left',830, 536,1,20)
						Sleep(5000)
						_closeTrinhDuyet($i)

					EndIf

					_resetMang($i)
					_khoidongFireFox($i)
                    _loginGmail($i)

				EndIf

				_closeTrinhDuyet($i)

			Next

		Return 	$check4

	EndFunc

    Func _XoaDaTaTrinhDuyet()

			For $i=1 to 10
				_resetMang($i)
				_khoidongFireFox($i)
				  ToolTip('xoa data'&$i,0,0)

				    If $i=1 Then
					;	_khoidongFireFox(1)
			         	MouseClick('left',600,60,1,20)
				        Sleep(2000)
			        	Send('edge://settings/resetProfileSettings',1)
				        Sleep(1000)
				        Send('{enter}')
				        Sleep(4000)
				        MouseClick('left',583, 500,1,20)
				        Sleep(2000)
				        MouseClick('left',591, 538,1,20)
				        Sleep(5000)
				        _closeTrinhDuyet($i)

					EndIf

					If $i=2 Then

					;	 _khoidongFireFox(2)
			        	MouseClick('left',847, 266,1,20)
			        	Sleep(2000)
			        	MouseClick('left',600,60,1,20)
			         	Sleep(2000)
			        	Send('brave://settings/clearBrowserData',1)
			        	Sleep(1000)
			        	Send('{enter}')
			         	Sleep(4000)
			        	MouseClick('left',675, 241,1,20)
				        Sleep(2000)
			        	MouseClick('left',604, 290,1,20)
			         	Sleep(2000)
						Send('{DOWN}')
						Sleep(500)
						Send('{DOWN}')
						Sleep(500)
						Send('{DOWN}')
						Sleep(500)
						Send('{DOWN}')
						Sleep(500)
						Send('{DOWN}')
						Sleep(500)
						Send("{enter}")
						Sleep(2000)
						$pixcel=PixelSearch(435, 521,474, 562,0xFF4530)
					    If not IsArray($pixcel) Then
							    MouseClick('left',455, 539,1,20)
						        Sleep(3000)
				    	EndIf

						MouseClick('left',872, 625,1,20)
			         	Sleep(1000)
						MouseClick('left',872, 655,1,20)
			         	Sleep(4000)
						MouseClick('left',600,60,1,20)
						Sleep(2000)
						Send('brave://settings/resetProfileSettings?origin=userclick',1)
						Sleep(1000)
						Send('{enter}')
						Sleep(4000)
						MouseClick('left',853, 520,1,20)
						Sleep(1000)
						MouseClick('left',853, 550,1,20)
			        	Sleep(5000)
			        	_closeTrinhDuyet($i)
					EndIf

					If $i=3 Then

						;_khoidongFireFox(3)
						MouseClick('left',600,60,1,20)
						Sleep(2000)
						Send('mx://settings/clearBrowserData',1)
						Sleep(1000)
						Send('{enter}')
						Sleep(4000)
						MouseClick('left',641, 343,1,20)
						Sleep(2000)
						Send('{DOWN}')
						Sleep(500)
						Send('{DOWN}')
						Sleep(500)
						Send('{DOWN}')
						Sleep(500)
						Send('{DOWN}')
						Sleep(500)
						Send('{enter}')
						Sleep(2000)
						MouseClick('left',479, 502,1,20)
						Sleep(2000)
						MouseClick('left',477, 529,1,20)
						Sleep(2000)
						MouseClick('left',900, 633,1,20)
						Sleep(5000)
						_closeTrinhDuyet($i)

					EndIf

					If $i=4 Then

					;	_khoidongFireFox(4)
						Sleep(2000)
						MouseClick('left',600,60,1,20)
						Sleep(2000)
						Send('brave://settings/clearBrowserData',1)
						Sleep(1000)
						Send('{enter}')
						Sleep(4000)
						MouseClick('left',676, 243,1,20)
						Sleep(2000)
						MouseClick('left',617, 292,1,20)
						Sleep(2000)
						Send('{DOWN}')
						Sleep(500)
						Send('{DOWN}')
						Sleep(500)
						Send('{DOWN}')
						Sleep(500)
						Send('{DOWN}')
						Sleep(500)
						Send('{DOWN}')
						Sleep(500)
						Send("{enter}")
						Sleep(2000)
						 $pixcel=PixelSearch(433, 520,482, 559,0xFF4530)
					    If not IsArray($pixcel) Then
							    MouseClick('left',455, 537,1,20)
						        Sleep(2000)
								MouseClick('left',870, 626,1,20)
				            Sleep(1000)
				    	EndIf
						Sleep(5000)
						MouseClick('left',600,60,1,20)
						Sleep(2000)
						Send('brave://settings/reset')
						Sleep(1000)
						Send("{enter}")
						Sleep(3000)
						MouseClick('left',690, 227,1,20)
						Sleep(2000)
						MouseClick('left',858, 522,1,20)
						Sleep(4000)
						MouseClick('left',858, 520,1,20)
						Sleep(4000)
						Send('{enter}')
						Sleep(2000)
						_closeTrinhDuyet($i)


					EndIf


					If $i=5 Then

						;_khoidongFireFox(5)
						MouseClick('left',600,60,1,20)
						Sleep(2000)
						Send('opera://settings/clearBrowserData',1)
						Sleep(1000)
						Send('{enter}')
						Sleep(4000)
						MouseClick('left',818, 248,1,20)
						Sleep(2000)
						MouseClick('left',569, 298,1,20)
						Sleep(2000)
						Send('{DOWN}')
						Sleep(500)
						Send('{DOWN}')
						Sleep(500)
						Send('{DOWN}')
						Sleep(500)
						Send('{DOWN}')
						Sleep(500)
						Send('{DOWN}')
						Sleep(500)
						Send("{enter}")
						Sleep(2000)
						MouseClick('left',456, 589,1,20)
						Sleep(2000)
						MouseClick('left',870, 633,1,20)
						Sleep(5000)
						;MouseClick('left',600,60,1,20)
						;Sleep(2000)
						;Send('opera://settings/resetProfileSettings?origin=userclick',1)
						;Sleep(1000)
						;Send('{enter}')
						;Sleep(4000)
						;MouseClick('left',891, 484,1,20)
						;Sleep(2000)
					;	MouseClick('left',904, 500,1,20)
					;	Sleep(5000)
						_closeTrinhDuyet($i)


					EndIf

					If $i=6 Then

						;_khoidongFireFox(6)
						MouseClick('left',1268, 191,1,20)
						Sleep(2000)
						MouseClick('left',600,60,1,20)
						Sleep(2000)
						Send('about:preferences#privacy',1)
						Sleep(1000)
						Send('{enter}')
						Sleep(6000)
						For $i20=1 to 10
							Send('{tab}')
							Sleep(1000)
						Next
						Sleep(1000)
						Send('{enter}')
						Sleep(2000)
						Send('{enter}')
						Sleep(2000)
						Send('{enter}')
						Sleep(2000)
						MouseClick('left',801, 545,1,20)
						Sleep(2000)
						MouseClick('left',636, 415,1,20)
						Sleep(2000)
						Send('{enter}')
						Sleep(5000)
						_closeTrinhDuyet($i)

					EndIf

					If $i=7 Then

					;	_khoidongFireFox(7)
						MouseClick('left',847, 266,1,20)
						Sleep(2000)
						MouseClick('left',600,60,1,20)
						Sleep(2000)
						Send('about:preferences#privacy',1)
						Sleep(1000)
						Send('{enter}')
						Sleep(6000)
						For $i20=1 to 11
							Send('{tab}')
							Sleep(1000)
						Next
						Send('{enter}')
						Sleep(2000)
						Send('{enter}')
						Sleep(2000)
						Send('{enter}')
						Sleep(5000)
						_closeTrinhDuyet($i)


					EndIf

					If $i=8 Then

					;	_khoidongFireFox(8)

						MouseClick('left',1334, 136,1,20)
						Sleep(2000)
						MouseClick('left',1334, 101,1,20)
						Sleep(2000)
						MouseClick('left',1333, 102,1,20)
						Sleep(2000)
						MouseClick('left',600,60,1,20)
						Sleep(2000)
						Send('chrome://settings/clearBrowserData',1)
						Sleep(1000)
						Send('{enter}')
						Sleep(4000)
						MouseClick('left',802, 243,1,20)
						Sleep(2000)
						MouseClick('left',576, 293,1,20)
						Sleep(2000)
						Send('{DOWN}')
						Sleep(1000)
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
						$pixcel=PixelSearch(432, 522,477, 567,0x1A73E8)
					    If not IsArray($pixcel) Then
							    MouseClick('left',455, 540,1,20)
						        Sleep(2000)
				    	EndIf
					     Sleep(1000)
						MouseClick('left',871, 627,1,20)
						Sleep(5000)
						_closeTrinhDuyet($i)


					EndIf

					If $i=9 Then

				;		_khoidongFireFox(9)
						MouseClick('left',600,60,1,20)
						Sleep(2000)
						Send('about:preferences#privacy',1)
						Sleep(1000)
						Send('{enter}')
						Sleep(6000)
						For $i20=1 to 16
							Send('{tab}')
							Sleep(1000)
						Next
						Sleep(2000)
						Send('{enter}')
						Sleep(3000)
						Send('{enter}')
						Sleep(3000)
						Send('{enter}')
						Sleep(4000)
						_closeTrinhDuyet($i)

					EndIf

#cs
					If $i=10 Then

						_khoidongFireFox(10)
						MouseClick('left',600,60,1,20)
						Sleep(2000)
						Send('globus://settings/clearBrowserData',1)
						Sleep(1000)
						Send('{enter}')
						Sleep(4000)
						MouseClick('left',700, 265,1,20)
						Sleep(2000)
						MouseClick('left',704, 355,1,20)
						Sleep(2000)
						MouseClick('left',463, 419,1,20)
						Sleep(2000)
						MouseClick('left',463, 448,1,20)
						Sleep(2000)
						MouseClick('left',462, 478,1,20)
						Sleep(2000)
						MouseClick('left',464, 508,1,20)
						Sleep(2000)
						MouseClick('left',781, 559,1,20)
						Sleep(5000)
						_closeTrinhDuyet($i)

					EndIf

#ce

				   If $i=10 Then

				;		_khoidongFireFox(10)


                        ControlClick('','','','left',1,1333, 102)
						Sleep(1000)
						MouseClick('left',1335, 134,1,20)
						Sleep(1000)
						MouseClick('left',1333, 102,1,20)
						Sleep(1000)
						MouseClick('left',600,60,1,20)
						Sleep(2000)
						Send('chrome://settings/clearBrowserData',1)
						Sleep(1000)
						Send('{enter}')
						Sleep(4000)
						MouseClick('left',1333, 102,1,20)
						Sleep(1000)
						MouseClick('left',806, 245,1,20)
						Sleep(2000)
						MouseClick('left',619, 292,1,20)
						Sleep(2000)
						Send('{DOWN}')
						Sleep(500)
						Send('{DOWN}')
						Sleep(500)
						Send('{DOWN}')
						Sleep(500)
						Send('{DOWN}')
						Sleep(500)
						Send('{DOWN}')
						Sleep(500)
						Send("{enter}")
						Sleep(2000)
						$pixcel=PixelSearch(434, 522,477, 567,0x1A73E8)
					    If not IsArray($pixcel) Then
							    MouseClick('left',454, 541,1,20)
						        Sleep(2000)
				    	EndIf
					     Sleep(1000)

						MouseClick('left',873, 630,1,20)
						Sleep(5000)
						MouseClick('left',600,60,1,20)
						Sleep(2000)
						Send('chrome://settings/resetProfileSettings',1)
						Sleep(1000)
						Send('{enter}')
						Sleep(4000)
						MouseClick('left',830, 506,1,20)
						Sleep(4000)
						MouseClick('left',830, 536,1,20)
						Sleep(5000)
						_closeTrinhDuyet($i)

					EndIf

			Next


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

						$IPtho=FileReadLine(@ScriptDir&'\Keytinsoft2.txt',$i)    ; da loc lay 10 IP-- dung c� doi file .txt
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

        Func _dienIpPort($i,$ID,$Pass)
			               Sleep(1000)
					       $var = WinList ("[CLASS:Chrome_WidgetWin_1]")
                           Sleep(1000)

					  For $i10 = 1 to $var[0][0]
					    If BitAnd (WinGetState ($var[$i10][1]), 2) And $var[$i10][0] <> "" Then
							If $i<>9 and $i<>7 and $i<>6 Then
						      Sleep(2000)
							  ControlClick($var[$i10][1],'','','left',1,200, 175)
							  Sleep(2000)
						      ControlClick($var[$i10][1],'','','left',1,500, 60)
						      Sleep(2000)
						      ControlSend($var[$i10][1],'','','google.com')
						      Sleep(1000)
						      ControlSend($var[$i10][1],'','','{enter}')
						      Sleep(5000)

							EndIf
						EndIf
					  Next


					   If $i=1 Then
						  MouseClick('left',600,60,1,20)
						  Sleep(2000)
                          Send('google.com')
						  Sleep(2000)
						  Send('{enter}')
						  Sleep(5000)
				 	    EndIf


						If $i=1 Then
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
						If $i=2 Then
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
						If $i=3 Then
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
						If $i=4 Then
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
						If $i=5 Then
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
								;ControlClick($var[$i10][1],'','','left',1,1265, 345)   ; khong luu MK
								;Sleep(2000)
						EndIf
						If $i=6 Then
							    MouseClick('left',759, 418,1,20)
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
								MouseClick('left',644, 462,1,20)    ;ok
						        Sleep(15000)
								MouseClick('left',759, 418,1,20)
								Sleep(2000)
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
								Sleep(2000)
								MouseClick('left',559,60,1,20)
								Sleep(1000)
								Send('^a')
								Sleep(1000)
								Send('youtube.com')
								Sleep(1000)
								Send('{enter}')
								Sleep(2000)
								MouseClick('left',672, 177,1,20)
								Sleep(1000)
								Send($ID,1)
							    Sleep(2000)
							    Send('{tab}')
							    Sleep(2000)
							    Send($Pass,1)
							    Sleep(2000)
							    Send('{tab}')
							    Sleep(2000)
								Send('{enter}')
								Sleep(2000)
								MouseClick('left',559,60,1,20)
								Sleep(1000)
								Send('^a')
								Sleep(1000)
								Send('youtube.com')
								Sleep(1000)
								Send('{enter}')
								Sleep(2000)
								MouseClick('left',672, 177,1,20)
								Sleep(1000)
								Send($ID,1)
							    Sleep(2000)
							    Send('{tab}')
							    Sleep(2000)
							    Send($Pass,1)
							    Sleep(2000)
							    Send('{tab}')
							    Sleep(2000)
								Send('{enter}')
								Sleep(2000)

								;ControlClick($var[$i10][1],'','','left',1,1129, 413)   ; khong luu MK
								;Sleep(2000)
						EndIf
						If $i=7 Then
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
								MouseClick('left',657, 387,1,20)
								Sleep(1000)
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
								Sleep(1000)
							    MouseClick('left',505, 200,1,20)
							    Sleep(2000)
							    MouseClick('left',834, 242,1,20)
							    Sleep(2000)

						EndIf
						If $i=8 Then
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
								;ControlClick($var[$i10][1],'','','left',1,1165, 368)   ; khong luu MK
								;Sleep(2000)
						EndIf
						If $i=9 Then
							    MouseClick('left',657, 387,1,20)
								Sleep(1000)
								Send('^a')
								Sleep(1000)
							    Send($ID,1)
							    Sleep(1000)
							    Send('{tab}')
							    Sleep(1000)
							    Send($Pass,1)
							    Sleep(1000)
							    Send('{tab}')
							    Sleep(1000)
								Send('{enter}')
						        Sleep(13000)
								WinClose('Check Update')
							    Sleep(1000)
								MouseClick('left',700, 246,1,20)
								Sleep(2000)
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
								Sleep(2000)
								MouseClick('left',559,60,1,20)
								Sleep(1000)
								Send('^a')
								Sleep(1000)
								Send('youtube.com')
								Sleep(1000)
								Send('{enter}')
								Sleep(2000)
								MouseClick('left',700, 246,1,20)
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
								Sleep(2000)
								WinClose('Check Update')
							    Sleep(1000)
								MouseClick('left',657, 387,1,20)
								Sleep(1000)
								Send('^a')
								Sleep(1000)
							    Send($ID,1)
							    Sleep(1000)
							    Send('{tab}')
							    Sleep(1000)
							    Send($Pass,1)
							    Sleep(1000)
							    Send('{tab}')
							    Sleep(1000)
								Send('{enter}')
						        Sleep(13000)
								MouseClick('left',559,60,1,20)
								Sleep(1000)
								Send('^a')
								Sleep(1000)
								Send('youtube.com')
								Sleep(1000)
								Send('{enter}')
								Sleep(2000)
								MouseClick('left',700, 246,1,20)
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
								Sleep(12000)
								MouseClick('left',657, 387,1,20)
								Sleep(1000)
								Send('^a')
								Sleep(1000)
							    Send($ID,1)
							    Sleep(1000)
							    Send('{tab}')
							    Sleep(1000)
							    Send($Pass,1)
							    Sleep(1000)
							    Send('{tab}')
							    Sleep(1000)
								Send('{enter}')
						        Sleep(3000)

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
						If $i=10 Then
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


		EndFunc

		Func _chonProFileFFv6($i5,$i,$vpsso)
                $check=0
	           ; $check2=0
				ProcessClose('WerFault.exe')
          For $i2=1 TO 2
					WinClose('Server Manager')
				    ProcessClose('WerFault.exe')
                    Sleep(1000)

                $var = WinList ("[CLASS:Chrome_WidgetWin_1]")
                Sleep(1000)
				If $var[0][0]=0 Then $var = WinList ("[CLASS:MozillaWindowClass]")
				Sleep(1000)
				If $i=9 Then $var = WinList ("[CLASS:FlashPeakWindowClass]")


			For $i10 = 1 to $var[0][0]
			    If BitAnd (WinGetState ($var[$i10][1]), 2) And $var[$i10][0] <> "" Then

					If $i=5 Then
						ControlClick($var[$i10][1],'','','left',1,426, 30)    ; tat tab thua
						Sleep(1000)
						ControlClick($var[$i10][1],'','','left',1,426, 30)    ; tat tab thua
						Sleep(1000)
					EndIf

					Sleep(1000)
				    ControlClick($var[$i10][1],'','','left',1,600, 60)
				    Sleep(3000)
					ClipPut('https://www.youtube.com/channel_switcher?next=%2Faccount&feature=settings')
					Sleep(1000)
				    Send("^v")
				    Sleep(2000)
				    ControlSend($var[$i10][1],'','','{enter}')
				    Sleep(10000)
					$checkload=0

					For $i20=1 to 20
					        $pixcel=PixelSearch(58,110,245, 170,0xFF0000)   ; xoa loi edge
					    If IsArray($pixcel) Then
						    $i20=20
							$checkload=1
						EndIf
				        Sleep(1000)
					Next

					$pixcel=PixelSearch(500,230,800,500,0xBD79FF)    ; check internet
					If IsArray($pixcel) Then
						Sleep(1000)
                        ControlClick($var[$i10][1],'','','left',1,600, 60)
				        Sleep(2000)
						ClipPut('https://www.youtube.com/channel_switcher?next=%2Faccount&feature=settings')
						Send('^v')
						Sleep(2000)
						Send('{enter}')
						Sleep(10000)
					EndIf

					If $checkload=0 Then
						ControlClick($var[$i10][1],'','','left',1,600, 60)
				        Sleep(2000)
						Send('https://www.youtube.com/channel_switcher?next=%2Faccount&feature=settings')
						Sleep(2000)
						Send('{enter}')
						Sleep(10000)

					EndIf


					If $i=1 Then
							$pixcel=PixelSearch(20, 130,40, 245,0xFF0000)   ; xoa loi edge
					    If IsArray($pixcel) Then
						    Sleep(2000)
							Send('^+,')
							Sleep(1000)
						EndIf
				        Sleep(1000)
					EndIf


					Sleep(8000)

					If $i=1 Then ControlClick($var[$i10][1],'','','left',1,581, 191)
					If $i=2 Then ControlClick($var[$i10][1],'','','left',1,594, 182)
					If $i=3 Then ControlClick($var[$i10][1],'','','left',1,518, 210)
					If $i=4 Then ControlClick($var[$i10][1],'','','left',1,596, 184)
					If $i=5 Then MouseClick('left',506, 200,1,20)
					If $i=6 Then ControlClick($var[$i10][1],'','','left',1,503, 177)
					If $i=7 Then ControlClick($var[$i10][1],'','','left',1,504, 190)
					If $i=8 Then ControlClick($var[$i10][1],'','','left',1,594, 189)
					If $i=9 Then ControlClick($var[$i10][1],'','','left',1,590, 213)
					If $i=10 Then ControlClick($var[$i10][1],'','','left',1,500, 180)
					If $i=10 Then MouseClick('left',500, 190,1,20)

					Sleep(2000)

					$pixcel=PixelSearch(55,110,245, 170,0xFF0000)   ; xoa loi edge
					If IsArray($pixcel) Then
						Sleep(4000)
					    For $i20=1 to $i5+2
						    ControlSend($var[$i10][1],'','','{tab}')
						    Sleep(500)
					    Next

					    Sleep(1000)
					    ControlSend($var[$i10][1],'','','{enter}')
					    Sleep(10000)
							$i2=2
							$check=1
					EndIf


				EndIf
			Next
          Next

		Return $check
   EndFunc

        Func _subIpv6($ThuTukenh,$vpsso,$i,$i5)
				        WinClose('trinh duyet')
					    WinClose('csFireFox - 10 sea')
                        WinClose('Server Manager')
						WinClose('Proxy Client Tinsoft')
						ProcessClose('WerFault.exe')
				$sosub5=0
                $linkvideo=5
				Sleep(1000)

				_xoa1NuaFileDasub($i,$i5)

				$sokenhsub1luot=FileReadLine(@ScriptDir&"\sokenhsub1luot.txt",1)

		  For $iSun2lan=1 to $sokenhsub1luot

			        $checkchaykenhto=0
					$sodonglinkkenhto=_FileCountLines(@ScriptDir&'\linkkenhto.txt')
					$checkchaykenhto=FileReadLine(@ScriptDir&'\linkkenhto.txt',1)

			  For $i21=1 to 7

						For $i23=1 to 5
					        $sodong=_FileCountLines(@ScriptDir&"\linkkenhchaySUB2.txt")
                            $linkkenhtho=FileReadLine(@ScriptDir&"\linkkenhchaySUB2.txt",Random(1,$sodong,1))    ; chu y thay doi
				            Sleep(1000)
						    If 	StringLen($linkkenhtho)>35 Then
					    	    $datalink=StringSplit($linkkenhtho,'	')
				                If IsArray($datalink) Then $linkkenh=$datalink[1]
							    If FileExists(@ScriptDir&"\LinkDaSub"&$i&$i5&".txt")=0 Then  FileWriteLine(@ScriptDir&"\LinkDaSub"&$i&$i5&".txt",'khoi tao')
							    Sleep(1000)
						        $sodonglinkdasub=_FileCountLines(@ScriptDir&"\LinkDaSub"&$i&$i5&".txt")
						        For $i22=1 to $sodonglinkdasub
                                    $linkdasub=FileReadLine(@ScriptDir&"\LinkDaSub"&$i&$i5&".txt",$i22)
                                    If $linkkenh=$linkdasub Then
								        $i22=$sodonglinkdasub
							        EndIf
						        Next

						        If $linkkenh <> $linkdasub Then
							        $i23=5
						        EndIf
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
								    If $sosub3[2]='ngh�n' Then
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
									$sodonglinkkenhto=_FileCountLines(@ScriptDir&'\linkkenhto.txt')
                                    $linkkenh=FileReadLine(@ScriptDir&'\linkkenhto.txt',Random(2,$sodonglinkkenhto,1))
						        EndIf
						  EndIf

                        EndIf

			  Next


			  WinSetState('Proxy Client Tinsoft','',@SW_MINIMIZE)
			  Sleep(1000)
			  $var = WinList ("[CLASS:Chrome_WidgetWin_1]")
			  Sleep(1000)
		   	  If $var[0][0]=0 Then $var = WinList ("[CLASS:MozillaWindowClass]")
			  Sleep(1000)
			  If $i=9 Then $var = WinList ("[CLASS:FlashPeakWindowClass]")


			  For $i10 = 1 to $var[0][0]

			    If BitAnd (WinGetState ($var[$i10][1]), 2) And $var[$i10][0] <> "" Then

				    Sleep(Random(1000,3000,1))

					$linkvideo=5

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



					ControlClick($var[$i10][1],'','','left',1,600, 60)
				    Sleep(2000)
					ClipPut($linkkenh)
					Sleep(1000)
				    Send('^v')
					Sleep(1000)
				    ControlSend($var[$i10][1],'','','{enter}')
				    Sleep(10000)
				    WinClose('Restore pages?')
				    WinClose('Kh�i ph?c trang')
				    WinClose('B?n c� mu?n kh�i ph?c trang kh�ng?')
				    WinClose('Install Google Translate extension to translate this page?')
                    WinClose('Manik Ahmed - YouTube - Vivaldi')
				    WinClose('Restore pages?')
				    Sleep(1000)

					If $linkvideo=5 or $linkvideo=0 Then

						$x3=0
				        $y3=0
						$emailkhoiphuc=_ImageSearchArea(@ScriptDir&'\videos.bmp',1,406, 318,831,610,$x3,$y3,1)
				        If $x3>0 Then
					        MouseClick('left',$x3,$y3,1,20)   ; click video
					        Sleep(7000)
							$linkvideo=1
				        Else

					        $emailkhoiphuc=_ImageSearchArea(@ScriptDir&'\shorts.bmp',1,406, 318,831, 610,$x3,$y3,1)
						    If $x3>0 Then
					           MouseClick('left',$x3,$y3,1,20)   ; click shorts
					           Sleep(7000)
							   $linkvideo=2
					        Else
						        $emailkhoiphuc=_ImageSearchArea(@ScriptDir&'\videos2.bmp',1,406, 318,831, 610,$x3,$y3,1)
					            If $x3>0 Then
					               MouseClick('left',$x3,$y3,1,20)   ; click shorts
					               Sleep(7000)
								   $linkvideo=1
						        Else
							        $emailkhoiphuc=_ImageSearchArea(@ScriptDir&'\shorts2.bmp',1,406, 318,831, 610,$x3,$y3,1)
					                If $x3>0 Then
					                   MouseClick('left',$x3,$y3,1,20)   ; click shorts
					                   Sleep(7000)
									   $linkvideo=2
							        EndIf

						        EndIf

				            EndIf

				        EndIf




					EndIf

					$checklink=0
				    For $i20=1 to 10
				          $pixcel=PixelSearch(76,110,146, 166,0xFF0000)
						If IsArray($pixcel) Then
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
						Sleep(10000)
					EndIf


				    Sleep(3000)     ;thoi gian nghi

					If $i=9 Then
						WinMove($var[$i10][1],'',0,0,1355,800)     ; fix loi nut sub phia duoi
					EndIf

					If $linkvideo=0 Then
                         ToolTip("link video "&$iSun2lan&", link trang chu",0,0)
						;Sleep(5000)
						For $i20=1 to 10
				          $pixcel=PixelSearch(76,110,146, 166,0xFF0000)
					       If IsArray($pixcel) Then
							  $i20=20
						   EndIf
						   Sleep(1000)
						Next



                           If $i=5 Then ControlClick($var[$i10][1],'','','left',1,1245, 216)
							Sleep(200)
							ControlClick($var[$i10][1],'','','left',1,586, 448)
					        Sleep(200)
							ControlClick($var[$i10][1],'','','left',1,1165, 370)
					        Sleep(200)
							ControlClick($var[$i10][1],'','','left',1,1165, 390)
					        Sleep(200)
							ControlClick($var[$i10][1],'','','left',1,1165, 312)
					        Sleep(200)
							ControlClick($var[$i10][1],'','','left',1,1165, 230)
					        Sleep(200)
							ControlClick($var[$i10][1],'','','left',1,1245, 207)
							Sleep(200)
							ControlClick($var[$i10][1],'','','left',1,1165, 215)
					        Sleep(200)
							ControlClick($var[$i10][1],'','','left',1,1165, 226)
					        Sleep(200)
							ControlClick($var[$i10][1],'','','left',1,1165, 189)
					        Sleep(200)

							If $i=7 Then ControlClick($var[$i10][1],'','','left',1,1260,208)
							Sleep(100)

							ControlClick($var[$i10][1],'','','left',1,1195, 370)
					        Sleep(100)
							ControlClick($var[$i10][1],'','','left',1,1195, 390)
					        Sleep(100)
							ControlClick($var[$i10][1],'','','left',1,1230, 418)
					        Sleep(100)
							ControlClick($var[$i10][1],'','','left',1,1195, 411)
					        Sleep(100)
							ControlClick($var[$i10][1],'','','left',1,1195, 312)
					        Sleep(100)
							ControlClick($var[$i10][1],'','','left',1,1245, 216)
                            Sleep(100)
							ControlClick($var[$i10][1],'','','left',1,1195, 230)
					        Sleep(100)
							ControlClick($var[$i10][1],'','','left',1,1195, 215)
					        Sleep(100)
							ControlClick($var[$i10][1],'','','left',1,1195, 226)
					        Sleep(100)
							ControlClick($var[$i10][1],'','','left',1,1195, 189)
					        Sleep(100)
							ControlClick($var[$i10][1],'','','left',1,1225, 207)
					        Sleep(100)
							ControlClick($var[$i10][1],'','','left',1,1290,400 )
					        Sleep(100)
							ControlClick($var[$i10][1],'','','left',1,1290,370 )
					        Sleep(100)
							ControlClick($var[$i10][1],'','','left',1,1290,350 )
					        Sleep(100)
							ControlClick($var[$i10][1],'','','left',1,1290,320 )
					        Sleep(100)
							ControlClick($var[$i10][1],'','','left',1,1290,300 )
					        Sleep(100)
							ControlClick($var[$i10][1],'','','left',1,1290,270 )
					        Sleep(100)
							ControlClick($var[$i10][1],'','','left',1,1290,250 )
					        Sleep(100)
							ControlClick($var[$i10][1],'','','left',1,1290,220 )
					        Sleep(100)
							ControlClick($var[$i10][1],'','','left',1,1290,200 )
					        Sleep(100)
							ControlClick($var[$i10][1],'','','left',1,1290,180 )
					        Sleep(100)
							ControlClick($var[$i10][1],'','','left',1,589, 488)
					        Sleep(100)
							ControlClick($var[$i10][1],'','','left',1,592, 468)
					        Sleep(100)
							ControlClick($var[$i10][1],'','','left',1,666, 479)
					        Sleep(100)
							ControlClick($var[$i10][1],'','','left',1,610,390)
					        Sleep(100)
							ControlClick($var[$i10][1],'','','left',1,610, 270)
							Sleep(100)
							ControlClick($var[$i10][1],'','','left',1,610, 333)
					        Sleep(100)
							ControlClick($var[$i10][1],'','','left',1,610, 300)
					        Sleep(100)

							$pixcel=PixelSearch(631, 170,1246, 606,0x0F0F0F)
					        If IsArray($pixcel) Then
							    $i20=20
							    ControlClick($var[$i10][1],'','','left',1,$pixcel[0]+5,$pixcel[1]+5)
								Sleep(100)
						    EndIf

							Sleep(100)
							ControlClick($var[$i10][1],'','','left',1,1165, 148)
							Sleep(100)
							ControlClick($var[$i10][1],'','','left',1,997, 147)

					EndIf


                    If $linkvideo=1 Then

						ToolTip("link video:"&$iSun2lan&", link video",0,0)
                        Sleep(1000)
						MouseMove(742,Random(440,600,1))
						Sleep(1000)
						For $i20=1 to Random(4,20,1)
						   MouseWheel($MOUSE_WHEEL_DOWN,1)
						   Sleep(500)
						Next
						Sleep(2000)
						ControlClick($var[$i10][1],'','','left',1,Random(380,1190,1),Random(215,750,1))  ;xem video
					    Sleep(50)
						ControlClick($var[$i10][1],'','','left',1,Random(380,1190,1),Random(215,750,1))  ;xem video
					    Sleep(50)
						ControlClick($var[$i10][1],'','','left',1,Random(380,1190,1),Random(215,750,1))  ;xem video
					    Sleep(50)
						ControlClick($var[$i10][1],'','','left',1,Random(380,1190,1),Random(215,750,1))  ;xem video
					    Sleep(50)
						ControlClick($var[$i10][1],'','','left',1,Random(380,1190,1),Random(215,750,1))  ;xem video
					    Sleep(50)
						ControlClick($var[$i10][1],'','','left',1,430, 334)  ;xem video
					    Sleep(50)
						ControlClick($var[$i10][1],'','','left',1,Random(380,1190,1),Random(215,750,1))  ;xem video
					    Sleep(50)
						ControlClick($var[$i10][1],'','','left',1,Random(380,1190,1),Random(215,750,1))  ;xem video
					    Sleep(50)
						ControlClick($var[$i10][1],'','','left',1,Random(380,1190,1),Random(215,750,1))  ;xem video
					    Sleep(50)
						ControlClick($var[$i10][1],'','','left',1,Random(380,1190,1),Random(215,750,1))  ;xem video
					    Sleep(50)
						ControlClick($var[$i10][1],'','','left',1,Random(380,1190,1),Random(215,750,1))  ;xem video
					    Sleep(50)


					    Sleep(7000)
					    For $i20=1 to 10
				          $pixcel=PixelSearch(76,90,146, 166,0xFF0000)
					       If IsArray($pixcel) Then
							  $i20=20
						   EndIf
						   Sleep(1000)
						Next

				        Sleep(4000)     ;thoi gian nghi
						$x=0
		                $y=0
		                _ImageSearchArea(@ScriptDir&'\sub.bmp',1,75,600,700,768,$x,$y,1,1)
                        Sleep(1000)

						If $x>0 Then
							MouseClick('left',$x,$y,1,20)
							Sleep(5000)
						EndIf

						If $x=0 Then
							Sleep(2000)
							WinMove($var[$i10][1],'',0,0,1366,800)     ; fix loi nut sub phia duoi
				            Sleep(4000)     ;thoi gian nghi
						    $x=0
		                    $y=0
		                    _ImageSearchArea(@ScriptDir&'\sub.bmp',1,75,600,700,800,$x,$y,1,1)
                            Sleep(1000)

						    If $x>0 Then
							    MouseClick('left',$x,$y,1,20)
							    Sleep(5000)
						    EndIf
						EndIf

						If $x=0 Then
							ControlClick($var[$i10][1],'','','left',1,415, 714) ;sub
						    Sleep(200)
					    	ControlClick($var[$i10][1],'','','left',1,413, 671) ;sub
						    Sleep(200)
						    ControlClick($var[$i10][1],'','','left',1,423, 724) ;sub
						    Sleep(200)
					        ControlClick($var[$i10][1],'','','left',1,368, 685) ;sub
						    Sleep(200)
						    ControlClick($var[$i10][1],'','','left',1,310, 685) ;sub
						    Sleep(200)
						    ControlClick($var[$i10][1],'','','left',1,262, 685) ;sub
						    Sleep(200)
						    ControlClick($var[$i10][1],'','','left',1,368, 630) ;sub
						    Sleep(200)
						    ControlClick($var[$i10][1],'','','left',1,310, 630) ;sub
						    Sleep(200)
						    ControlClick($var[$i10][1],'','','left',1,262, 630) ;sub
						    Sleep(200)
						    ControlClick($var[$i10][1],'','','left',1,368, 700) ;sub
						    Sleep(200)
						    ControlClick($var[$i10][1],'','','left',1,310, 700) ;sub
						    Sleep(200)
						    ControlClick($var[$i10][1],'','','left',1,262, 700) ;sub
						    Sleep(200)
						    ControlClick($var[$i10][1],'','','left',1,368, 750) ;sub
						    Sleep(200)
						    ControlClick($var[$i10][1],'','','left',1,310, 750) ;sub
						    Sleep(200)
						    ControlClick($var[$i10][1],'','','left',1,262, 770) ;sub
						    Sleep(200)
							ControlClick($var[$i10][1],'','','left',1,280, 760) ;sub
						    Sleep(200)
						    ControlClick($var[$i10][1],'','','left',1,368, 760) ;sub
						    Sleep(200)
						    ControlClick($var[$i10][1],'','','left',1,423, 760) ;sub
						    Sleep(200)
						    ControlClick($var[$i10][1],'','','left',1,400, 622) ;sub
						     Sleep(200)
						     ControlClick($var[$i10][1],'','','left',1,257, 751)    ;sub
						     Sleep(200)
						     ControlClick($var[$i10][1],'','','left',1,280, 688)    ;sub
						     Sleep(200)
						     ControlClick($var[$i10][1],'','','left',1,279, 722)    ;sub
						     Sleep(200)
						     ControlClick($var[$i10][1],'','','left',1,320 ,722)    ;sub
						     Sleep(200)
						     ControlClick($var[$i10][1],'','','left',1,320 ,700)    ;sub
						     Sleep(200)
						     ControlClick($var[$i10][1],'','','left',1,320 ,680)    ;sub
						     Sleep(200)
						     ControlClick($var[$i10][1],'','','left',1,320 ,662)    ;sub
						     Sleep(200)
						     ControlClick($var[$i10][1],'','','left',1,279, 700)    ;sub
						     Sleep(200)
						     ControlClick($var[$i10][1],'','','left',1,284, 650)    ;sub
						     Sleep(200)
						     ControlClick($var[$i10][1],'','','left',1,278, 630)    ;sub
						     Sleep(200)

						     ControlClick($var[$i10][1],'','','left',1,440, 700) ;sub
						     Sleep(100)

						EndIf


                    EndIf

                    If $linkvideo=2 Then
                        ToolTip("link video "&$iSun2lan&", link shorts",0,0)
						MouseMove(742,Random(440,600,1))
						Sleep(1000)
						For $i20=1 to Random(4,20,1)
						   MouseWheel($MOUSE_WHEEL_DOWN,1)
						   Sleep(500)
						Next
						Sleep(2000)
						ControlClick($var[$i10][1],'','','left',1,Random(380,1190,1),Random(215,750,1))  ;xem video
					    Sleep(50)
						ControlClick($var[$i10][1],'','','left',1,Random(380,1190,1),Random(215,750,1))  ;xem video
					    Sleep(50)
						ControlClick($var[$i10][1],'','','left',1,Random(380,1190,1),Random(215,750,1))  ;xem video
					    Sleep(50)
						ControlClick($var[$i10][1],'','','left',1,Random(380,1190,1),Random(215,750,1))  ;xem video
					    Sleep(50)
						ControlClick($var[$i10][1],'','','left',1,Random(380,1190,1),Random(215,750,1))  ;xem video
					    Sleep(50)
						ControlClick($var[$i10][1],'','','left',1,Random(380,1190,1),Random(215,750,1))  ;xem video
					    Sleep(50)
						ControlClick($var[$i10][1],'','','left',1,507, 347)  ;xem video
					    Sleep(50)
						ControlClick($var[$i10][1],'','','left',1,Random(380,1190,1),Random(215,750,1))  ;xem video
					    Sleep(50)
						ControlClick($var[$i10][1],'','','left',1,Random(380,1190,1),Random(215,750,1))  ;xem video
					    Sleep(50)
						ControlClick($var[$i10][1],'','','left',1,Random(380,1190,1),Random(215,750,1))  ;xem video
					    Sleep(50)
						ControlClick($var[$i10][1],'','','left',1,Random(380,1190,1),Random(215,750,1))  ;xem video
					    Sleep(50)
					    Sleep(10000)
						For $i20=1 to 10
				          $pixcel=PixelSearch(76,110,146, 166,0xFF0000)
					       If IsArray($pixcel) Then
							  $i20=20
						   EndIf
						   Sleep(1000)
						Next

						$x=0
		                $y=0
		                _ImageSearchArea(@ScriptDir&'\sub.bmp',1,665,600,950,768,$x,$y,1,1)

						If $x>0 Then
							MouseClick('left',$x,$y,1,20)
							Sleep(10000)
						EndIf

						If $x=0 Then

							_ImageSearchArea(@ScriptDir&'\sub2.bmp',1,700,600,940,720,$x,$y,1,1)
							If $x>0 Then
							    MouseClick('left',$x,$y,1,20)
							    Sleep(5000)
							EndIf

						EndIf

						If $x=0 Then
							_ImageSearchArea(@ScriptDir&'\sub2.bmp',1,700,600,955,720,$x,$y,1,1)
							If $x>0 Then
							    MouseClick('left',$x,$y,1,20)
							    Sleep(5000)
							EndIf

						EndIf


                        If $x=0 Then
						    Sleep(200)
						    ControlClick($var[$i10][1],'','','left',1,919, 718)
						    Sleep(200)
						    ControlClick($var[$i10][1],'','','left',1,923, 730)
						    Sleep(200)
						    ControlClick($var[$i10][1],'','','left',1,907, 705)
						    Sleep(200)
						    ControlClick($var[$i10][1],'','','left',1,896, 718)
						    Sleep(200)
						    ControlClick($var[$i10][1],'','','left',1,899, 678)
						    Sleep(200)
						    ControlClick($var[$i10][1],'','','left',1,906, 689)
						    Sleep(200)
						    ControlClick($var[$i10][1],'','','left',1,899, 685)
						    Sleep(200)
						    ControlClick($var[$i10][1],'','','left',1,899, 677)
						    Sleep(200)
						    ControlClick($var[$i10][1],'','','left',1,700,555)
						    Sleep(200)
						    ControlClick($var[$i10][1],'','','left',1,1165, 230)
						    Sleep(200)
						    ControlClick($var[$i10][1],'','','left',1,1165, 411)
							Sleep(200)
						    ControlClick($var[$i10][1],'','','left',1,1165, 312)
						    Sleep(200)
						    ControlClick($var[$i10][1],'','','left',1,1165, 148)
						    Sleep(200)
						    ControlClick($var[$i10][1],'','','left',1,800, 664)
							Sleep(200)
						    ControlClick($var[$i10][1],'','','left',1,700,555)
							Sleep(200)
						    ControlClick($var[$i10][1],'','','left',1,844, 646)

							Sleep(2000)
                        EndIf
					EndIf

					If $linkvideo=3 Then
                        ToolTip("link video truc tiep "&$iSun2lan&", link truc tiep",0,0)
					    Sleep(5000)
					    For $i20=1 to 20
				          $pixcel=PixelSearch(76,110,146, 166,0xFF0000)
					       If IsArray($pixcel) Then
							  $i20=20
						   EndIf
						   Sleep(1000)
						Next

						$x=0
		                $y=0
		                _ImageSearchArea(@ScriptDir&'\sub.bmp',1,75,600,1000,768,$x,$y,1,1)

						If $x>0 Then
							MouseClick('left',$x,$y,1,20)
							Sleep(2000)
						EndIf

                        if $x=0 Then
				            Sleep(4000)     ;thoi gian nghi
						    ControlClick($var[$i10][1],'','','left',1,415, 714) ;sub
						    Sleep(200)
						    ControlClick($var[$i10][1],'','','left',1,413, 671) ;sub
						    Sleep(200)
						    ControlClick($var[$i10][1],'','','left',1,423, 724) ;sub
						    Sleep(200)
					        ControlClick($var[$i10][1],'','','left',1,368, 685) ;sub
						    Sleep(200)
						    ControlClick($var[$i10][1],'','','left',1,310, 685) ;sub
						    Sleep(200)
						    ControlClick($var[$i10][1],'','','left',1,262, 685) ;sub
						    Sleep(200)
						    ControlClick($var[$i10][1],'','','left',1,368, 630) ;sub
						    Sleep(200)
						    ControlClick($var[$i10][1],'','','left',1,310, 630) ;sub
						    Sleep(200)
						    ControlClick($var[$i10][1],'','','left',1,262, 630) ;sub
						    Sleep(200)
						    ControlClick($var[$i10][1],'','','left',1,368, 700) ;sub
						    Sleep(200)
						    ControlClick($var[$i10][1],'','','left',1,310, 700) ;sub
					     	Sleep(200)
						    ControlClick($var[$i10][1],'','','left',1,262, 700) ;sub
						    Sleep(200)
						    ControlClick($var[$i10][1],'','','left',1,368, 750) ;sub
						    Sleep(200)
						    ControlClick($var[$i10][1],'','','left',1,310, 750) ;sub
						    Sleep(200)
						    ControlClick($var[$i10][1],'','','left',1,262, 750) ;sub
						    Sleep(200)
						    ControlClick($var[$i10][1],'','','left',1,400, 622) ;sub
						    Sleep(200)
						    ControlClick($var[$i10][1],'','','left',1,257, 751)    ;sub
						    Sleep(200)
						    ControlClick($var[$i10][1],'','','left',1,280, 688)    ;sub
						    Sleep(200)
						    ControlClick($var[$i10][1],'','','left',1,279, 722)    ;sub
						    Sleep(200)
						    ControlClick($var[$i10][1],'','','left',1,279, 700)    ;sub
						    Sleep(200)
						    ControlClick($var[$i10][1],'','','left',1,284, 650)    ;sub
						    Sleep(200)
						    ControlClick($var[$i10][1],'','','left',1,278, 630)    ;sub
						    Sleep(200)

						    ControlClick($var[$i10][1],'','','left',1,440, 700) ;sub
						    Sleep(200)
                        EndIf
					EndIf

					Sleep(2000)

				EndIf
			  Next

              FileWriteLine(@ScriptDir&"\LinkDaSub"&$i&$i5&".txt",$linkkenh)

		  Next

	    EndFunc

        Func _xoa1NuaFileDasub($i,$i5)

			FileDelete(@ScriptDir&"\LinkTam.txt")
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
								    If $sosub3[2]='ngh�n' Then
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
				    WinClose('Kh�i ph?c trang')
				    WinClose('B?n c� mu?n kh�i ph?c trang kh�ng?')
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
					_closeTrinhDuyet($i)
					;_resetMang($i)
                    WinClose('Proxy Client Tinsoft')
					If $i=1 Then $linkblu="C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe"
					If $i=2 Then $linkblu="C:\Program Files\BraveSoftware\Brave-Browser\Application\brave.exe"
					If $i=3 Then $linkblu='C:\Users\'&@UserName&'\AppData\Local\Maxthon\Application\Maxthon.exe'
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
					Sleep(15000)

					WinClose('Install Google Translate extension to translate this page?')
					WinClose('Restore pages?')
					WinClose('Kh�i ph?c trang')
					WinClose('B?n c� mu?n kh�i ph?c trang kh�ng?')
					WinClose('Default Client')
					WinClose('Update successful')
					Sleep(1000)
					WinClose('Restore pages?')
					WinClose('Default Client')
					WinClose('UC Browser')
					WinClose('Check Update')
					WinClose('Bright VPN - Secure Private & Free VPN Proxy is disabled')
				    WinClose('Remove "Bright VPN - Secure Private & Free VPN Proxy"?')
					Sleep(1000)
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
					EndIf
					If $i=4 Then
						MouseClick('left',852, 510,1,20)  ;tat thong bao update
				        Sleep(7000)
					EndIf
					If $i=1 Then
						MouseClick('left',1328, 696,1,20)  ;tat tanh cong cu
				        Sleep(1000)
						MouseClick('left',880, 118,1,20)  ;tat tanh cong cu
						Sleep(1000)
						Sleep(1000)
						ControlClick('','','','left',1,1330, 103)
						Sleep(2000)
						MouseClick('left',1333,99,1,20)  ;tat tanh cong cu
						Sleep(1000)
						MouseClick('left',1333, 134,1,20)  ;tat tanh cong cu
						Sleep(1000)
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

						WinMove($var[$i10][1],'',0,0,1366,768)
						Sleep(2000)

						If  $i=10 Then
							Sleep(3000)
							$pixcel=PixelSearch(430, 623,1013, 764,0x1A73E8)
					        If IsArray($pixcel) Then
							     MouseClick('left',$pixcel[0]+5, $pixcel[1]+5,1,20)
							     Sleep(3000)
							EndIf
							$pixcel=PixelSearch(430, 623,1013, 764,0x1A73E8)
					        If IsArray($pixcel) Then
							     MouseClick('left',$pixcel[0]+5, $pixcel[1]+5,1,20)
							     Sleep(3000)
							EndIf
							$pixcel=PixelSearch(430, 623,1013, 764,0x1A73E8)
					        If IsArray($pixcel) Then
							     MouseClick('left',$pixcel[0]+5, $pixcel[1]+5,1,20)
							     Sleep(3000)
							EndIf

							ControlClick('','Chrome Legacy Window','[CLASS:Chrome_RenderWidgetHostHWND; INSTANCE:1]','left',1,291, 635)
		                    Sleep(2000)
		                    ControlClick('','Chrome Legacy Window','[CLASS:Chrome_RenderWidgetHostHWND; INSTANCE:1]','left',1,462, 637)
							Sleep(2000)
							MouseClick('left',1300,720,1,20)
							Sleep(3000)
							MouseClick('left',1280,163,1,20)
							Sleep(2000)

						EndIf


						If  $i=9 Then
							WinClose('Check Update')
							Sleep(1000)
							MouseClick('left',805,437,1,20)
							Sleep(2000)
                            ControlClick('','','','left',1,475, 200)
                            Sleep(2000)
                            ControlClick('','','','left',1,800, 243)
	                        Sleep(2000)
							MouseClick('left',503, 200,1,20)
							Sleep(2000)
							MouseClick('left',831, 237,1,20)
							Sleep(2000)
							MouseClick('left',1280,163,1,20)
							Sleep(2000)
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
						EndIf

						If $i=6 Then
							MouseClick('left',1260,208 ,1,20)
							Sleep(1000)
							ControlClick($var[$i10][1],'','','left',1,505, 200)
							Sleep(2000)
							ControlClick($var[$i10][1],'','','left',1,834, 242)
							Sleep(2000)
							MouseClick('left',1280,163,1,20)
							Sleep(2000)
						EndIf

						If $i=5 Then
							MouseClick('left',1280,163,1,20)
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
                           Sleep(2000)
						   MouseClick('left',920, 160,1,20)
						   Sleep(2000)
					       MouseClick('left',1333, 126,1,20)
						   Sleep(2000)
						   MouseClick('left',1333, 135,1,20)
						   Sleep(2000)
						   WinClose('Update successful')
				           Sleep(2000)
						   MouseClick('left',1280,163,1,20)
						   Sleep(2000)
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
					    EndIf

					    If $i=10 Then
							ControlClick('','Chrome Legacy Window','[CLASS:Chrome_RenderWidgetHostHWND; INSTANCE:1]','left',1,291, 635)
		                    Sleep(2000)
		                    ControlClick('','Chrome Legacy Window','[CLASS:Chrome_RenderWidgetHostHWND; INSTANCE:1]','left',1,462, 637)
							Sleep(2000)
							MouseClick('left',1300,720,1,20)
							Sleep(3000)
						EndIf
					    If $i=9 Then ControlClick($var[$i10][1],'','','left',1,478, 23)    ; tat tab thua
					    If $i=8 Then ControlClick($var[$i10][1],'','','left',1,478, 26)    ; tat tab thua
					    If $i=7 Then ControlClick($var[$i10][1],'','','left',1,478, 22)    ; tat tab thua
					    If $i=6 Then ControlClick($var[$i10][1],'','','left',1,479, 26)    ; tat tab thua
					    If $i=5 Then ControlClick($var[$i10][1],'','','left',1,426, 30)    ; tat tab thua
					    If $i=4 Then ControlClick($var[$i10][1],'','','left',1,479, 25)    ; tat tab thua
					    If $i=3 Then ControlClick($var[$i10][1],'','','left',1,515, 24)    ; tat tab thua
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
					    If $i=3 Then ControlClick($var[$i10][1],'','','left',1,515, 24)    ; tat tab thua
					    If $i=2 Then ControlClick($var[$i10][1],'','','left',1,478, 23)    ; tat tab thua
					    If $i=1 Then ControlClick($var[$i10][1],'','','left',1,427, 26)    ; tat tab thua
                        If $i=1 Then ControlClick($var[$i10][1],'','','left',1,512, 27)   ; tat thong bao
					    Sleep(1000)
                      EndIf
					Next
				  EndIf

					WinClose('Install Google Translate extension to translate this page?')
					WinClose('Restore pages?')
					WinClose('Kh�i ph?c trang')
					WinClose('B?n c� mu?n kh�i ph?c trang kh�ng?')
					Sleep(2000)
					WinClose('Default Client')
					ProcessClose('WerFault.exe')
				Return $dangnhap
	    EndFunc

	    Func _khoidongFireFox2($i,$vpsso)
			        $dangnhap=0
			        WinClose('trinh duyet')

					;WinClose('csFireFox - 10 sea')
			        WinClose('Proxy Client Tinsoft')
			        Sleep(2000)
                    WinClose('Server Manager')
					ProcessClose('WerFault.exe')

					_closeTrinhDuyet($i)
					Sleep(2000)

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

                    Sleep(Random(1000,60000,1))

					WinClose('Server Manager')

					If $i=1 Then $linkblu="C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe"
					If $i=2 Then $linkblu="C:\Program Files\BraveSoftware\Brave-Browser\Application\brave.exe"
					If $i=3 Then $linkblu='C:\Users\'&@UserName&'\AppData\Local\Maxthon\Application\Maxthon.exe'
					If $i=4 Then $linkblu='C:\portapps\brave-portable\brave-portable.exe'
					;If $i=4 Then $linkblu='C:\Program Files (x86)\AVAST Software\Browser\Application\AvastBrowser.exe'
					If $i=5 Then $linkblu='C:\Users\'&@UserName&'\AppData\Local\Programs\Opera\launcher.exe'
					;If $i=5 Then $linkblu='C:\Users\'&@UserName&'\AppData\Local\Yandex\YandexBrowser\Application\browser.exe'
					If $i=6 Then $linkblu="C:\Users\"&@UserName&"\Desktop\trinh duyet\FirefoxPortable\FirefoxPortable.exe"
					If $i=7 Then $linkblu="C:\Program Files (x86)\Mozilla Firefox\firefox.exe"
					;If $i=8 Then $linkblu="C:\Program Files (x86)\SeaMonkey\seamonkey.exe"
					If $i=8 Then $linkblu="C:\Users\"&@UserName&"\AppData\Local\Chromium\Application\chrome.exe"
					If $i=9 Then $linkblu="C:\Program Files (x86)\SlimBrowser\slimbrowser.exe"
					If $i=10 Then $linkblu="C:\Program Files\Google\Chrome\Application\chrome.exe"
					;If $i=10 Then $linkblu="C:\Program Files (x86)\Globus\PrivacyBrowser\GlobusPrivacyBrowser.exe"

					Sleep(1000)
					Run( $linkblu,'')
					Sleep(1000)

	                If $i=1 Then
						$linkblu='C:\Program Files\Microsoft\Edge\Application\msedge.exe'
						Run( $linkblu,'')
					EndIf
					If $i=7 Then
						$linkblu='C:\Program Files\Mozilla Firefox\firefox.exe'
						Run( $linkblu,'')
					EndIf
					If $i=6 Then
						$linkblu="C:\Users\"&@UserName&"\AppData\Local\Google\Chrome\Application\chrome.exe"
		        	    Run( $linkblu,'')
					EndIf

					Sleep(10000)

					WinClose('Install Google Translate extension to translate this page?')
					WinClose('Restore pages?')
					WinClose('Kh�i ph?c trang')
					WinClose('B?n c� mu?n kh�i ph?c trang kh�ng?')
					WinClose('Default Client')
					WinClose('Update successful')
					Sleep(1000)
					WinClose('Restore pages?')
					WinClose('Default Client')
					WinClose('UC Browser')
					WinClose('Check Update')
					WinClose('Update successful')
					WinClose('Bright VPN - Secure Private & Free VPN Proxy is disabled')
				    WinClose('Remove "Bright VPN - Secure Private & Free VPN Proxy"?')
					Sleep(1000)

					If $i=5 Then
                        WinMove('','',0,0,1366,768)
						Sleep(2000)
					EndIf

					If  $i=10 Then
							Sleep(3000)
							$pixcel=PixelSearch(430, 623,1013, 764,0x1A73E8)
					        If IsArray($pixcel) Then
							     MouseClick('left',$pixcel[0]+5, $pixcel[1]+5,1,20)
							     Sleep(3000)
							EndIf
							$pixcel=PixelSearch(430, 623,1013, 764,0x1A73E8)
					        If IsArray($pixcel) Then
							     MouseClick('left',$pixcel[0]+5, $pixcel[1]+5,1,20)
							     Sleep(3000)
							EndIf
							$pixcel=PixelSearch(430, 623,1013, 764,0x1A73E8)
					        If IsArray($pixcel) Then
							     MouseClick('left',$pixcel[0]+5, $pixcel[1]+5,1,20)
							     Sleep(3000)
							EndIf

							ControlClick('','Chrome Legacy Window','[CLASS:Chrome_RenderWidgetHostHWND; INSTANCE:1]','left',1,291, 635)
		                    Sleep(2000)
		                    ControlClick('','Chrome Legacy Window','[CLASS:Chrome_RenderWidgetHostHWND; INSTANCE:1]','left',1,462, 637)
							Sleep(2000)
							MouseClick('left',1325,112,1,20)
							Sleep(3000)
							MouseClick('left',1280,163,1,20)
							Sleep(2000)


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
							MouseClick('left',1260,208 ,1,20)
							Sleep(1000)
							ControlClick('','','','left',1,505, 200)
							Sleep(2000)
							ControlClick('','','','left',1,834, 242)
							Sleep(2000)
							MouseClick('left',1280,163,1,20)
							Sleep(2000)
					EndIf

					If $i=4 Then
						MouseClick('left',852, 510,1,20)  ;tat thong bao update
				        Sleep(7000)
						MouseClick('left',1280,163,1,20)
						Sleep(2000)
					EndIf



					If $i=1 Then
						    MouseClick('left',880, 118,1,20)  ;tat tanh cong cu
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
					EndIf

					Sleep(1000)
					$var = WinList ("[CLASS:Chrome_WidgetWin_1]")
                    Sleep(1000)
					If $var[0][0]=0 Then $var = WinList ("[CLASS:MozillaWindowClass]")
					Sleep(1000)
					If $i=9 Then $var = WinList ("[CLASS:FlashPeakWindowClass]")


					For $i10 = 1 to $var[0][0]
					  If BitAnd (WinGetState ($var[$i10][1]), 2) And $var[$i10][0] <> "" Then

						WinSetState($var[$i10][1],'',@SW_RESTORE)
						Sleep(1000)

						If $i=1 Then
						   MouseClick('left',1333,99,1,20)  ;tat tanh cong cu
				           Sleep(1000)
						   Sleep(1000)
							ControlClick($var[$i10][1],'','','left',1,1330, 103)
							Sleep(2000)
							MouseClick('left',1333,99,1,20)  ;tat tanh cong cu
				            Sleep(1000)
							MouseClick('left',1280,163,1,20)
							Sleep(2000)
						EndIf

						If $i=2 Then
						    ControlClick('','','','left',1,528, 202)
							Sleep(1000)
							ControlClick('','','','left',1,789, 266)
							Sleep(1000)
							MouseClick('left',1280,163,1,20)
							Sleep(2000)
					    EndIf

						WinMove($var[$i10][1],'',0,0,1366,768)
						Sleep(2000)


						If  $i=9 Then
							WinClose('Check Update')
							Sleep(1000)
							MouseClick('left',805,437,1,20)
							Sleep(1000)
                            ControlClick('','','','left',1,475, 200)
                            Sleep(1000)
                            ControlClick('','','','left',1,800, 243)
	                        Sleep(1000)
							MouseClick('left',503, 200,1,20)
							Sleep(1000)
							MouseClick('left',831, 237,1,20)
							Sleep(1000)
							MouseClick('left',1280,163,1,20)
							Sleep(2000)
						EndIf


						If $i=8 Then
							Sleep(1000)
							ControlClick($var[$i10][1],'','','left',1,1333, 102)
							Sleep(1000)
							ControlClick($var[$i10][1],'','','left',1,1333, 102)
							Sleep(1000)
							MouseClick('left',1333, 102,1,20)
							Sleep(1000)
							MouseClick('left',1333, 102,1,20)
							Sleep(1000)
							MouseClick('left',1333, 102,1,20)
							Sleep(2000)
							MouseClick('left',1280,163,1,20)

						EndIf


						If $i=7 Then
							Sleep(1000)
							ControlClick($var[$i10][1],'','','left',1,505, 200)
							Sleep(1000)
							ControlClick($var[$i10][1],'','','left',1,834, 242)
							Sleep(1000)
							ControlClick($var[$i10][1],'','','left',1,1300, 200)
							Sleep(1000)
							MouseClick('left',1280,163,1,20)
							Sleep(2000)
						EndIf

					    If $i=6 Then
							ControlClick($var[$i10][1],'','','left',1,1300, 200)
							Sleep(1000)
							ControlClick($var[$i10][1],'','','left',1,1333, 85); tat thong bao
					        Sleep(1000)
							ControlClick($var[$i10][1],'','','left',1,1332, 123); tat thong bao
					        Sleep(1000)
							MouseClick('left',1330, 101,1,20)
							Sleep(1000)
							MouseClick('left',1187, 195,1,20)
							Sleep(1000)
							MouseClick('left',1280,163,1,20)
							Sleep(2000)
						EndIf
						If $i=4 Then
					       ControlClick($var[$i10][1],'','','left',1,725,100)
				           Sleep(1000)
						   MouseClick('left',1280,163,1,20)
							Sleep(2000)
						EndIf

						If $i=4 Then
						   MouseClick('left',725, 132,1,20)  ;tat thong bao update
				           Sleep(1000)

					    EndIf

						If $i=3 Then
					       ControlClick($var[$i10][1],'','','left',1,1333, 126)
					       Sleep(2000)
						   MouseClick('left',920, 160,1,20)
						   Sleep(2000)
					       MouseClick('left',1333, 126,1,20)
						   Sleep(2000)
						   MouseClick('left',1333, 135,1,20)
						   Sleep(2000)
						   WinClose('Update successful')
				           Sleep(2000)
						   MouseClick('left',1280,163,1,20)
							Sleep(2000)
						EndIf

						If $i=2 Then
							MouseClick('left',1334, 981,1,20)
							Sleep(1000)
							MouseClick('left',1333, 97,1,20)
						    Sleep(1000)
					        MouseClick('left',1333, 130,1,20)
						    Sleep(1000)
						    MouseClick('left',1333, 97,1,20)
						   Sleep(1000)
					       ControlClick($var[$i10][1],'','','left',1,1333, 130)
						   MouseClick('left',1280,163,1,20)
							Sleep(2000)
						EndIf

						If $i=1 Then
							 MouseClick('left',880, 118,1,20)  ;tat tanh cong cu
				            Sleep(1000)
							MouseClick('left',1320, 113,1,20)  ;tat tanh cong cu
				            Sleep(1000)
							MouseClick('left',1280,140,1,20)  ;tat cai mac dih
				            Sleep(1000)
							MouseClick('left',1280,170,1,20)  ;tat cai mac dih
				            Sleep(1000)
						    MouseClick('left',1328, 696,1,20)  ;tat tanh cong cu
				            Sleep(1000)
						    ControlClick('','','','left',1,1330, 103)
						    Sleep(1000)
						    MouseClick('left',1333,99,1,20)  ;tat tanh cong cu
					    	Sleep(1000)
						    MouseClick('left',1333, 134,1,20)  ;tat tanh cong cu
						    Sleep(1000)
							MouseClick('left',1280,163,1,20)
							Sleep(2000)
					    EndIf


					    If $i=10 Then
							ControlClick('','Chrome Legacy Window','[CLASS:Chrome_RenderWidgetHostHWND; INSTANCE:1]','left',1,291, 635)
		                    Sleep(2000)
		                    ControlClick('','Chrome Legacy Window','[CLASS:Chrome_RenderWidgetHostHWND; INSTANCE:1]','left',1,462, 637)
							Sleep(2000)
							MouseClick('left',1300,720,1,20)
							Sleep(3000)
							MouseClick('left',1280,163,1,20)
							Sleep(2000)

						EndIf
					    If $i=9 Then ControlClick($var[$i10][1],'','','left',1,478, 23)    ; tat tab thua
					    If $i=8 Then ControlClick($var[$i10][1],'','','left',1,478, 26)    ; tat tab thua
					    If $i=7 Then ControlClick($var[$i10][1],'','','left',1,478, 22)    ; tat tab thua
					    If $i=6 Then ControlClick($var[$i10][1],'','','left',1,479, 26)    ; tat tab thua
					    If $i=5 Then ControlClick($var[$i10][1],'','','left',1,428, 27)    ; tat tab thua
						If $i=5 Then ControlClick($var[$i10][1],'','','left',1,426, 30)    ; tat tab thua
					    If $i=4 Then ControlClick($var[$i10][1],'','','left',1,479, 25)    ; tat tab thua
					    If $i=3 Then ControlClick($var[$i10][1],'','','left',1,515, 24)    ; tat tab thua
					    If $i=2 Then ControlClick($var[$i10][1],'','','left',1,478, 23)    ; tat tab thua
					    If $i=1 Then ControlClick($var[$i10][1],'','','left',1,518, 25)    ; tat tab thua
                        If $i=1 Then ControlClick($var[$i10][1],'','','left',1,515, 27)   ; tat thong bao
					    Sleep(1000)
						If $i=5 Then ControlClick($var[$i10][1],'','','left',1,428, 27)    ; tat tab thua

                     EndIf
					Next

					If $i=9 Then MouseClick('left',1290,200 ,1,20)   ;tat thong bao
					If $i=6 Then MouseClick('left',1260,200 ,1,20)
					If $i=7 Then MouseClick('left',1260,200 ,1,20)
					If $i=1 Then MouseClick('left',1333,99 ,1,20)
					WinClose('Install Google Translate extension to translate this page?')
					WinClose('Restore pages?')
					WinClose('Kh�i ph?c trang')
					WinClose('B?n c� mu?n kh�i ph?c trang kh�ng?')
					WinClose('Default Client')
					ProcessClose('WerFault.exe')
				Return $dangnhap
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
				    $var = WinList ("[CLASS:MozillaWindowClass]")                                                       ;x??o?b? tap
				  For $i10 = 1 to $var[0][0]
					If BitAnd (WinGetState ($var[$i10][1]), 2) And $var[$i10][0] <> "" Then
						ControlSend($var[$i10][1],'','','^w')
						Sleep(100)
					EndIf
				  Next
				Next

			        $var = WinList ("[CLASS:Chrome_WidgetWin_1]")                                                       ;x??o?b? tap
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
				$var = WinList ("[CLASS:MozillaWindowClass]")                                                       ;x??o?b? tap
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
				$a = WinExists('Google Chrome')                                                    ;x??o?b? tap
				For $i20 = 1 to 100
					ProcessClose('chrome.exe')
					Sleep(100)
				Next
				$a = WinExists('Firefox')                                                    ;x??o?b? tap
				If $a=1 Then
				    For $i20 = 1 to 10
					   ControlClick('Firefox','','[CLASS:Button; INSTANCE:1]')
					   Sleep(100)
					Next
				EndIf
				$a = WinExists('Brave')                                                    ;x??o?b? tap
				If $a=1 Then
				    For $i20 = 1 to 10
					   WinClose('Brave')
					   Sleep(100)
					Next
				EndIf
				$a = WinExists('Tr�nh b�o c�o l?i c?a Mozilla')                                                    ;x??o?b? tap
				If $a=1 Then
				    For $i20 = 1 to 10
					   WinClose('Tr�nh b�o c�o l?i c?a Mozilla')
					   Sleep(100)
					Next
				EndIf
				$a = WinExists('��ng Firefox')                                                    ;x??o?b? tap
				If $a=1 Then
				    For $i20 = 1 to 10
					   WinClose('��ng Firefox')
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
				WinClose('Settings')
				Sleep(100)
				ProcessClose('launcher.exe')
				Sleep(100)
				WinClose('Default Host Application')
				Sleep(100)
				ProcessClose('shutdown.exe')
				Sleep(100)
				WinClose('C�i d?t ')
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
				ProcessClose('gAvastBrowser.exe')
                ProcessClose('gbrowser.exe')
				ProcessClose('gmsedge.exe')
				DirRemove('C:\Users\'&@UserName&'\AppData\Roaming\Microsoft\Crypto',1)
				MouseClick('left',1263,887,1,20)
				Sleep(2000)
				MouseMove(1263,830)
				Sleep(10000)
			EndIf

				ProcessClose('msdt.exe')
				Sleep(100)
				ProcessClose('chrome.exe')
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
				_ReduceMemory()
				Sleep(200)


	EndFunc

		Func _requetanotepad($link,$tenTXT)
				$checkrequet=0
					For $i12=1 To 10
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
						FileDelete(@ScriptDir&'/'&$tenTXT)
						Sleep(1000)
						For $i20=1 to $arrydata[0]
							FileWriteLine(@ScriptDir&'/'&$tenTXT,$arrydata[$i20])
						Next
						$checkrequet=1

					Else
						$checkrequet=0

					EndIf
				Return $checkrequet
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
                FileDelete('C:\Users\'&@UserName&'\Downloads\Sub b�n a chung - Trang t�nh1.tsv')
		        Sleep(100)
                FileDelete('C:\Users\'&@UserName&'\Downloads\Sub b�n a chung - Trang t�nh1.tsv')
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
	         	$check= FileExists('C:\Users\'&@UserName&'\Downloads\Sub b�n a chung - Trang t�nh1.tsv')
	            If $check=1 Then $i21=2

			Next

            FileDelete(@ScriptDir&'\'&$tenTXT)
			Sleep(1000)
            $oldFilePath='C:\Users\may13\Downloads\Sub b�n a chung - Trang t�nh1.tsv'
            $newFilePath='C:\Users\may13\Desktop\tong hop tool ho tro firefox\linkchaysubtho.txt'
            If FileExists($oldFilePath) Then
				FileMove($oldFilePath, $newFilePath, 1)
            EndIf
			FileDelete('C:\Users\'&@UserName&'\Downloads\Sub b�n a chung - Trang t�nh1.tsv')

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
	                       ToolTip('dang nhap Gmail so:'&$i,0,0)
						   $e=FileReadLine(@ScriptDir&'\Gmail.txt',$i)    ;l?y ID , pass, mail kh??h?c
						   If not IsString($e) Then
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


			    $check=0
                MouseClick('left',500, 60,1,20)
				;If $i=8 Then MouseClick('left',800, 75,1,20)
                Sleep(2000)
				Send('^a')
				Sleep(2000)
				ClipPut('https://www.youtube.com/account')
			    Sleep(1000)
			    Send('^v')
				Sleep(2000)
				Send('{enter}')
				Sleep(7000)
				For $i20=1 to 20
				    $pixcel=PixelSearch(546, 192,889, 356,0xFBBC05)
					If IsArray($pixcel) Then
						$i20=20
				        Sleep(1000)
					EndIf
					Sleep(1000)
				Next
            If IsArray($pixcel) Then

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

				Sleep(3000)
				MouseClick('left',1016, 363,1,20)
				Sleep(2000)
				MouseClick('left',648, 223,1,20)
				Sleep(3000)
				Send('{tab}')
				Sleep(2000)
				Send($f,1)
				Sleep(1500)
				Send('{enter}')
				Sleep(10000)
				For $i20=1 to 20
				    $pixcel=PixelSearch(322, 259,1000, 527,0x1A73E8)
					If IsArray($pixcel) Then
						$i20=20
				        Sleep(1000)
					EndIf
					Sleep(1000)
				Next
				Sleep(5000)
				MouseClick('left',1016, 363,1,20)
				Sleep(2000)
				MouseClick('left',600, 244,1,20)
				Sleep(3000)
				Send('{tab}')
				Sleep(2000)
				Send('{tab}')
				Sleep(3000)
				Send($g,1)
				Sleep(1500)
				Send('{enter}')
                Sleep(4000)
                For $i20=1 to 10
				    $pixcel=PixelSearch(12, 289,1000, 713,0x1A73E8)
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
				$emailkhoiphuc=_ImageSearchArea(@ScriptDir&'\emailhhoiphuc.bmp',1,409, 506,775, 708,$x3,$y3,1)
				If $x3>0 Then
					MouseClick('left',$x3,$y3,1,20)    ; click Email khoi phuc
					Sleep(10000)
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
				$emailkhoiphuc=_ImageSearchArea(@ScriptDir&'\emailkhoiphuc2.bmp',1,409, 506,775, 708,$x3,$y3,1)
				If $x3>0 Then
					MouseClick('left',$x3,$y3,1,20)   ; click Email khoi phuc
					Sleep(10000)
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
				$emailkhoiphuc=_ImageSearchArea(@ScriptDir&'\emailkhoiphuc.bmp',1,409, 506,775, 708,$x3,$y3,1)
				If $x3>0 Then
					MouseClick('left',$x3,$y3,1,20)    ; click Email khoi phuc
					Sleep(10000)
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
					Sleep(10000)
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
				$emailkhoiphuc=_ImageSearch(@ScriptDir&'\emailhhoiphuc.bmp',1,$x3,$y3,1)
				If $x3>0 Then
					MouseClick('left',$x3,$y3,1,20)    ; click Email khoi phuc
					Sleep(10000)
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
               Sleep(3000)
               #cs
			    If $x3=0 Then      ; neu khong tim thay anh
				   If $i=1 Then MouseClick('left',550,590,1,20)
				   If $i=2 Then MouseClick('left',550,590,1,20)
				   If $i=3 Then MouseClick('left',550,630,1,20)
				   If $i=4 Then MouseClick('left',550,590,1,20)
				   If $i=5 Then MouseClick('left',550,600,1,20)
				   If $i=6 Then MouseClick('left',550,590,1,20)
				   If $i=7 Then MouseClick('left',550,620,1,20)
				   If $i=8 Then MouseClick('left',550,600,1,20)
				   If $i=9 Then MouseClick('left',550,630,1,20)
				   If $i=10 Then MouseClick('left',550,600,1,20)
				   Sleep(10000)
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
                #ce
				If $x3=0 Then      ; neu khong tim thay anh
				    MouseClick('left',668,270,1,20)
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

                   ; MouseClick('left',514,560,1,20)    ; click Email khoi phuc
					;Sleep(5000)
					;Send($h,1)
					;Sleep(1500)
					;Send('{enter}')
					;Sleep(7000)

				If $i=1 Then MouseClick('left',927, 282,1,20)   ;update pass
				If $i=2 Then MouseClick('left',1000, 248,1,20);update pass
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
				If $i=3 Then MouseClick('left',1193, 347,1,20)  ;luu mat khau $1
				If $i=4 Then MouseClick('left',1099, 341,1,20)  ;luu mat khau $1
				If $i=5 Then MouseClick('left',1219, 101,1,20)  ;luu mat khau $1
				If $i=10 Then MouseClick('left',1219, 101,1,20)  ;luu mat khau $1
				If $i=9 Then MouseClick('left',385, 320,1,20)  ;luu mat khau $1
				Sleep(1000)
				MouseClick('left',385, 320,1,20)
				ClipPut($h)
				Sleep(50)
				Send('^v')
				Sleep(1500)
				Send('{enter}')
				Sleep(6000)

				If $i=1 Then MouseClick('left',929, 235,1,20)  ;luu mat khau $1
				If $i=2 Then MouseClick('left',1027, 229,1,20)  ;luu mat khau $1
				If $i=3 Then MouseClick('left',1193, 347,1,20)  ;luu mat khau $1
				If $i=4 Then MouseClick('left',1099, 341,1,20)  ;luu mat khau $1
				If $i=5 Then MouseClick('left',1219, 101,1,20)  ;luu mat khau $1
				If $i=10 Then MouseClick('left',1219, 101,1,20)  ;luu mat khau $1
				If $i=9 Then MouseClick('left',385, 320,1,20)  ;luu mat khau $1
				Sleep(2000)
				If $i=4 Then MouseClick('left',1036, 226,1,20)

				$pixcel=PixelSearch(715, 497,973, 752,0x1A73E8)
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
				Sleep(5000)
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
				Sleep(5000)
				For $i20=1 to 10
					$pixcel=PixelSearch(18, 130,206, 263,0xC2E7FF)
					Sleep(1000)
					$pixcel2=PixelSearch(18, 130,206, 263,0x1A73E8)
					Sleep(1000)
					If IsArray($pixcel) or IsArray($pixcel2) Then
						$check=1
						$i20=17
					EndIf
					Sleep(1000)
				Next
			Else

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
				Sleep(5000)
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
				Sleep(5000)
				For $i20=1 to 10
					$pixcel=PixelSearch(18, 130,206, 263,0xC2E7FF)
					Sleep(1000)
					$pixcel2=PixelSearch(19, 226,61, 384,0x1F1F1F)
					Sleep(1000)
					If IsArray($pixcel) or IsArray($pixcel2) Then
						$check=1
						$i20=17
					EndIf
					Sleep(1000)
				Next

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

        Func _CheckUpdateCode($linknhom)

			_requetGooGleDOC($linknhom,'checkUpdateCode.txt')
			$checkupdatecode=FileReadLine(@ScriptDir&'\checkUpdateCode.txt',1)
			If $checkupdatecode=1 Then
				ToolTip('cho update code',0,0)
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
				ToolTip('update tool update',0,0)
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

Func _ReduceMemory()
	DllCall("psapi.dll", "int", "EmptyWorkingSet", "long", -1)
EndFunc


Func AutoRun()

	EndFunc

    Func _Exit()
	   Exit
	EndFunc   ;==>_Exit
