@echo off
setlocal EnableExtensions EnableDelayedExpansion
:: =============================================================================
:: Nox Otimizacao
:: Menu interativo. Ajustes reversiveis.
:: NAO desativa Defender, SmartScreen, UAC, Anti-Malware, Windows Update,
:: Firewall nem a rede. Sem persistencia tipo malware.
:: =============================================================================

chcp 65001 >nul
title Nox Otimizacao
color 07
mode con: cols=124 lines=48 >nul 2>&1

set "E="
set "C=%E%[38;5;208m"
set "W=%E%[97m"
set "G=%E%[90m"
set "R=%E%[91m"
set "T=%E%[36m"
set "N=%E%[0m"

net session >nul 2>&1
if %errorLevel% NEQ 0 (
    cls
    echo.
    echo   Este script precisa de permissao de Administrador.
    echo   A pedir elevacao...
    powershell -NoProfile -ExecutionPolicy Bypass -Command "Start-Process -FilePath '%~f0' -Verb RunAs"
    exit /b 1
)

goto :menu_main


:: =============================================================================
:banner
cls
echo.
echo %C%
echo           Tool                                                   2026
echo.
echo            ##    ##   #######   ##     ##
echo            ###   ##  ##     ##   ##   ##
echo            ####  ##  ##     ##    ## ##
echo            ## ## ##  ##     ##     ###
echo            ##  ####  ##     ##    ## ##
echo            ##   ###  ##     ##   ##   ##
echo            ##    ##   #######   ##     ##
echo.
echo %N%%W%                      O T I M I Z A C A O%N%
echo.
goto :eof

:pause_back
echo.
echo %G%  Prima qualquer tecla para voltar...%N%
pause >nul
goto :eof

:ok
echo     %W%[OK]%N% %~1
goto :eof

:refuse
cls
echo.
echo %R%  [RECUSADO] %~1%N%
echo.
echo   A Nox Otimizacao NAO desativa Windows Defender, SmartScreen, UAC,
echo   Anti-Malware, Windows Update, Firewall nem a rede.
echo   Nenhuma alteracao foi feita.
call :pause_back
goto :eof


:: =============================================================================
:menu_main
call :banner
echo %W%        Selecione o numero da opcao que deseja executar:%N%
echo.
echo     %C%[ 1 ]%N% Criar Ponto de Restauracao             %C%[ 2 ]%N% Otimizar Windows                      
echo     %C%[ 3 ]%N% Otimizacao de Jogos                    %C%[ 4 ]%N% Otimizacao de Perifericos             
echo     %C%[ 5 ]%N% Config. inicializacao do Windows       %C%[ 6 ]%N% Liberar Memoria Ram                   
echo     %C%[ 7 ]%N% Melhorar Conexao/Ping                  %C%[ 8 ]%N% Otimizar AMD                          
echo     %C%[ 9 ]%N% Otimizar NVIDIA                        %C%[ 10 ]%N% Fix de Erros                          
echo     %C%[ 11 ]%N% Debloater                              %C%[ 12 ]%N% Sair                                  
echo.
set "op="
set /p "op=Escolha uma opcao: "
if "%op%"=="1" goto do_restore
if "%op%"=="2" goto menu_win
if "%op%"=="3" goto menu_games
if "%op%"=="4" goto do_perifericos
if "%op%"=="5" goto do_startup
if "%op%"=="6" goto do_ram
if "%op%"=="7" goto do_ping
if "%op%"=="8" goto do_amd
if "%op%"=="9" goto do_nvidia
if "%op%"=="10" goto do_fix
if "%op%"=="11" goto do_debloat
if "%op%"=="12" goto do_sair
echo.
echo   %R%Opcao invalida.%N%
timeout /t 1 /nobreak >nul
goto menu_main


:: =============================================================================
:menu_win
cls
echo.
echo %C%        Escolha a opcao que voce quer otimizar:%N%
echo.
echo    %C%[ 1 ]%N% Otimizar Energia                       %C%[ 2 ]%N% Desat. Efeitos Visuais                
echo    %C%[ 3 ]%N% Tweaks de Privacidade                  %C%[ 4 ]%N% Desat. tarefas e servicos de Telemetria
echo    %C%[ 5 ]%N% Desative TOTALMENTE a XBOX             %C%[ 6 ]%N% Desativar Relatorios de Erro          
echo    %C%[ 7 ]%N% Otimizar ALT +TAB                      %C%[ 8 ]%N% Desative Servicos Inuteis             
echo    %C%[ 9 ]%N% Desat. Hibernacao                      %C%[ 10 ]%N% Otimizar Explorer                     
echo    %C%[ 11 ]%N% Desat. Indexacao de pesquisa           %C%[ 12 ]%N% Ativar God Mode                       
echo    %C%[ 13 ]%N% Desativar Notificacoes                 %C%[ 14 ]%N% Desativar Cortana                     
echo    %C%[ 15 ]%N% Bloquear Envio de feedback automatico  %C%[ 16 ]%N% Desativar SmartScreen                 
echo    %C%[ 17 ]%N% Desativar Overlays (Xbox)              %C%[ 18 ]%N% Resetar Cache de Miniaturas           
echo    %C%[ 19 ]%N% Desat. Prefetch e Superfetch           %C%[ 20 ]%N% Fechar Explorer                       
echo    %C%[ 21 ]%N% Iniciar Explorer                       %C%[ 22 ]%N% Desat. UAC                            
echo    %C%[ 23 ]%N% Desativar Hyper-V (Maquina Virtual)    %C%[ 24 ]%N% Verificar/Arrumar arquivos            
echo    %C%[ 25 ]%N% Limpar Cache de Rede                   %C%[ 26 ]%N% Limpar Cache do Windows               
echo    %C%[ 27 ]%N% Desat. Anti-Malware                    %C%[ 28 ]%N% Desat. Download Maps Manager          
echo    %C%[ 29 ]%N% Desat. TimeStamp                       %C%[ 30 ]%N% Desativar Bing Search                 
echo    %C%[ 31 ]%N% Desat. Servico de Relogio do Win.      %C%[ 32 ]%N% Desat. Sugestoes de pesquisa          
echo    %C%[ 33 ]%N% Desat. Animacoes no Sistema            %C%[ 34 ]%N% Forcar Windows a priorizar Jogos      
echo    %C%[ 35 ]%N% Desat. Memory Compression              %C%[ 36 ]%N% Desat. Atualizacoes Auto. da Microsoft Store
echo    %C%[ 37 ]%N% REINICIAR PC                           %C%[ 38 ]%N% Menu Principal                        
echo.
set "op="
set /p "op=Digite o numero: "
if "%op%"=="1" goto w_energia
if "%op%"=="2" goto w_visual
if "%op%"=="3" goto w_privacy
if "%op%"=="4" goto w_telemetry
if "%op%"=="5" goto menu_xbox
if "%op%"=="6" goto w_wer
if "%op%"=="7" goto w_alttab
if "%op%"=="8" goto menu_svc
if "%op%"=="9" goto w_hiber
if "%op%"=="10" goto w_explorer
if "%op%"=="11" goto w_searchidx
if "%op%"=="12" goto w_godmode
if "%op%"=="13" goto w_notif
if "%op%"=="14" goto w_cortana
if "%op%"=="15" goto w_feedback
if "%op%"=="16" goto w_smartscreen
if "%op%"=="17" goto w_overlay
if "%op%"=="18" goto w_thumbs
if "%op%"=="19" goto w_prefetch
if "%op%"=="20" goto w_killexp
if "%op%"=="21" goto w_startexp
if "%op%"=="22" goto w_uac
if "%op%"=="23" goto w_hyperv
if "%op%"=="24" goto w_sfc
if "%op%"=="25" goto w_dns
if "%op%"=="26" goto w_temp
if "%op%"=="27" goto w_antimalware
if "%op%"=="28" goto w_maps
if "%op%"=="29" goto w_ntfs
if "%op%"=="30" goto w_bing
if "%op%"=="31" goto w_w32time
if "%op%"=="32" goto w_searchsug
if "%op%"=="33" goto w_visual
if "%op%"=="34" goto w_mmcss
if "%op%"=="35" goto w_mmcomp
if "%op%"=="36" goto w_store
if "%op%"=="37" goto w_reboot
if "%op%"=="38" goto menu_main
echo.
echo   %R%Opcao invalida.%N%
timeout /t 1 /nobreak >nul
goto menu_win


:: =============================================================================
:menu_xbox
cls
echo.
echo   ========================================
echo        MENU DE OTIMIZACAO DO PC
echo   ========================================
echo.
echo   [1] Iniciar Otimizacao (Remover Xbox)
echo   [2] Reverter Otimizacao (Restaurar Xbox)
echo   %T%[3] Voltar ao Menu Principal%N%
echo.
set "op="
set /p "op=Digite a opcao desejada: "
if "%op%"=="1" goto xbox_off
if "%op%"=="2" goto xbox_on
if "%op%"=="3" goto menu_main
echo   %R%Opcao invalida.%N%
timeout /t 1 /nobreak >nul
goto menu_xbox

:xbox_off
cls
echo.
echo %C%  [*] Remover Xbox / overlays / DVR%N%
echo.
call :_xbox
for %%S in (XblGameSave XboxNetApiSvc XboxGipSvc) do (
    sc stop %%S >nul 2>&1
    sc config %%S start= disabled >nul 2>&1
    call :ok "Servico %%S desligado"
)
echo.
echo   %G%XblAuthManager ficou ligado (login / Game Pass).%N%
echo   %G%Nenhuma app foi desinstalada.%N%
call :pause_back
goto menu_xbox

:xbox_on
cls
echo.
echo %C%  [*] Restaurar Xbox%N%
echo.
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v AppCaptureEnabled /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKCU\System\GameConfigStore" /v GameDVR_Enabled /t REG_DWORD /d 1 /f >nul 2>&1
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\GameDVR" /v AllowGameDVR /f >nul 2>&1
reg add "HKCU\Software\Microsoft\GameBar" /v UseNexusForGameBarEnabled /t REG_DWORD /d 1 /f >nul 2>&1
for %%S in (XblGameSave XboxNetApiSvc XboxGipSvc) do (
    sc config %%S start= demand >nul 2>&1
    call :ok "Servico %%S = manual"
)
call :ok "Game DVR / overlay restaurados"
call :pause_back
goto menu_xbox


:: =============================================================================
:menu_svc
cls
echo.
echo   ========================================
echo        OTIMIZADOR DE SERVICOS WINDOWS
echo   ========================================
echo.
echo   [1] Desativar Servicos
echo   [2] Reverter Otimizacao
echo   %T%[3] Voltar ao Menu Principal%N%
echo.
echo   %G%Nao mexe em Defender, Update, Firewall, DHCP, DNS nem RPC.%N%
echo.
set "op="
set /p "op=Digite a opcao desejada: "
if "%op%"=="1" goto svc_off
if "%op%"=="2" goto svc_on
if "%op%"=="3" goto menu_main
echo   %R%Opcao invalida.%N%
timeout /t 1 /nobreak >nul
goto menu_svc

:svc_off
cls
echo.
echo %C%  [*] Desativar servicos opcionais%N%
echo.
for %%S in (Fax RemoteRegistry RetailDemo WMPNetworkSvc diagnosticshub.standardcollector.service MapsBroker CscService wisvc) do (
    sc stop %%S >nul 2>&1
    sc config %%S start= disabled >nul 2>&1
    call :ok "%%S"
)
call :pause_back
goto menu_svc

:svc_on
cls
echo.
echo %C%  [*] Reverter servicos opcionais%N%
echo.
for %%S in (Fax RemoteRegistry RetailDemo WMPNetworkSvc diagnosticshub.standardcollector.service MapsBroker CscService wisvc) do (
    sc config %%S start= demand >nul 2>&1
    call :ok "%%S = manual"
)
call :pause_back
goto menu_svc


:: =============================================================================
:menu_games
call :banner
echo %W%        Escolha o jogo que voce quer %C%priorizar%W%:%N%
echo.
echo     %C%[ 1 ]%N% Fortnite                               %C%[ 2 ]%N% Gta V                                 
echo     %C%[ 3 ]%N% FiveM                                  %C%[ 4 ]%N% CS2                                   
echo     %C%[ 5 ]%N% Minecraft                              %C%[ 6 ]%N% Valorant                              
echo     %C%[ 7 ]%N% League of Legends                      %C%[ 8 ]%N% Warzone                               
echo     %C%[ 9 ]%N% Apex Legends                           %C%[ 10 ]%N% Roblox                                
echo     %C%[ 11 ]%N% God Of War (2018 e ragnarok)           %C%[ 12 ]%N% MTA                                   
echo     %C%[ 13 ]%N% Euro Truck Simulator (1 e 2)           %C%[ 14 ]%N% Tom Clancy's Rainbow Six Siege        
echo     %C%[ 15 ]%N% Cult of the Lamb                       %C%[ 16 ]%N% ULTRAKILL                             
echo     %C%[ 17 ]%N% Blood Strike                           %C%[ 18 ]%N% Arena Breakout                        
echo     %C%[ 19 ]%N% Resident Evil 4 Remake                 %C%[ 20 ]%N% Resident Evil 2 Remake                
echo    %C%[ 21 ]%N% Tweaks globais (todos os jogos)        %C%[ 22 ]%N% Menu Principal
echo.
set "op="
set /p "op=Digite o numero: "
if "%op%"=="1" call :prio "Fortnite" "FortniteClient-Win64-Shipping.exe" & goto menu_games
if "%op%"=="2" call :prio "GTA V" "GTA5.exe" & goto menu_games
if "%op%"=="3" call :prio "FiveM" "FiveM.exe" & goto menu_games
if "%op%"=="4" call :prio "CS2" "cs2.exe" & goto menu_games
if "%op%"=="5" call :prio "Minecraft" "Minecraft.Windows.exe" & goto menu_games
if "%op%"=="6" call :prio "Valorant" "VALORANT-Win64-Shipping.exe" & goto menu_games
if "%op%"=="7" call :prio "League of Legends" "League of Legends.exe" & goto menu_games
if "%op%"=="8" call :prio "Warzone" "cod.exe" & goto menu_games
if "%op%"=="9" call :prio "Apex Legends" "r5apex.exe" & goto menu_games
if "%op%"=="10" call :prio "Roblox" "RobloxPlayerBeta.exe" & goto menu_games
if "%op%"=="11" call :prio "God Of War" "GoW.exe" & goto menu_games
if "%op%"=="12" call :prio "MTA" "Multi Theft Auto.exe" & goto menu_games
if "%op%"=="13" call :prio "ETS2" "eurotrucks2.exe" & goto menu_games
if "%op%"=="14" call :prio "Rainbow Six Siege" "RainbowSix.exe" & goto menu_games
if "%op%"=="15" call :prio "Cult of the Lamb" "Cult Of The Lamb.exe" & goto menu_games
if "%op%"=="16" call :prio "ULTRAKILL" "ULTRAKILL.exe" & goto menu_games
if "%op%"=="17" call :prio "Blood Strike" "BloodStrike.exe" & goto menu_games
if "%op%"=="18" call :prio "Arena Breakout" "ArenaBreakout.exe" & goto menu_games
if "%op%"=="19" call :prio "RE4 Remake" "re4.exe" & goto menu_games
if "%op%"=="20" call :prio "RE2 Remake" "re2.exe" & goto menu_games
if "%op%"=="21" goto do_games_global
if "%op%"=="22" goto menu_main
echo.
echo   %R%Opcao invalida.%N%
timeout /t 1 /nobreak >nul
goto menu_games


:: =============================================================================
:do_restore
cls
echo.
echo %C%  [*] Criar ponto de restauracao%N%
echo.
powershell.exe -NoProfile -ExecutionPolicy Bypass -Command "try { Checkpoint-Computer -Description 'Nox Otimizacao' -RestorePointType MODIFY_SETTINGS; Write-Host '    [OK] Ponto de restauracao criado.' } catch { Write-Host '    [AVISO] Nao foi possivel criar o ponto de restauracao.'; Write-Host ('            ' + $_.Exception.Message) }"
call :pause_back
goto menu_main

:do_games_global
cls
echo.
echo %C%  [*] Tweaks globais de jogos%N%
echo.
call :_gamemode
call :_hags
call :_mmcss
call :pause_back
goto menu_games

:do_perifericos
cls
echo.
echo %C%  [*] Otimizacao de Perifericos%N%
echo.
reg add "HKCU\Control Panel\Mouse" /v MouseSpeed /t REG_SZ /d 0 /f >nul 2>&1
reg add "HKCU\Control Panel\Mouse" /v MouseThreshold1 /t REG_SZ /d 0 /f >nul 2>&1
reg add "HKCU\Control Panel\Mouse" /v MouseThreshold2 /t REG_SZ /d 0 /f >nul 2>&1
call :ok "Aceleracao do rato desligada"
reg add "HKCU\Control Panel\Desktop" /v MenuShowDelay /t REG_SZ /d 0 /f >nul 2>&1
call :ok "Atraso de menu = 0 ms"
call :pause_back
goto menu_main

:do_startup
cls
echo.
echo %C%  [*] Config. inicializacao do Windows%N%
echo.
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Serialize" /v StartupDelayInMSec /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Explorer\Serialize" /v StartupDelayInMSec /t REG_DWORD /d 0 /f >nul 2>&1
call :ok "Atraso de arranque do Explorer = 0 ms"
call :pause_back
goto menu_main

:do_ram
cls
echo.
echo %C%  [*] Liberar Memoria Ram%N%
echo.
del /q /f /s "%TEMP%\*" >nul 2>&1
call :ok "TEMP do utilizador limpo"
rundll32.exe advapi32.dll,ProcessIdleTasks
call :ok "ProcessIdleTasks"
powershell.exe -NoProfile -Command "$o=Get-CimInstance Win32_OperatingSystem; Write-Host ('    RAM livre agora: {0:N0} MB' -f ([double]$o.FreePhysicalMemory/1024))"
call :pause_back
goto menu_main

:do_ping
cls
echo.
echo %C%  [*] Melhorar Conexao/Ping%N%
echo.
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v NetworkThrottlingIndex /t REG_DWORD /d 4294967295 /f >nul 2>&1
call :ok "NetworkThrottlingIndex sem limite MMCSS"
for /f "tokens=*" %%I in ('reg query "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" 2^>nul') do (
    reg add "%%I" /v TcpAckFrequency /t REG_DWORD /d 1 /f >nul 2>&1
    reg add "%%I" /v TCPNoDelay /t REG_DWORD /d 1 /f >nul 2>&1
)
call :ok "TCPNoDelay nas interfaces"
echo   %G%Firewall, Wi-Fi, Ethernet e IPv6 NAO foram desligados.%N%
call :pause_back
goto menu_main

:do_amd
cls
echo.
echo %C%  [*] Otimizar AMD%N%
echo.
set "AMD=0"
for /f "tokens=2 delims==" %%A in ('wmic path Win32_VideoController get Name /value 2^>nul') do (
    echo %%A | findstr /I /C:"AMD" /C:"Radeon" >nul && set "AMD=1"
)
if "!AMD!"=="0" (
    echo   %R%Nao foi detetada GPU AMD. Nada alterado.%N%
    call :pause_back
    goto menu_main
)
call :ok "GPU AMD detetada"
call :_hags
for /f "tokens=*" %%K in ('reg query "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}" /s /v DriverDesc 2^>nul ^| findstr /I /C:"HKEY_"') do (
    reg add "%%K" /v EnableUlps /t REG_DWORD /d 0 /f >nul 2>&1
    reg add "%%K" /v EnableUlps_NA /t REG_SZ /d "0" /f >nul 2>&1
    reg add "%%K" /v StutterMode /t REG_DWORD /d 0 /f >nul 2>&1
)
call :ok "ULPS / StutterMode"
echo   %G%Reinicia o PC para aplicar por completo.%N%
call :pause_back
goto menu_main

:do_nvidia
cls
echo.
echo %C%  [*] Otimizar NVIDIA%N%
echo.
set "NV=0"
for /f "tokens=2 delims==" %%A in ('wmic path Win32_VideoController get Name /value 2^>nul') do (
    echo %%A | findstr /I /C:"NVIDIA" /C:"GeForce" >nul && set "NV=1"
)
if "!NV!"=="0" (
    echo   %R%Nao foi detetada GPU NVIDIA. Nada alterado.%N%
    call :pause_back
    goto menu_main
)
call :ok "GPU NVIDIA detetada"
call :_hags
sc query NvTelemetryContainer >nul 2>&1
if not errorlevel 1 (
    sc stop NvTelemetryContainer >nul 2>&1
    sc config NvTelemetryContainer start= disabled >nul 2>&1
    call :ok "NvTelemetryContainer desativado"
) else (
    echo     %G%Servico NvTelemetry nao existe neste PC.%N%
)
echo   %G%Reinicia o PC para aplicar por completo.%N%
call :pause_back
goto menu_main

:do_fix
cls
echo.
echo %C%  [*] Fix de Erros%N%
echo.
echo   Isto pode demorar. Nao feches a janela.
echo.
echo   [1/2] sfc /scannow
sfc /scannow
echo.
echo   [2/2] DISM RestoreHealth
DISM /Online /Cleanup-Image /RestoreHealth
call :ok "Verificacao concluida"
call :pause_back
goto menu_main

:do_debloat
cls
echo.
echo %C%  [*] Debloater%N%
echo.
call :_debloat
call :pause_back
goto menu_main

:do_sair
cls
echo.
echo   Nox Otimizacao - ate a proxima.
echo.
pause
endlocal
exit /b 0


:: =============================================================================
:w_energia
cls
echo.
echo %C%  [*] Otimizar Energia%N%
echo.
call :_energia
call :pause_back
goto menu_win

:w_visual
cls
echo.
echo %C%  [*] Desat. Efeitos Visuais / Animacoes%N%
echo.
call :_visual
call :pause_back
goto menu_win

:w_privacy
cls
echo.
echo %C%  [*] Tweaks de Privacidade%N%
echo.
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /v Enabled /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Privacy" /v TailoredExperiencesWithDiagnosticDataEnabled /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\InputPersonalization" /v RestrictImplicitInkCollection /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\InputPersonalization" /v RestrictImplicitTextCollection /t REG_DWORD /d 1 /f >nul 2>&1
call :ok "Advertising ID e experiencias personalizadas desligados"
call :pause_back
goto menu_win

:w_telemetry
cls
echo.
echo %C%  [*] Telemetria de consumidor%N%
echo.
sc stop DiagTrack >nul 2>&1
sc config DiagTrack start= disabled >nul 2>&1
call :ok "DiagTrack desligado"
sc stop dmwappushservice >nul 2>&1
sc config dmwappushservice start= disabled >nul 2>&1
call :ok "dmwappushservice desligado"
schtasks /Change /TN "Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" /Disable >nul 2>&1
schtasks /Change /TN "Microsoft\Windows\Application Experience\ProgramDataUpdater" /Disable >nul 2>&1
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\Consolidator" /Disable >nul 2>&1
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" /Disable >nul 2>&1
call :ok "Tarefas CEIP desligadas"
echo   %G%Windows Update e Defender nao foram mexidos.%N%
call :pause_back
goto menu_win

:w_wer
cls
echo.
echo %C%  [*] Relatorios de Erro%N%
echo.
reg add "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting" /v Disabled /t REG_DWORD /d 1 /f >nul 2>&1
call :ok "Windows Error Reporting desligado"
call :pause_back
goto menu_win

:w_alttab
cls
echo.
echo %C%  [*] Otimizar ALT +TAB%N%
echo.
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /v AltTabSettings /t REG_DWORD /d 1 /f >nul 2>&1
call :ok "ALT+TAB classico"
call :pause_back
goto menu_win

:w_hiber
cls
echo.
echo %C%  [*] Desat. Hibernacao%N%
echo.
powercfg -h off >nul 2>&1
if not errorlevel 1 (call :ok "Hibernacao desligada") else (echo     %R%[AVISO] Falhou. Em portateis pode ser normal.%N%)
call :pause_back
goto menu_win

:w_explorer
cls
echo.
echo %C%  [*] Otimizar Explorer%N%
echo.
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v SeparateProcess /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v DisablePreviewDesktop /t REG_DWORD /d 1 /f >nul 2>&1
call :ok "Explorer em processo separado, Peek desligado"
call :pause_back
goto menu_win

:w_searchidx
cls
echo.
echo %C%  [*] Desat. Indexacao de pesquisa%N%
echo.
sc stop WSearch >nul 2>&1
sc config WSearch start= disabled >nul 2>&1
call :ok "WSearch desligado"
call :pause_back
goto menu_win

:w_godmode
cls
echo.
echo %C%  [*] Ativar God Mode%N%
echo.
mkdir "%USERPROFILE%\Desktop\GodMode.{ED7BA470-8E54-465E-825C-99712043E01C}" >nul 2>&1
call :ok "Pasta God Mode no Ambiente de Trabalho"
call :pause_back
goto menu_win

:w_notif
cls
echo.
echo %C%  [*] Desativar Notificacoes%N%
echo.
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\PushNotifications" /v ToastEnabled /t REG_DWORD /d 0 /f >nul 2>&1
call :_tips
call :ok "Toasts desligados"
call :pause_back
goto menu_win

:w_cortana
cls
echo.
echo %C%  [*] Desativar Cortana%N%
echo.
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v AllowCortana /t REG_DWORD /d 0 /f >nul 2>&1
call :ok "AllowCortana=0"
call :pause_back
goto menu_win

:w_feedback
cls
echo.
echo %C%  [*] Bloquear Envio de feedback automatico%N%
echo.
reg add "HKCU\SOFTWARE\Microsoft\Siuf\Rules" /v NumberOfSIUFInPeriod /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v DoNotShowFeedbackNotifications /t REG_DWORD /d 1 /f >nul 2>&1
call :ok "SIUF / feedback desligados"
call :pause_back
goto menu_win

:w_smartscreen
call :refuse "Desativar SmartScreen"
goto menu_win

:w_overlay
cls
echo.
echo %C%  [*] Desativar Overlays (Xbox)%N%
echo.
call :_xbox
call :pause_back
goto menu_win

:w_thumbs
cls
echo.
echo %C%  [*] Resetar Cache de Miniaturas%N%
echo.
taskkill /f /im explorer.exe >nul 2>&1
timeout /t 1 /nobreak >nul
del /f /s /q "%LocalAppData%\Microsoft\Windows\Explorer\thumbcache_*.db" >nul 2>&1
start "" explorer.exe
call :ok "Cache de miniaturas apagado"
call :pause_back
goto menu_win

:w_prefetch
cls
echo.
echo %C%  [*] Desat. Prefetch e Superfetch%N%
echo.
sc stop SysMain >nul 2>&1
sc config SysMain start= disabled >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v EnablePrefetcher /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v EnableSuperfetch /t REG_DWORD /d 0 /f >nul 2>&1
call :ok "SysMain / Prefetch desligados"
call :pause_back
goto menu_win

:w_killexp
cls
echo.
echo %C%  [*] Fechar Explorer%N%
echo.
taskkill /f /im explorer.exe >nul 2>&1
call :ok "Explorer fechado  -  usa [ 21 ] para voltar"
call :pause_back
goto menu_win

:w_startexp
cls
echo.
echo %C%  [*] Iniciar Explorer%N%
echo.
start "" explorer.exe
call :ok "Explorer iniciado"
call :pause_back
goto menu_win

:w_uac
call :refuse "Desat. UAC"
goto menu_win

:w_hyperv
cls
echo.
echo %C%  [*] Desativar Hyper-V%N%
echo.
bcdedit /set hypervisorlaunchtype off >nul 2>&1
if not errorlevel 1 (call :ok "hypervisorlaunchtype=off  -  reinicia o PC") else (echo     %R%[AVISO] bcdedit falhou.%N%)
echo   %G%Reverter: bcdedit /set hypervisorlaunchtype auto%N%
call :pause_back
goto menu_win

:w_sfc
cls
echo.
echo %C%  [*] Verificar/Arrumar arquivos%N%
echo.
echo   Pode demorar. Nao feches a janela.
sfc /scannow
call :pause_back
goto menu_win

:w_dns
cls
echo.
echo %C%  [*] Limpar Cache de Rede%N%
echo.
ipconfig /flushdns
call :ok "Cache DNS limpo  -  rede continua ligada"
call :pause_back
goto menu_win

:w_temp
cls
echo.
echo %C%  [*] Limpar Cache do Windows%N%
echo.
del /q /f /s "%TEMP%\*" >nul 2>&1
call :ok "Temporarios do utilizador limpos"
echo   %G%Ficheiros de sistema nao foram apagados.%N%
call :pause_back
goto menu_win

:w_antimalware
call :refuse "Desat. Anti-Malware"
goto menu_win

:w_maps
cls
echo.
echo %C%  [*] Desat. Download Maps Manager%N%
echo.
sc stop MapsBroker >nul 2>&1
sc config MapsBroker start= disabled >nul 2>&1
call :ok "MapsBroker desligado"
call :pause_back
goto menu_win

:w_ntfs
cls
echo.
echo %C%  [*] Desat. TimeStamp%N%
echo.
fsutil behavior set disablelastaccess 1 >nul 2>&1
call :ok "NTFS last access desligado"
call :pause_back
goto menu_win

:w_bing
cls
echo.
echo %C%  [*] Desativar Bing Search%N%
echo.
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v BingSearchEnabled /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\Software\Policies\Microsoft\Windows\Explorer" /v DisableSearchBoxSuggestions /t REG_DWORD /d 1 /f >nul 2>&1
call :ok "Bing Search desligado"
call :pause_back
goto menu_win

:w_w32time
cls
echo.
echo %C%  [*] Desat. Servico de Relogio do Win.%N%
echo.
sc stop W32Time >nul 2>&1
sc config W32Time start= disabled >nul 2>&1
call :ok "W32Time desligado"
echo   %G%Reverter: sc config W32Time start= demand%N%
call :pause_back
goto menu_win

:w_searchsug
cls
echo.
echo %C%  [*] Desat. Sugestoes de pesquisa%N%
echo.
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\SearchSettings" /v IsDynamicSearchBoxEnabled /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\Software\Policies\Microsoft\Windows\Explorer" /v DisableSearchBoxSuggestions /t REG_DWORD /d 1 /f >nul 2>&1
call :ok "Sugestoes de pesquisa desligadas"
call :pause_back
goto menu_win

:w_mmcss
cls
echo.
echo %C%  [*] Forcar Windows a priorizar Jogos%N%
echo.
call :_mmcss
call :_gamemode
call :pause_back
goto menu_win

:w_mmcomp
cls
echo.
echo %C%  [*] Desat. Memory Compression%N%
echo.
powershell.exe -NoProfile -Command "Disable-MMAgent -MemoryCompression -ErrorAction SilentlyContinue; Write-Host '    [OK] Memory Compression desligada'"
echo   %G%Reverter: Enable-MMAgent -MemoryCompression%N%
call :pause_back
goto menu_win

:w_store
cls
echo.
echo %C%  [*] Desat. Atualizacoes Auto. da Microsoft Store%N%
echo.
reg add "HKLM\SOFTWARE\Policies\Microsoft\WindowsStore" /v AutoDownload /t REG_DWORD /d 2 /f >nul 2>&1
call :ok "Store AutoDownload=2"
echo   %G%Windows Update do sistema NAO foi desligado.%N%
call :pause_back
goto menu_win

:w_reboot
cls
echo.
echo %C%  REINICIAR PC daqui a 5 segundos?%N%
echo.
set "ans="
set /p "ans=   Escreve S para confirmar: "
if /I not "%ans%"=="S" (
    echo   Cancelado.
    timeout /t 1 /nobreak >nul
    goto menu_win
)
shutdown /r /t 5 /c "Nox Otimizacao: a reiniciar"
echo   A reiniciar...
timeout /t 6 /nobreak >nul
goto menu_win


:: =============================================================================
:prio
cls
echo.
echo %C%  [*] Priorizar: %~1%N%
echo.
call :_gamemode
call :_hags
call :_mmcss
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%~2\PerfOptions" /v CpuPriorityClass /t REG_DWORD /d 3 /f >nul 2>&1
reg add "HKCU\Software\Microsoft\DirectX\UserGpuPreferences" /v "%~2" /t REG_SZ /d "GpuPreference=2;" /f >nul 2>&1
call :ok "%~1 = CPU High + GPU alto desempenho"
call :pause_back
goto :eof


:_visual
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" /v VisualFXSetting /t REG_DWORD /d 3 /f >nul 2>&1
reg add "HKCU\Control Panel\Desktop" /v UserPreferencesMask /t REG_BINARY /d 9012038010000000 /f >nul 2>&1
reg add "HKCU\Control Panel\Desktop\WindowMetrics" /v MinAnimate /t REG_SZ /d 0 /f >nul 2>&1
reg add "HKCU\Control Panel\Desktop" /v DragFullWindows /t REG_SZ /d 0 /f >nul 2>&1
reg add "HKCU\Control Panel\Desktop" /v MenuShowDelay /t REG_SZ /d 0 /f >nul 2>&1
reg add "HKCU\Control Panel\Desktop" /v FontSmoothing /t REG_SZ /d 2 /f >nul 2>&1
reg add "HKCU\Control Panel\Desktop" /v FontSmoothingType /t REG_DWORD /d 2 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v EnableTransparency /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v TaskbarAnimations /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v ListviewShadow /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v ListviewAlphaSelect /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\Software\Microsoft\Windows\DWM" /v EnableAeroPeek /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v DisablePreviewDesktop /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKCU\Software\Microsoft\Windows\DWM" /v AlwaysHibernateThumbnails /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DWM" /v DisallowAnimations /t REG_DWORD /d 1 /f >nul 2>&1
call :ok "Animacoes, transparencia, sombras, Peek desligados"
taskkill /f /im explorer.exe >nul 2>&1
timeout /t 1 /nobreak >nul
start "" explorer.exe
call :ok "Explorer reiniciado"
goto :eof

:_energia
powercfg -list | findstr /I /C:"e9a42b02-d5df-448d-aa00-03f14749eb61" >nul
if errorlevel 1 (
    powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61 >nul 2>&1
)
powercfg -setactive e9a42b02-d5df-448d-aa00-03f14749eb61 >nul 2>&1
if not errorlevel 1 (
    call :ok "Plano Ultimate Performance ativo"
) else (
    powercfg -setactive 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c >nul 2>&1
    if not errorlevel 1 (call :ok "Plano Alto desempenho ativo") else (echo     %R%[AVISO] Nao foi possivel mudar o plano.%N%)
)
powercfg -setacvalueindex SCHEME_CURRENT SUB_PROCESSOR PROCTHROTTLEMIN 100 >nul 2>&1
powercfg -setacvalueindex SCHEME_CURRENT SUB_PROCESSOR PROCTHROTTLEMAX 100 >nul 2>&1
powercfg -setactive SCHEME_CURRENT >nul 2>&1
call :ok "CPU em corrente a 100%%"
goto :eof

:_gamemode
reg add "HKCU\Software\Microsoft\GameBar" /v AutoGameModeEnabled /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKCU\Software\Microsoft\GameBar" /v AllowAutoGameMode /t REG_DWORD /d 1 /f >nul 2>&1
call :ok "Game Mode ligado"
call :_xbox
goto :eof

:_xbox
reg add "HKCU\Software\Microsoft\GameBar" /v UseNexusForGameBarEnabled /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\Software\Microsoft\GameBar" /v ShowStartupPanel /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v AppCaptureEnabled /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v AudioCaptureEnabled /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v CursorCaptureEnabled /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v HistoricalCaptureEnabled /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\System\GameConfigStore" /v GameDVR_Enabled /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\GameDVR" /v AllowGameDVR /t REG_DWORD /d 0 /f >nul 2>&1
call :ok "Game DVR / overlay Xbox desligados"
goto :eof

:_hags
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v HwSchMode /t REG_DWORD /d 2 /f >nul 2>&1
reg add "HKCU\Software\Microsoft\DirectX\UserGpuPreferences" /v DirectXUserGlobalSettings /t REG_SZ /d "SwapEffectUpgradeEnable=1;" /f >nul 2>&1
call :ok "HAGS ligado"
goto :eof

:_mmcss
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "GPU Priority" /t REG_DWORD /d 8 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Priority" /t REG_DWORD /d 6 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Scheduling Category" /t REG_SZ /d "High" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "SFIO Priority" /t REG_SZ /d "High" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v SystemResponsiveness /t REG_DWORD /d 10 /f >nul 2>&1
call :ok "MMCSS Games = prioridade alta"
goto :eof

:_tips
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SoftLandingEnabled /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SystemPaneSuggestionsEnabled /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-310093Enabled /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-338388Enabled /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-338389Enabled /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-338393Enabled /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-353694Enabled /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-353696Enabled /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\UserProfileEngagement" /v ScoobeSystemSettingEnabled /t REG_DWORD /d 0 /f >nul 2>&1
call :ok "Dicas da Microsoft desligadas"
goto :eof

:_debloat
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v TaskbarDa /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Dsh" /v AllowNewsAndInterests /t REG_DWORD /d 0 /f >nul 2>&1
call :ok "Widgets / noticias desligados"
call :_tips
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\SearchSettings" /v IsDynamicSearchBoxEnabled /t REG_DWORD /d 0 /f >nul 2>&1
call :ok "Destaques da pesquisa desligados"
echo   %G%Nao se desinstalaram apps do sistema.%N%
goto :eof
