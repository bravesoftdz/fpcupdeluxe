@ECHO OFF
REM ###############################################
REM               fpcup for windows
REM             cross compile script.
REM ###############################################

ECHO.
ECHO ==============================================
ECHO   Build cross compiler for android arm
ECHO ==============================================
ECHO.

if '%1'=='noconfirm' (
SET wait=--noconfirm
)

if EXIST .\fpcup.exe (
fpcup.exe --ostarget="android" --cputarget="arm" --only="FPCCleanOnly,FPCBuildOnly" %wait%
)

REM ###############################################
REM fpclazup can also be used
REM 
REM if EXIST .\fpclazup.exe (
REM fpclazup.exe --ostarget="android" --cputarget="arm" --only="FPCCleanOnly,FPCBuildOnly" %wait%
REM )
REM 
REM ###############################################

ECHO.
ECHO ==============================================
ECHO   Build cross compiler for android arm ready
ECHO ==============================================
ECHO.
PAUSE