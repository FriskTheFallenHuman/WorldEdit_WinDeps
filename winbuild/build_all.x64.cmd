@echo off
cls

msbuild msvc\darkradiant_windeps.sln /p:configuration=debug /p:platform=x64
msbuild msvc\darkradiant_windeps.sln /p:configuration=release /p:platform=x64

rem msbuild libgit2\libgit2.sln /p:configuration=debug /p:platform=x64
rem msbuild libgit2\libgit2.sln /p:configuration=release /p:platform=x64

pause
