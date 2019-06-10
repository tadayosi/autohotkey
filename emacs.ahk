#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

ignore_window() {
  global
  ignore_list := ["Chrome_WidgetWin_1"]
  for i, item in ignore_list {
    IfWinActive, ahk_class %item%
      return 1
  }
  return 0
}

; Move
^a::
  Send {Home}
  return

^e::
  Send {End}
  return

^f::
  ;If ignore_window()
  ;  Send %A_ThisHotkey%
  ;Else
  ;  Send {Right}
  ;return
  Send {Right}
  return

^b::
  Send {Left}
  return

^n::
  Send {Down}
  return

^p::
  Send {Up}
  return

; Edit
^d::
  Send {Del}
  return

^k::
  Send {ShiftDown}{End}{ShiftUp}
  Sleep, 50
  Send ^x
  return
