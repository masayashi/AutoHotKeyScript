#Requires AutoHotkey v2.0

#SingleInstance Force           ; 多重起動を禁止
#UseHook
InstallKeybdHook                ; キーボードフックの有効化
ProcessSetPriority "Realtime"   ; プロセス優先順位を最高にする

#Include "IMEv2.ahk"

; 無変換：SC07B
; 変換：SC079
; カナ：SC070

; IME操作
SC079::{
    IME_SET(0)
}

SC070::{
    IME_SET(1)
}

; 無変換キー
SC07B:: Return ; 元の機能をオフ
#HotIf GetKeyState("SC07B", "P")
    i::Up
    k::Down
    j::Left
    l::Right

    a::Home
    e::End

    h::Backspace
    d::Delete
    m::Enter
    g::Esc

    u::!Left
    o::!Right

    p::PgUp
    sc027::PgDn ;セミコロン

    Esc::Reload
    
#HotIf 


