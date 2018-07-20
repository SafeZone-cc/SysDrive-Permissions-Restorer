@echo off
SetLocal EnableExtensions EnableDelayedExpansion

echo.
echo SystemDrive Folder NTFS privileges restorer script by Alex Dragokas (v.1.0)
echo.
echo Please wait ...

cd /d "%~dp0"
prompt ^>^>^> 

if "%~1"=="" (
  echo. 1>&3 2>&4 3>Perm_Log.log 4>&3
  call "%~fs0" 0
  exit /b
)

echo.
echo %date% - %time%
echo.
echo Checking requirements
net session >NUL 2>NUL || (
  echo Admin. privileges required.
  echo Run this bat-file by right mouse click and choose "Run as administrator".
  echo.
  echo Требуются привилегии администратора.
  echo Запустите этот бат-файл правой кнопкой мыши и выберите "Запуск от имени администратора".
  goto log
)

where takeown || (echo takeown.exe utility is not found & goto log)
where icacls  || (echo icacls.exe  utility is not found & goto log)
where find    || (echo find.exe    utility is not found & goto log)

echo OS:
set "bWin10="
set "bWin8="
set "bWin7="
set "bWinVista="
ver
ver |>NUL find "10." && set bWin10=true
ver |>NUL find "6.4" && set bWin10=true
ver |>NUL find "6.3" && set bWin8=true
ver |>NUL find "6.2" && set bWin8=true
ver |>NUL find "6.1" && set bWin7=true
ver |>NUL find "6.0" && set bWinVista=true
if not defined bWin10 if not defined bWin8 if not defined bWin7 if not defined bWinVista (echo Script is intended for Windows Vista/7/8/8.1/10 only. Terminated. & goto log)

echo SystemDrive is: %SystemDrive%
fsutil fsinfo volumeinfo %SystemDrive%

echo.
echo Backup
for /f "delims=" %%a in ('icacls %SystemDrive%\') do echo %%a
icacls %SystemDrive%\ /save SysDrive.acl
echo ACL backup stored in: "%~dp0SysDrive.acl"

echo.
echo Changing owner
takeown /A /F %SystemDrive%\

echo.
echo Removing 'deny' privileges
echo on
@for /f "delims=" %%a in ('icacls %SystemDrive%\') do @(
  @set "S=%%a"
  @for /f "delims=:" %%b in ("!S:~4!") do icacls %SystemDrive%\ /remove:d "%%b"
)

@echo.
@echo Restoring privileges
@if defined bWinVista call :doWin7
@if defined bWin7 call :doWin7
@if defined bWin8 call :doWin8
@if defined bWin10 call :doWin8
@goto finalize

:doWin7
@echo Applying Window 7 template...
:: BUILTIN\Administrators
icacls %SystemDrive%\ /grant:r *S-1-5-32-544:(F)
icacls %SystemDrive%\ /grant:r *S-1-5-32-544:(OI)(CI)(IO)(F)
:: NT AUTHORITY\SYSTEM
icacls %SystemDrive%\ /grant:r *S-1-5-18:(F)
icacls %SystemDrive%\ /grant:r *S-1-5-18:(OI)(CI)(IO)(F)
:: BUILTIN\Users
icacls %SystemDrive%\ /grant:r *S-1-5-32-545:(OI)(CI)(RX)
:: NT AUTHORITY\Authenticated Users
icacls %SystemDrive%\ /grant:r *S-1-5-11:(OI)(CI)(IO)(M)
icacls %SystemDrive%\ /grant:r *S-1-5-11:(AD)
@exit /b

:doWin8
@echo Applying Window 8 template...
:: BUILTIN\Administrators
icacls %SystemDrive%\ /grant:r *S-1-5-32-544:(OI)(CI)(F)
:: NT AUTHORITY\SYSTEM
icacls %SystemDrive%\ /grant:r *S-1-5-18:(OI)(CI)(F)
:: BUILTIN\Users
icacls %SystemDrive%\ /grant:r *S-1-5-32-545:(OI)(CI)(RX)
:: NT AUTHORITY\Authenticated Users
icacls %SystemDrive%\ /grant:r *S-1-5-11:(OI)(CI)(IO)(M)
icacls %SystemDrive%\ /grant:r *S-1-5-11:(AD)
@exit /b

:finalize
@echo.
@echo Setting integrity level
:: Обязательная метка\Высокий обязательный уровень
icacls %SystemDrive%\ /setintegritylevel (OI)(IO)(NP)H

@echo.
@echo Restoring owner
icacls %SystemDrive%\ /setowner *S-1-5-80-956008885-3418522649-1831038044-1853292631-2271478464

@echo off
echo.
echo List of new permissions
for /f "delims=" %%a in ('icacls %SystemDrive%\') do echo %%a
echo.
echo LogFile stored in: "%~dp0Perm_Log_U.log"
echo.
echo Script is finished.
echo Show this logfile to helper.
echo.
echo Работа скрипта завершена.
echo Покажите этот отчёт специалисту.

:log
cmd /u /c type Perm_Log.log > Perm_Log_U.log
notepad Perm_Log_U.log
