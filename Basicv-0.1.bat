@echo off & setlocal
title BASIC
set nul=0
goto load

###Load###

:load
set /p file=Enter file name:
< %file%.txt (
set /p line1=
set /p line2=
set /p line3=
set /p line4=
set /p line5=
set /p line6=
)
goto interpreter

###Interpreter###

:interpreter
echo %line1%
echo %line2%
echo %line3%
echo %line4%
echo %line5%
echo %line6%
set /p rr=Enter:
if %rr% == Run goto runL1
if %rr% == Edit goto edit
if %rr% == Exit Exit

###Edit###

:edit




:runL1
cls
set i=%line1%
set i=%i:~0,1%
if %i% == o set ovar=%line1:~2%
if %i% == p echo %line1:~2%
if %i% == x set x=%line1:~2,1%
if %i% == y set y=%line1:~2,1%
if %i% == + set "num1=%line1:~2,1%" & set "num2=%line1:~4,1%"
if %i% == + set "/a num3=%num1%+%num2%"
if %i% == - set "num1=%line1:~2,1%" & set "num2=%line1:~4,1%"
if %i% == - set "/a num3=%num1%-%num2%"
if %i% == f set func=%line:~2%
if %i% == $ set a=1
pause
goto runL2

:runL2
set i=%line2%
set i=%i:~0,1%
if %i% == o set ovar=%line2:~2%
if %i% == p echo %line2:~2%
if %i% == x set x=%line2:~2,1%
if %i% == y set y=%line2:~2,1%
if %i% == + set "num1=%line2:~2,1%" & set "num2=%line2:~4,1%"
if %i% == + set "/a num3=%num1%+%num2%"
if %i% == - set "num1=%line2:~2,1%" & set "num2=%line2:~4,1%"
if %i% == - set "/a num3=%num1%-%num2%"
if %ovar% == x echo %x%
if %ovar% == y echo %y%
goto RunL3

:runL3
set i=%line3%
set i=%i:~0,1%
if %i% == o set ovar=%line3:~2%
if %i% == p echo %line3:~2%
if %i% == x set x=%line3:~2,1%
if %i% == y set y=%line3:~2,1%
if %i% == + set "num1=%line3:~2,1%" & set "num2=%line3:~4,1%"
if %i% == + set "/a num3=%num1%+%num2%"
if %i% == - set "num1=%line3:~2,1%" & set "num2=%line3:~4,1%"
if %i% == - set "/a num3=%num1%-%num2%"
if %ovar% == x echo %x%
if %ovar% == y echo %y%
goto runL4



:runL4
set i=%line4%
set i=%i:~0,1%
if %i% == o set ovar=%line4:~2%
if %i% == p echo %line4:~2%
if %i% == x set x=%line4:~2,1%
if %i% == y set y=%line4:~2,1%
if %i% == + set "num1=%line4:~2,1%" & set "num2=%line4:~4,1%"
if %i% == + set "/a num3=%num1%+%num2%"
if %i% == - set "num1=%line4:~2,1%" & set "num2=%line4:~4,1%"
if %i% == - set "/a num3=%num1%-%num2%"
if %ovar% == x echo %x%
if %ovar% == y echo %y%
goto interpreter
