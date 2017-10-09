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
Description=黄龙v0.6（添加分解垃圾检测白怪）
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

[UIPackage]
UEsDBBQAAgAIAMxeSEtsKjyJjgMAAAgmAAAJABEAVUlQYWNrYWdlVVQNAAfeEdpZ3hHaWd4R2lntWUtPU0EYPbfl0RYsLUJBHlJA1KXujQaIJCb4CK0uTDQpWJVYCik1Qf6Gv4ClcSOJP8CdGxNN3LjUhQtduTDs5HrmPuxAAO/MXLw26SFfB9rOPTPffM8hDhcf3mc/b20PfcE+XEYcu3YSHdJ7licOMkDM+3vXtm3/bbuFpsIvSpt3huKs2ymdlCQlQUlRTlC6KN2UtHv06KFkvXm7LTU2LRawyp868riKKscankEFOVqM/yzrL9/Nbz3Pfbvy0YrDMzDiNq7hAvSRgGX5/LFDvpPZdHl9fvmzWRQxb7CClMc/4PnOUfz+KH9WpL7XUMYNlLDCURW9iDn8WS/2Bp3X5o2+//4v0sK/xdxqbcXA/SDmXzSYb8EMpvNN8frVu68m+1dw2WOZrxt3GvEvtqfmC3pmfqwUWaeERVQ015Bm/Ovy6pSg/DEp/t3BMtYpuivIaOw/LvEvkLWEB7hJPVQUc68f/7u9Zwblb5P4i+TfYN43OH9Ldf/t0vnPsvqoUGqaK+nT4O+Q9t/gn+E5LOGJOr9TL/co6L9z3/kvGepf1OcJBf4E3Bpexj06xQ6aD50R8+8crHMnLV0v5Aul6nq+UK4tPzwm/qmX943m32XkqTH+lPmqAxF/+z2fCmp/Scn+5+l76l631/4z3vOC8qcO9P8C1/GYelDLhoP0/5MQcTg4f5fEP83qf83JATVKlWtQy0I57j8Jty8Pyt8t8c9x71Wz+KOc/0S8uvRn/xVm30dcg9B7VSf+K/On95x/ifqvcw1CDzPOOfiZoGEbh+M89Z9D494rCH+PxD/jPN/1vyB8B9if1afIn5H4TeOHaf1pivnSYrliOt+ggG/2/qVIy687ta+O9TnxR9n/spL93SL/BtkrrMJ1kNbg793HL+qvp9y3zi3MoAa/fF/u3j/pG2CKFuRzDx3m70fcf4V1/3QWwfOPyJd+/R9F/ynipf9/jTD6zzzHMYX99yPU/tMah8hDwflzCLf/HHb8IDj/AKLtPwcRbf95CuH2nyMczyjof0ji3/7+9oXJ/VXU9cOPT7Yt5A1//6nxsKjzbzxi/jDuHyY4jirY3zAa9w8h9J/K8X8E4fafU55PB+UfRaj9pxN/zinwn0a4/ad43qQC/xii7T/ziLb/HIec/1y9r/MUSk4NqrYGnfpzQuKP+v6qhWgxzc6nTh8s0As29ep/ZfublOwvDKjyh41m5v8NUEsBAhcLFAACAAgAzF5IS2wqPImOAwAACCYAAAkACQAAAAAAAAAAAACAAAAAAFVJUGFja2FnZVVUBQAH3hHaWVBLBQYAAAAAAQABAEAAAADGAwAAAAA=


[Script]
roleX = 141
roleY = 265
intX = -1 
intY = -1 
Function MoveMouse()
    MoveTo 200, 100
    LeftClick 1
    MoveTo 200, 100
    LeftClick 1
    Delay 100
End Function

Function checkDead
    IfColor 1240, 846, "0", 0 Then
        KeyPress "Esc", 1
        Delay 200
        FindPic 800,600,900,780,"C:\Pic\EscMap.bmp",0.6,intX,intY
        If intX > 0 And intY > 0 Then 
            MoveTo intX, intY
            Delay 100
            LeftClick 1
            intX = -1 
            intY = -1
            Delay 3000
            FindPic 1000,0,1440,900,"C:\Pic\4.bmp",0.5,intX,intY
            If intX > 0 And intY > 0 Then 
                MoveTo (intX+20), 700
                RightClick 1
                Delay 100
                RightClick 1
                intX = -1 
                intY = -1
            Else 
             	KeyPress "Esc", 1
             	Delay 100
                FindPic 1000,0,1440,900,"C:\Pic\4.bmp",0.5,intX,intY
                If intX > 0 And intY > 0 Then 
                    MoveTo (intX+20), 700
                    RightClick 1
                    Delay 100
                    RightClick 1
                    intX = -1 
                    intY = -1
                End If
            End If
            Delay 2000
            KeyPress "Space", 1
            Delay 200
            KeyPress "Space", 1
            Delay 200
            KeyPress "Space", 1
            Delay 200
            KeyPress "Space", 1
        Else 
            KeyPress "Esc", 1
            Delay 200
            IfColor 1240, 846, "0", 0 Then
                KeyPress "Esc", 1
                Delay 200
                FindPic 800,600,900,780,"C:\Pic\EscMap.bmp",0.6,intX,intY
                If intX > 0 And intY > 0 Then 
                    MoveTo intX, intY
                    Delay 100
                    LeftClick 1
                    intX = -1 
                    intY = -1
                    Delay 3000
                    FindPic 1000,0,1440,900,"C:\Pic\4.bmp",0.5,intX,intY
                    If intX > 0 And intY > 0 Then 
                        MoveTo (intX+20), 700
                        RightClick 1
                        Delay 100
                        RightClick 1
                        intX = -1 
                        intY = -1
                    Else 
                        KeyPress "Esc", 1
             			Delay 100
                        FindPic 1000,0,1440,900,"C:\Pic\4.bmp",0.5,intX,intY
                        If intX > 0 And intY > 0 Then 
                            MoveTo (intX+20), 700
                            RightClick 1
                            Delay 100
                            RightClick 1
                            intX = -1 
                            intY = -1
                        End If
                    End If
                    Delay 2000
                    KeyPress "Space", 1
                    Delay 200
                    KeyPress "Space", 1
                    Delay 200
                    KeyPress "Space", 1
                    Delay 200
                    KeyPress "Space", 1
                End If
            End If
        End If
    End If
End Function

Function Decomposition
    Delay 100
    FindPic 900,400,1200,700,"C:\Pic\decompositioner.bmp",0.5,intX,intY
    If intX > 0 And intY > 0 Then 
        MoveTo intX, intY
        Delay 200
        intX = -1 
        intY = -1
        LeftClick 1
        Delay 200
        FindPic 900,530,1200,700,"C:\Pic\decompositionWord.bmp",0.5,intX,intY
        If intX > 0 And intY > 0 Then
            MoveTo intX, intY
            Delay 200
            LeftClick 1
            Delay 200
            intX = -1 
        	intY = -1
        End If
        KeyPress "A", 1
        Delay 200
        KeyPress "Enter", 1
        Delay 3800
        KeyPress "Esc", 1
        Delay 200
    End If
End Function
Function MoveToMap()
    MoveMouse
    Delay 1000
    MoveMouse
    KeyPress "N", 1
    Delay 100
    FindPic 700,200,1024,768,"C:\Pic\6.bmp",0.5,intX,intY
    If intX > 0 And intY > 0 Then 
        MoveTo intX, intY
        RightClick 1
        Delay 100
        RightClick 1
        intX = -1 
        intY = -1
    Else 
        KeyPress "N", 1
        Delay 100
        FindPic 700,200,1024,768,"C:\Pic\6.bmp",0.5,intX,intY
        If intX > 0 And intY > 0 Then 
            MoveTo intX, intY
            RightClick 1
            Delay 100
            RightClick 1
            intX = -1 
            intY = -1
        End If
    End If
    Delay 6000
    KeyPress "Esc", 1
    Delay 100
    //分解垃圾
    Decomposition 
    Delay 200
    Decomposition
    FindPic 1000,0,1440,900,"C:\Pic\3.bmp",0.5,intX,intY
    If intX > 0 And intY > 0 Then 
        MoveTo intX, 700
        RightClick 1
        Delay 100
        RightClick 1
        intX = -1 
        intY = -1
    Else 
        KeyPress "Esc", 1
        FindPic 1000,0,1440,900,"C:\Pic\3.bmp",0.5,intX,intY
        If intX > 0 And intY > 0 Then 
            MoveTo intX, 700
            RightClick 1
            Delay 100
            RightClick 1
            intX = -1 
            intY = -1
        End If
    End If
    Delay 2000

    FindPic 1000,0,1440,900,"C:\Pic\4.bmp",0.5,intX,intY
    If intX > 0 And intY > 0 Then 
        MoveTo (intX+20), 700
        RightClick 1
        Delay 100
        RightClick 1
        intX = -1 
        intY = -1
    Else 
        FindPic 1000,0,1440,900,"C:\Pic\4.bmp",0.5,intX,intY
        If intX > 0 And intY > 0 Then 
            MoveTo (intX+20), 700
            RightClick 1
            Delay 100
            RightClick 1
            intX = -1 
            intY = -1
        End If
    End If
    Delay 2000
    KeyPress "Space", 1
    Delay 200
    KeyPress "Space", 1
    Delay 200
    KeyPress "Space", 1
    Delay 200
    KeyPress "Space", 1
End Function
Function play()
    //通过space和esc跳过刷图等待
    KeyPress "Space", 1
    Delay 50
    KeyPress "Space", 1
    Delay 50
    KeyPress "Esc", 1
    Delay 50
    KeyPress "Esc", 1
    Delay 50
    KeyPress "Space", 1
    Delay 50
    KeyPress "Esc", 1
    Delay 50
    //释放技能a、s、w、e、r
    KeyPress "S", 1
    Delay 150
    KeyPress "A", 1
    Delay 150
    KeyPress "W", 1
    Delay 150
    KeyPress "E", 1
    Delay 150
    KeyPress "R", 1
    Delay 150
    KeyPress "X", 1
    Delay 150
    KeyPress "X", 1
    Delay 150
    KeyPress "X", 1
    Delay 150
    // 移动动物品
    KeyPress "E", 1
    Delay 100
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
    Delay 150
    KeyPress "X", 1
    Delay 150
    KeyPress "X", 1
    Delay 150
    KeyPress "A", 1
    Delay 100
    KeyPress "S", 1
    Delay 100
    KeyPress "W", 1
    Delay 100
    KeyPress "H", 1
    Delay 150
    KeyPress "Esc", 1
    Delay 100
    KeyPress "X", 1
    Delay 150
    KeyPress "X", 1
    Delay 150
    KeyPress "X", 1
    Delay 150
    KeyPress "X", 1
    Delay 100
    KeyPress "A", 1
    Delay 100
    KeyPress "S", 1
    Delay 100
    KeyPress "E", 1
    Delay 100
    KeyPress "R", 1
    Delay 100
    KeyPress "H", 1
    Delay 150
    KeyPress "Esc", 1
    Delay 100
    KeyPress "X", 1
    Delay 150
    KeyPress "X", 1
    Delay 150
    KeyPress "X", 1
    Delay 150
    KeyPress "X", 1
    Delay 150
    //尝试进入下一次
    KeyPress "F10", 1
End Function
Function clickChoise()
    Delay 500
    KeyPress "Esc", 1
    FindPic 600,600,1024,768,"C:\Pic\choiceRole.bmp",0.5,intX,intY
    If intX > 0 And intY > 0 Then 
        Delay 500
        MoveTo intX, intY
        Delay 200
        LeftClick 1
        Delay 50
        LeftClick 1
        Delay 100
        intX = -1 
        intY = -1
    Else 
        Delay 500
        KeyPress "Esc", 1
        FindPic 600,600,1024,768,"C:\Pic\choiceRole.bmp",0.5,intX,intY
        If intX > 0 And intY > 0 Then 
            Delay 200
            MoveTo intX, intY
            Delay 200
            LeftClick 1
            Delay 50
            LeftClick 1
            Delay 100
            intX = -1 
            intY = -1
        End If
    End If
    Delay 2500
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
    Delay 3000
    ChoiceRole 
End Function
Function checkPL()
    checkPL = True
    IfColor 633, 829, "574530", 0 Then 
        checkPL = False
    End If
End Function
Function checkNew()
    checkNewValue = False
    FindPic 200,50,600,300,"C:\Pic\5.bmp",0.7,intX,intY
    If intX > 0 And intY > 0 Then 
        checkNewValue = True
        intX = -1 
        intY = -1
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
    //TracePrint "changrole"
    KeyPress "F12", 1
    //TracePrint "F12"
    Delay 100
    KeyPress "F12", 1
    //TracePrint "F12"
    Delay 100
    changeRole 
    Delay 5000
    While not (checkNew and checkPL) 
        If not checkPL Then 
            Delay 1000
            MoveMouse
            Delay 100
            KeyPress "F12", 1
            //TracePrint "F12"
            Delay 100
            KeyPress "F12", 1
            //TracePrint "F12"
            Delay 3000
            //TracePrint "change point"
            changePoint
            //TracePrint "changrole"
            changeRole
            Delay 3000
        ElseIf checkPL Then
            MoveMouse
            Delay 100
            KeyPress "F12", 1
            //TracePrint "F12"
            Delay 100
            KeyPress "F12", 1
            //TracePrint "F12"
            Delay 100
            //TracePrint "changrole"
            changeRole
            Delay 3000
        End If
        Delay 1000
    Wend
    //TracePrint "change point"
    changePoint 
    Delay 3000
End Function
Function endRun()
    TracePrint "end play change role"
    For 10
        play 
    Next
    KeyPress "F12", 1
    //TracePrint "F12"
    Delay 200
    KeyPress "F12", 1
    //TracePrint "F12"
    Delay 5000
    changeRoleAndPoint
    Delay 3000
    //TracePrint "Move to map"
    MoveMouse
    MoveToMap 
    Delay 3000
    While (checkNew and  checkPL)
        MoveToMap
    Wend
End Function
Function run()
    If checkPL Then 
        //TracePrint "play"
        KeyPress "Esc", 1
        Delay 100
        If checkPL Then
        	For 8
            	play 
        	Next
        	Delay 100
        	checkDead
        Else 
        	endRun
        End If
    Else 
    	endRun
    End If
    
End Function
Function main()
    While True
        FindPic 700,300,1024,768,"C:\Pic\escPic.bmp",0.5,intX,intY
        If intX > 0 And intY > 0 Then 
            MoveMouse
            KeyPress "Esc", 1
            Delay 200
            intX = -1 
            intY = -1
            run 
        Else 
            intX = -1 
            intY = -1
            run
        End If
    Wend
End Function
changeRoleAndPoint
//TracePrint "Move to map"
MoveMouse 
Delay 1000
MoveToMap 
Delay 3000
While (checkNew and  checkPL)
    MoveToMap
Wend
main
