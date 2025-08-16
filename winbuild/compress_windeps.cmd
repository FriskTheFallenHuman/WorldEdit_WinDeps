@echo off
setlocal

:: Check if 7z is installed
where /q 7z
if %errorlevel% neq 0 (
    echo 7z is not installed, trying to locate Nanazip
    where /q Nanazip
    if %errorlevel% neq 0 (
        echo Nanazip is not found, please install either 7z or Nanazip
        exit /b
    ) else (
        echo Nanazip is installed, zipping the folders
		NanaZipC a -r -mmt2 -mx9 -x!*.ilk -x!*.exp -x!*.pdb windeps.7z w32deps/* w64deps/* winincludes/*
        exit /b
    )
)

cd ..\

:: If 7z is installed, zip the folders
7z a -r -mmt2 -mx9 -x!*.ilk -x!*.exp -x!*.pdb windeps.7z w32deps/* w64deps/* winincludes/*