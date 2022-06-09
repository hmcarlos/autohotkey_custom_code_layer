

;###########################
; Double click in middle mouse button activates Task View
;###########################

;~MButton::
;    If (A_TimeSincePriorHotkey < 400) && (A_TimeSincePriorHotkey <> -1) {
;        Send, #{Tab}
;    }
;return



;###########################
; Reverse Shift for Number and simbols top ($%&...etc)
;###########################

*^::°
*1::!
*2::"
*3::·
*4::$
*5::send `%
*6::&
*7::/
*8::(
*9::)
*0::=
*'::?
*¡::¿
*-::_

+1::send 1
+2::send 2
+3::send 3
+4::send 4
+5::send 5
+6::send 6
+7::send 7
+8::send 8
+9::send 9
+0::send 0
+'::send '
+¡::send ¡
+-::send -



;###########################
; Shows pop up for Caps Lock
;###########################

SetCapsLockState, Off
width := A_ScreenWidth - 202
height := A_ScreenHeight - 70
    
~*CapsLock::
    
Sleep, 100
if GetKeyState("CapsLock", "T")
{
    Progress, B1 W200 H28 ZH0 FS11 WS900 x%width% y%height% CTFF0000, CAPS LOCK ON
}
else
{
    Progress, off
}
    
return




;###########################
; change some keys to make web browsing and window changching easier
;###########################


PgDn::^Tab
PgUp::^+Tab
Ins::!Tab