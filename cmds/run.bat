@REM # -------------------- #
@REM # (C)2024 madoodia.com #
@REM # -------------------- #

@echo off

SET ROOT=%1
SET FOLDER=%2
set PROJECT_NAME=%FOLDER:\=_%

@REM cmd directory
powershell -Command "& run %PROJECT_NAME%.exe"
