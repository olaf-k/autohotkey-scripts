@ECHO OFF

@REM usage: make [comments]
@REM use the 'comments' argument to preserve ahk comments
@REM otherwise, this 'simply' concatenates files (but batch scripting is always akward)

SET targetfile=myhotkeys.ahk

@REM ; is the default eol param. to get rid of it see https://ss64.org/viewtopic.php?f=2&t=13
SET "eolparam="
IF [%1]==[comments] SET "eolparam=eol^="

@REM creates an new file with the BOM (AHK chokes on utf-8 files otherwise…)
<NUL SET /P = ﻿> %targetfile%

ECHO #SingleInstance Force >> %targetfile%

FOR /F "usebackq delims=¬" %%G IN (`DIR /S /B active private 2^>NUL`) DO (
    FOR /F usebackq^ tokens^=*^ delims^=^ %eolparam% %%H in ("%%G") do (echo %%H)>> %targetfile%
)