#SingleInstance, Force
SendMode Input

#NoTrayIcon

; ----------------- hotkeys -----------------
Tab::Tab
return

; arrow
Tab & w::up
return
Tab & s::down
return
Tab & a::left
return
Tab & d::right
return

; word/row selection
Tab & i::
    Send {ShiftDown}{Up}{ShiftUp}
return
Tab & k::
    Send {ShiftDown}{Down}{ShiftUp}
return
Tab & j::
    Send {CtrlDown}{ShiftDown}{Left}{ShiftUp}{CtrlUp}
return

Tab & l::
    Send {CtrlDown}{ShiftDown}{Right}{ShiftUp}{CtrlUp}
return

; scroll
!i::
    Send {up 5}
return
!k::
    Send {down 5}
return
!j::
    Send {left 5}
return
!l::
    Send {right 5}
return

; jump
Tab & p::Home
return

Tab & `;::End
return

Tab & Enter::
    Send {End}{Enter} 
return

; prevent false operations
Tab & u::
Tab & o::
Tab & h::
Tab & '::
Tab & [::
return

; ----------------- app functions -----------------
Tab & q::
    MsgBox, 4, Tab-Go, Exit Tab-Go? 
    IfMsgBox Yes
        ExitApp 0
    else
        return
return

Tab & r::
    Reload
return

Tab & ]::
    MsgBox, 0, Tab-Go Working Directory, %A_WorkingDir%
return