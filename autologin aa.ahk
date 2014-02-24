#NoEnv
SetWorkingDir %A_ScriptDir%
CoordMode, Mouse, Window
SendMode Input
#SingleInstance Force
SetTitleMatchMode 2
DetectHiddenWindows On
#WinActivateForce
SetControlDelay 1
SetWinDelay 0
SetKeyDelay -1
SetMouseDelay -1
SetBatchLines -1
#UseHook
#Persistent

falsestart:
SetTitleMatchMode, 2

IfWinExist, ahk_exe archeage.exe
{
    goto, startuem
}
else
    goto, 5
return

startuem:
Connected := DllCall("Wininet.dll\InternetGetConnectedState", "Str", 0x40,"Int",0) 
if Connected = 0
{
    Sleep, 5000
    goto, 99
}
else
     goto, 69
return

69:
SetTitleMatchMode, 2

IfWinExist, ahk_exe archeage.exe
{
    goto, falsestart
}
else
    goto, 5
return

699:
Sleep, 500
CoordMode, Pixel, Window
PixelSearch, FoundX, FoundY, 15, 33, 40, 54, 0x8B6025, 0, Fast RGB ; координаты пикселя и его цвета в окне окне игры(когда уже зашел на сервер)
If ErrorLevel
{
	goto, 5
		Return
}
Sleep, 100
goto, falsestart
Return

5:
WinActivate, ahk_exe archeage.exe
Sleep, 100
WinKill, ahk_exe archeage.exe
Sleep, 1000
WinActivate, Игровой центр@Mail.Ru ahk_class MailRuLoader.TMainForm1
Sleep, 100
WinKill, ahk_exe GameCenter@Mail.Ru.exe
Sleep, 500
goto, start
return 


99:
Connected := DllCall("Wininet.dll\InternetGetConnectedState", "Str", 0x40,"Int",0) 
if Connected = 0
{
    Sleep, 5000
    goto, 99
}
else
     goto, 5
return


start:
Run, C:\Users\Zetree\AppData\Local\Mail.Ru\GameCenter\GameCenter@Mail.Ru.exe  ; путь к лаунчеру мыла
Sleep, 390
WinActivate, Игровой центр@Mail.Ru ahk_class MailRuLoader.TMainForm1
Sleep, 100
IfWinActive, Игровой центр@Mail.Ru ahk_class MailRuLoader.TMainForm1
Sleep, 500
Click, 819, 143 Left, Down    ; координаты кнопки играть
Sleep, 94
Click, 819, 143 Left, Up      ; координаты кнопки играть
Sleep, 100
Click, 819, 143 Left, Down    ; координаты кнопки играть
Sleep, 94
Click, 819, 143 Left, Up      ; координаты кнопки играть 
Sleep, 250
goto, 2xjump
Return

2xjump:
WinActivate, Игровой центр@Mail.Ru ahk_class MailRuLoader.TMainForm1
Sleep, 100
IfWinActive, Игровой центр@Mail.Ru ahk_class MailRuLoader.TMainForm1
Sleep, 100
WinActivate, Войти в игру не удалось ahk_class GameCenterMailRu.TOkForm
Sleep, 100
Send, {Enter}
Sleep, 100
WinActivate, Ошибка авторизации ahk_class GameCenterMailRu.TOkForm
Sleep, 100
Send, {Enter}
Sleep, 100
WinActivate, Игровой центр@Mail.Ru ahk_class MailRuLoader.TMainForm1
Sleep, 100
Click, 819, 143 Left, Down    ; координаты кнопки играть
Sleep, 94
Click, 819, 143 Left, Up      ; координаты кнопки играть
Sleep, 100
Click, 819, 143 Left, Down    ; координаты кнопки играть
Sleep, 94
Click, 819, 143 Left, Up      ; координаты кнопки играть 
Sleep, 250
goto, detect
Return

detect:
Sleep, 1500
SetTitleMatchMode, 2

IfWinExist, ahk_exe archeage.exe
{
    goto, 1   
}
else
    goto, 2xjump
return

1:
WinWait, ahk_exe archeage.exe
Sleep, 5000
WinActivate, ahk_exe archeage.exe
Sleep, 100
goto, 33
Return

33:
Connected := DllCall("Wininet.dll\InternetGetConnectedState", "Str", 0x40,"Int",0) 
if Connected = 0
{
    Sleep, 5000
    goto, 99
}
else
     goto, 3
return

3:
SetTitleMatchMode, 2

IfWinExist, ahk_exe archeage.exe
{
    goto, 8
}
else
    goto, 5
return

8:
Sleep, 500
CoordMode, Pixel, Window
PixelSearch, FoundX, FoundY, 953, 510, 978, 535, 0x4B4147, 0, Fast RGB  ; координаты пикселя и его цвет на логин скрине после роликов
If ErrorLevel
{
	goto, 33
		Return
}
Sleep, 100
goto, 2
Return

2:
WinActivate, ahk_exe archeage.exe
Sleep, 3050
Click, 956, 735 Left, Down   ; координаты кнопки вход
Sleep, 94
Click, 956, 735 Left, Up     ; координаты кнопки вход
Sleep, 94
Click, 956, 735 Left, Down   ; координаты кнопки вход
Sleep, 94
Click, 956, 735 Left, Up     ; координаты кнопки вход
Sleep, 100
goto, 444
Return


444:
Connected := DllCall("Wininet.dll\InternetGetConnectedState", "Str", 0x40,"Int",0) 
if Connected = 0
{
    Sleep, 5000
    goto, 99
}
else
     goto, 44
return

44:
SetTitleMatchMode, 2

IfWinExist, ahk_exe archeage.exe
{
    goto, 4
}
else
    goto, 5
return

4:
Sleep, 500
CoordMode, Pixel, Window
PixelSearch, FoundX, FoundY, 1081, 523, 1120, 551, 0xC2BFAB, 0, Fast RGB ; координаты пикселя и его цвета в окне очереди
If ErrorLevel
{
	goto, dos                           ; нужно доделать
		Return
}
Sleep, 100
goto, 444
Return

dos:
Connected := DllCall("Wininet.dll\InternetGetConnectedState", "Str", 0x40,"Int",0) 
if Connected = 0
{
    Sleep, 5000
    goto, 99
}
else
     goto, dos1
return

dos1:
SetTitleMatchMode, 2

IfWinExist, ahk_exe archeage.exe
{
    goto, dos2
}
else
    goto, 5
return

dos2:
Sleep, 500
CoordMode, Pixel, Window
PixelSearch, FoundX, FoundY, 233, 485, 280, 523, 0x400500, 0, Fast RGB ; координаты пикселя и его цвета в окне персонажа
If ErrorLevel
{
	goto, 5                           ; нужно доделать
		Return
}
Sleep, 100
goto, dos
Return


F12::   ; кнопка выключения скрипта
ExitApp