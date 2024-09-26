@REM # --------------------- #
@REM # (C) 2024 madoodia.com #
@REM # --------------------- #


@ECHO OFF

SET ROOT=%1
SET FOLDER=%2
set PROJECT_NAME=%FOLDER:\=_%

CALL "C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Auxiliary\Build\vcvarsall.bat" x64

pushd "W:"
if exist "build" (
    rmdir /s /q "build"
)

MKDIR "build"
popd
pushd "W:\build"

@REM Second method of building the project
cl -FC -Zi -Fe"W:\bin\%PROJECT_NAME%.exe" "W:\%FOLDER%\main.cpp" -I"W:\%FOLDER%\..\Common" user32.lib gdi32.lib d3d12.lib dxgi.lib d3dcompiler.lib dxguid.lib /link

popd
