@echo off
set /a RNDM=%RANDOM%
set PhotoPATH=
set SplashPATH=

cd %PhotoPATH%

set num=0
setlocal enabledelayedexpansion
for %%f in (*.png) do (
if 9 geq !num! (
    set num=00!num!
    ren "%%f" !num!.png
    set num=!num:~2!
) else (
    if 99 geq !num! (
    set num=0!num!
    ren "%%f" !num!.png
    set num=!num:~1!
    ) else (
            ren "%%f" !num!.png
    )
)
set /a num=num+1
)
endlocal

set /a n=0
for %%f in (%PhotoPATH%\*) do ( if exist %%f (set /a n=n+1) )
set /a OLDRESULT=%RANDOM%*%n%/32769
set /a RESULT=%OLDRESULT%+1
for %%f in (*.png) do call :sub %%f
:sub
set /a b=b+1
if %b% EQU %RESULT% (
copy %1 %SplashPATH%
exit
)