@echo off
pause
echo �����Ŀ�ļ�
call :RemoveDir .\.settings
call :DeleteFiles .\.buildpath .\.gitignore .\.project 
echo �������ļ�
call :DeleteFiles .\APIMap.txt .\FindAll.cmd .\wiki.d\.pageindex
echo ����ǹ����ļ�
call :DeleteFiles .\googlec5308d0d9cb559ed.html .\FindAll.cmd
pushd local
call :DeleteFiles .\Main.Talk.php .\Queue.php .\Main.FNQ.php .\Main.Flvcache.php
popd
echo �������������ļ�
call :clearDir .\uploads\Acfun2
call :clearDir .\uploads\Bilibili2
call :clearDir .\wiki.d\Acfun2
call :clearDir .\wiki.d\Bilibili2
call :clearDir .\wiki.d\DMR
call :RemoveDir .\wiki.d\Queue
call :RemoveDir .\wiki.d\Site
call :RemoveDir .\wiki.d\SiteAdmin
echo �������ò������ļ�
call :RemoveDir .\static\players\ac
call :RemoveDir .\static\players\ni
call :DeleteFiles .\static\players\mukioplayer.swf
echo �������ļ�
for /R .\ %%a in (*.bak) do (
    call :DeleteFiles  "%%a"
)


PAUSE
GOTO :EOF

:clearDir
echo    ��� "%~f1"
del "%~f1\*.*"
GOTO :EOF

:RemoveDir
echo    �Ƴ� "%~f1"
rd "%~f1" /s /q
GOTO :EOF

:DeleteFiles
if "%~x1"=="" GOTO :EOF
echo    ɾ�� "%~nx1"
del "%~f1" /F /Q
shift /1
GOTO :DeleteFiles