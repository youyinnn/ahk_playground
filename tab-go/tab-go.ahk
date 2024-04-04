#SingleInstance, Force
SendMode Input

#NoTrayIcon

; ----------------- hotkeys -----------------
Tab::Tab
return

; arrow
Tab & i::up
return
Tab & k::down
return
Tab & j::left
return
Tab & l::right
return

; word/row selection
Tab & w::
    Send {ShiftDown}{Up}{ShiftUp}
return
Tab & s::
    Send {ShiftDown}{Down}{ShiftUp}
return
Tab & a::
    Send {CtrlDown}{ShiftDown}{Left}{ShiftUp}{CtrlUp}
return

Tab & d::
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

; mac os key mapping
!a::
    Send {CtrlDown}{a}{CtrlUp} ; alt+a -> ctrl+a
return 
!c::
    Send {CtrlDown}{c}{CtrlUp} ; alt+c -> ctrl+c
return 
!v::
    Send {CtrlDown}{v}{CtrlUp}
return 
!s::
    Send {CtrlDown}{s}{CtrlUp}
return 
!d::
    Send {CtrlDown}{d}{CtrlUp}
return 
!z::
    Send {CtrlDown}{z}{CtrlUp}
return  
!f::
    Send {CtrlDown}{f}{CtrlUp}
return
!x::
    Send {CtrlDown}{x}{CtrlUp}
return
!+z::
    Send {CtrlDown}{ShiftDown}{z}{ShiftUp}{CtrlUp} ; alt+shift+z -> ctrl+shift+z
return

; jump
Tab & u::Home
return
Tab & o::End
return
Tab & Enter::
    Send {End}{Enter} 
return

; prevent false operations
Tab & p::
Tab & h::
Tab & `;::
Tab & '::
Tab & [::
return

; others
Tab & 8::BackSpace

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