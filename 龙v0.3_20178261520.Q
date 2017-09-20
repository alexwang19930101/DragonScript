[General]
SyntaxVersion=2
BeginHotkey=0
BeginHotkeyMod=0
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=0
StopHotkeyMod=0
RunOnce=1
EnableWindow=
MacroID=97085813-637b-49f8-bf8d-035320f8fac9
Description=黄龙v0.3
Enable=1
AutoRun=0
[Repeat]
Type=0
Number=1
[SetupUI]
Type=2
QUI=
[Relative]
SetupOCXFile=
[Comment]

[Script]
roleX = 141
roleY = 265

Function MoveMouse()
	MoveTo 200, 100
	LeftClick 1
	MoveTo 200, 100
	LeftClick 1
	Delay 100
End Function

/*
Function MoveToMap()

	MoveMouse 
	
    For 50
        KeyPressH "Down", 1
        Delay 100
    Next
    
    KeyUpH "Down", 1
    MoveMouse
    Delay 1000
    FindPic 0,0,720,900,"C:\Pic\1.bmp",0.5,intX,intY
    If intX > 0 And intY > 0 Then 
        MoveTo intX, 700
        RightClick 1
        Delay 100
        RightClick 1
    End If
    Delay 2000
    FindPic 0,0,1440,900,"C:\Pic\2.bmp",0.5,intX,intY
    If intX > 0 And intY > 0 Then 
        MoveTo intX, intY
        RightClick 1
        Delay 100
        RightClick 1
    End If
    Delay 2000
    FindPic 1000,0,1440,900,"C:\Pic\3.bmp",0.5,intX,intY
    If intX > 0 And intY > 0 Then 
        MoveTo intX, 700
        RightClick 1
        Delay 100
        RightClick 1
    End If
    Delay 2000
    FindPic 1000,0,1440,900,"C:\Pic\4.bmp",0.5,intX,intY
    If intX > 0 And intY > 0 Then 
        MoveTo (intX+20), 700
        RightClick 1
        Delay 100
        RightClick 1
    End If
    RightClick 1
End Function
*/

Function MoveToMap()
	MoveMouse
    Delay 3000
    MoveMouse
    KeyPress "N", 1
    Delay 100
    FindPic 700,200,1024,768,"C:\Pic\6.bmp",0.5,intX,intY
    If intX > 0 And intY > 0 Then 
        MoveTo intX, intY
        RightClick 1
        Delay 100
        RightClick 1
    Else 
        KeyPress "N", 1
        Delay 100
        FindPic 700,200,1024,768,"C:\Pic\6.bmp",0.5,intX,intY
        If intX > 0 And intY > 0 Then 
            MoveTo intX+100, intY+50
            RightClick 1
            Delay 100
            RightClick 1
        End If
    End If
    Delay 6000
    KeyPress "Esc", 1
    Delay 100
    FindPic 1000,0,1440,900,"C:\Pic\3.bmp",0.5,intX,intY
    If intX > 0 And intY > 0 Then 
        MoveTo intX, 700
        RightClick 1
        Delay 100
        RightClick 1
    Else 
        KeyPress "Esc", 1
        FindPic 1000,0,1440,900,"C:\Pic\3.bmp",0.5,intX,intY
        If intX > 0 And intY > 0 Then 
            MoveTo intX, 700
            RightClick 1
            Delay 100
            RightClick 1
        End If
    End If
    
    Delay 2000
    FindPic 1000,0,1440,900,"C:\Pic\4.bmp",0.5,intX,intY
    If intX > 0 And intY > 0 Then 
        MoveTo (intX+20), 700
        RightClick 1
        Delay 100
        RightClick 1
    Else 
        FindPic 1000,0,1440,900,"C:\Pic\4.bmp",0.5,intX,intY
        If intX > 0 And intY > 0 Then 
            MoveTo (intX+20), 700
            RightClick 1
            Delay 100
            RightClick 1
        End If
    End If
    
    RightClick 1
    Delay 1000
    
    KeyPress "Space", 1
	Delay 100
	KeyPress "Space", 1
End Function

Function play()
    //通过space和esc跳过刷图等待
    KeyPress "Space", 1
    Delay 100
    KeyPress "Space", 1
    Delay 100
    KeyPress "Esc", 1
    Delay 100
    KeyPress "Esc", 1
    Delay 100
    KeyPress "Space", 1
    Delay 100
    KeyPress "Esc", 1
    Delay 100
    //释放技能a、s、w、e、r
    KeyPress "S", 1
    Delay 150
    KeyPress "A", 1
    Delay 100
    KeyPress "W", 1
    Delay 150
    KeyPress "E", 1
    Delay 150
    KeyPress "R", 1
    Delay 150
    KeyPress "R", 1
    Delay 150
    KeyPress "A", 1
    Delay 100
    KeyPress "S", 1
    Delay 150
    KeyPress "X", 1
    Delay 150
    KeyPress "X", 1
    Delay 150
    KeyPress "X", 1
    Delay 150
    // 移动动物品
    KeyPress "H", 1
    Delay 150
    //取消多次移动物品冲突
    KeyPress "Esc", 1
    Delay 100
    KeyPress "Space", 1
    Delay 100
    //尝试拾取物品
    KeyPress "X", 1
    Delay 150
    KeyPress "X", 1
    Delay 300
    KeyPress "X", 1
    Delay 150
    KeyPress "X", 1
    Delay 100
    KeyPress "Space", 1
    Delay 150
    KeyPress "X", 1
    Delay 100
    KeyPress "H", 1
    Delay 150
    KeyPress "Esc", 1
    Delay 100
    KeyPress "X", 1
    Delay 150
    KeyPress "A", 1
    Delay 100
    KeyPress "X", 1
    Delay 150
    KeyPress "X", 1
    Delay 150
    KeyPress "H", 1
    Delay 150
    KeyPress "Esc", 1
    Delay 100
    KeyPress "X", 1
    Delay 150
    KeyPress "A", 1
    Delay 100
    KeyPress "X", 1
    Delay 150
    KeyPress "X", 1
    Delay 150
    KeyPress "Esc", 1
    //尝试进入下一次
    KeyPress "F10", 1
End Function


Function clickChoise()
    Delay 200
    KeyPress "Esc", 1
    FindPic 600,600,1024,768,"C:\Pic\choiceRole.bmp",0.5,intX,intY
    If intX > 0 And intY > 0 Then 
        MoveTo intX, intY
        Delay 100
        LeftClick 1
        Delay 100
        LeftClick 1
        Delay 100
    Else 
        Delay 200
        KeyPress "Esc", 1
        FindPic 600,600,1024,768,"C:\Pic\choiceRole.bmp",0.5,intX,intY
        If intX > 0 And intY > 0 Then 
            MoveTo intX, intY
            Delay 100
            LeftClick 1
            Delay 100
            LeftClick 1
            Delay 100
        End If
    End If
    Delay 3000
End Function

Function ChoiceRole
    MoveTo roleX, roleY
    Delay 100
    LeftClick 1
    Delay 100
    LeftClick 1
    Delay 100
    LeftClick 1
    Delay 100
    LeftClick 1
    Delay 100
    
    Delay 4000
End Function

Function changeRole()
    clickChoise 
    Delay 2000
    ChoiceRole 
End Function

Function checkPL()
checkPL = True
    IfColor 631, 829, "434343", 0 Then 
    	checkPL = False
    End If	
End Function


Function checkNew()
    checkNewValue = False
    FindPic 1000,400,1200,700,"C:\Pic\5.bmp",0.7,intX,intY
    If intX > 0 And intY > 0 Then 
        checkNewValue = True    
    End If
    checkNew = checkNewvalue
End Function


Function changePoint()

    If (roleX>957 and roleY<400)  Then 
        roleX = 141
        roleY = 590
    Else 
        roleX = roleX + 183
    End If
	
    If roleX > 1150 Then 
        roleX = 141
        roleY = 265
    End If
End Function
Function changeRoleAndPoint()
    Delay 1000
    MoveMouse
    Delay 100
    TracePrint "changrole"
    KeyPress "F12", 1
    TracePrint "F12"
    Delay 100
    KeyPress "F12", 1
    TracePrint "F12"
    Delay 100
    changeRole 
    Delay 4000
    While not (checkNew and checkPL) 
        If not checkPL Then 
            Delay 1000
            MoveMouse
            Delay 100
            KeyPress "F12", 1
            TracePrint "F12"
            Delay 100
            KeyPress "F12", 1
            TracePrint "F12"
            Delay 3000
            TracePrint "change point"
            changePoint
            TracePrint "changrole"
            changeRole
            Delay 3000
        ElseIf checkPL Then
            MoveMouse
            Delay 100
            KeyPress "F12", 1
            TracePrint "F12"
            Delay 100
            KeyPress "F12", 1
            TracePrint "F12"
            Delay 100
            TracePrint "changrole"
            changeRole
            Delay 3000
        End If
        Delay 1000
    Wend
    TracePrint "change point"
    changePoint 
    Delay 3000
End Function

Function run()
	If checkPL Then 
            TracePrint "play"
            KeyPress "Esc", 1
            Delay 100
            For 5
                play 
            Next
        Else 
            For 15
                play 
            Next
            
        	KeyPress "F12", 1
        	TracePrint "F12"
        	Delay 200
        	
            KeyPress "F12", 1
			TracePrint "F12"
			
			Delay 5000
            
            changeRoleAndPoint
            
            Delay 3000
            TracePrint "Move to map"
            MoveMouse
            MoveToMap 
            Delay 3000
            While (checkNew and  checkPL)
                MoveToMap
            Wend
        End If
End Function

Function main()
    While True
        FindPic 700,300,1024,768,"C:\Pic\escPic.bmp",0.5,intX,intY
        If intX > 0 And intY > 0 Then 
            MoveMouse
            KeyPress "Esc", 1
            Delay 200
            run 
        Else 
            run
        End If
    Wend
End Function


changeRoleAndPoint

TracePrint "Move to map"
MoveMouse 
Delay 1000
MoveToMap 
Delay 3000
While (checkNew and  checkPL)
    MoveToMap
Wend

main
