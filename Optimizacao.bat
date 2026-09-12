@echo off
echo off
setlocal EnableExtensions EnableDelayedExpansion
:: Nox Otimizacao — SEM BOM. @echo off TEM de ser o primeiro comando ASCII.
:: Nao desativa Defender, SmartScreen, UAC, Anti-Malware, Windows Update, Firewall, rede.

title Nox Otimizacao
color 0E
mode con cols=120 lines=48 >nul 2>&1
chcp 65001 >nul
echo off

for /F %%A in ('echo prompt $E^| cmd') do set "E=%%A"
set "C=%E%[38;5;208m"
set "W=%E%[97m"
set "G=%E%[90m"
set "R=%E%[91m"
set "P=%E%[95m"
set "N=%E%[0m"

net session >nul 2>&1
if errorlevel 1 (
    echo Precisa de Administrador. A pedir elevacao...
    powershell -NoProfile -ExecutionPolicy Bypass -Command "Start-Process -FilePath '%~f0' -Verb RunAs"
    exit /b 1
)

goto menu_main

:hdr
cls
echo(
call :art_%~1
echo %C%        %~2%N%
echo(
goto :eof

:art_nox
echo(%C%      ___           ___           ___%N%
echo(%C%     /__/\         /  /\         /__/^|%N%
echo(%C%     \  \:\       /  /::\       ^|  ^|:^|%N%
echo(%C%      \  \:\     /  /:/\:\      ^|  ^|:^|%N%
echo(%C%  _____\__\:\   /  /:/  \:\   __^|__^|:^|%N%
echo(%C% /__/::::::::\ /__/:/ \__\:\ /__/::::\____%N%
echo(%C% \  \:\~~\~~\/ \  \:\ /  /:/    ~\~~\::::/%N%
echo(%C%  \  \:\  ~~~   \  \:\  /:/      ^|~~^|:^|~~%N%
echo(%C%   \  \:\        \  \:\/:/       ^|  ^|:^|%N%
echo(%C%    \  \:\        \  \::/        ^|  ^|:^|%N%
echo(%C%     \__\/         \__\/         ^|__^|/%N%
goto :eof

:art_win
echo(%C%      ___                       ___          _____          ___           ___           ___%N%
echo(%C%     /__/\        ___          /__/\        /  /::\        /  /\         /__/\         /  /\ %N%
echo(%C%    _\_ \:\      /  /\         \  \:\      /  /:/\:\      /  /::\       _\_ \:\       /  /:/_%N%
echo(%C%   /__/\ \:\    /  /:/          \  \:\    /  /:/  \:\    /  /:/\:\     /__/\ \:\     /  /:/ /\ %N%
echo(%C%  _\_ \:\ \:\  /__/::\      _____\__\:\  /__/:/ \__\:^|  /  /:/  \:\   _\_ \:\ \:\   /  /:/ /::\ %N%
echo(%C% /__/\ \:\ \:\ \__\/\:\__  /__/::::::::\ \  \:\ /  /:/ /__/:/ \__\:\ /__/\ \:\ \:\ /__/:/ /:/\:\ %N%
echo(%C% \  \:\ \:\/:/    \  \:\/\ \  \:\~~\~~\/  \  \:\  /:/  \  \:\ /  /:/ \  \:\ \:\/:/ \  \:\/:/~/:/%N%
echo(%C%  \  \:\ \::/      \__\::/  \  \:\  ~~~    \  \:\/:/    \  \:\  /:/   \  \:\ \::/   \  \::/ /:/%N%
echo(%C%   \  \:\/:/       /__/:/    \  \:\         \  \::/      \  \:\/:/     \  \:\/:/     \__\/ /:/%N%
echo(%C%    \  \::/        \__\/      \  \:\         \__\/        \  \::/       \  \::/        /__/:/%N%
echo(%C%     \__\/                     \__\/                       \__\/         \__\/         \__\/%N%
goto :eof

:art_games
echo(%C%    ___          ___           ___           ___           ___%N%
echo(%C%   /  /\        /  /\         /  /\         /  /\         /  /\ %N%
echo(%C%  /  /:/       /  /::\       /  /:/_       /  /::\       /  /:/_%N%
echo(%C% /__/::\      /  /:/\:\     /  /:/ /\     /  /:/\:\     /  /:/ /\ %N%
echo(%C% \__\/\:\    /  /:/  \:\   /  /:/_/::\   /  /:/  \:\   /  /:/ /::\ %N%
echo(%C%    \  \:\  /__/:/ \__\:\ /__/:/__\/\:\ /__/:/ \__\:\ /__/:/ /:/\:\ %N%
echo(%C%     \__\:\ \  \:\ /  /:/ \  \:\ /~~/:/ \  \:\ /  /:/ \  \:\/:/~/:/%N%
echo(%C%     /  /:/  \  \:\  /:/   \  \:\  /:/   \  \:\  /:/   \  \::/ /:/%N%
echo(%C%    /__/:/    \  \:\/:/     \  \:\/:/     \  \:\/:/     \__\/ /:/%N%
echo(%C%    \__\/      \  \::/       \  \::/       \  \::/        /__/:/%N%
echo(%C%                \__\/         \__\/         \__\/         \__\/%N%
goto :eof

:art_hw
echo(%C%      ___           ___           ___          _____          ___           ___           ___           ___%N%
echo(%C%     /__/\         /  /\         /  /\        /  /::\        /__/\         /  /\         /  /\         /  /\ %N%
echo(%C%     \  \:\       /  /::\       /  /::\      /  /:/\:\      _\_ \:\       /  /::\       /  /::\       /  /:/_%N%
echo(%C%      \__\:\     /  /:/\:\     /  /:/\:\    /  /:/  \:\    /__/\ \:\     /  /:/\:\     /  /:/\:\     /  /:/ /\ %N%
echo(%C%  ___ /  /::\   /  /:/~/::\   /  /:/~/:/   /__/:/ \__\:^|  _\_ \:\ \:\   /  /:/~/::\   /  /:/~/:/    /  /:/ /:/_%N%
echo(%C% /__/\  /:/\:\ /__/:/ /:/\:\ /__/:/ /:/___ \  \:\ /  /:/ /__/\ \:\ \:\ /__/:/ /:/\:\ /__/:/ /:/___ /__/:/ /:/ /\ %N%
echo(%C% \  \:\/:/__\/ \  \:\/:/__\/ \  \:\/:::::/  \  \:\  /:/  \  \:\ \:\/:/ \  \:\/:/__\/ \  \:\/:::::/ \  \:\/:/ /:/%N%
echo(%C%  \  \::/       \  \::/       \  \::/~~~~    \  \:\/:/    \  \:\ \::/   \  \::/       \  \::/~~~~   \  \::/ /:/%N%
echo(%C%   \  \:\        \  \:\        \  \:\         \  \::/      \  \:\/:/     \  \:\        \  \:\        \  \:\/:/%N%
echo(%C%    \  \:\        \  \:\        \  \:\         \__\/        \  \::/       \  \:\        \  \:\        \  \::/%N%
echo(%C%     \__\/         \__\/         \__\/                       \__\/         \__\/         \__\/         \__\/%N%
goto :eof

:art_ping
echo(%C%      ___                     ___           ___%N%
echo(%C%     /  /\      ___          /__/\         /  /\ %N%
echo(%C%    /  /::\    /  /\         \  \:\       /  /:/_%N%
echo(%C%   /  /:/\:\  /  /:/          \  \:\     /  /:/ /\ %N%
echo(%C%  /  /:/~/:/ /__/::\      _____\__\:\   /  /:/_/::\ %N%
echo(%C% /__/:/ /:/  \__\/\:\__  /__/::::::::\ /__/:/__\/\:\ %N%
echo(%C% \  \:\/:/      \  \:\/\ \  \:\~~\~~\/ \  \:\ /~~/:/%N%
echo(%C%  \  \::/        \__\::/  \  \:\  ~~~   \  \:\  /:/%N%
echo(%C%   \  \:\        /__/:/    \  \:\        \  \:\/:/%N%
echo(%C%    \  \:\       \__\/      \  \:\        \  \::/%N%
echo(%C%     \__\/                   \__\/         \__\/%N%
goto :eof

:art_amd
echo(%C%      ___           ___          _____%N%
echo(%C%     /  /\         /__/\        /  /::\ %N%
echo(%C%    /  /::\       ^|  ^|::\      /  /:/\:\ %N%
echo(%C%   /  /:/\:\      ^|  ^|:^|:\    /  /:/  \:\ %N%
echo(%C%  /  /:/~/::\   __^|__^|:^|\:\  /__/:/ \__\:^|%N%
echo(%C% /__/:/ /:/\:\ /__/::::^| \:\ \  \:\ /  /:/%N%
echo(%C% \  \:\/:/__\/ \  \:\~~\__\/  \  \:\  /:/%N%
echo(%C%  \  \::/       \  \:\         \  \:\/:/%N%
echo(%C%   \  \:\        \  \:\         \  \::/%N%
echo(%C%    \  \:\        \  \:\         \__\/%N%
echo(%C%     \__\/         \__\/%N%
goto :eof

:art_fix
echo(%C%      ___                     ___%N%
echo(%C%     /  /\      ___          /__/^|%N%
echo(%C%    /  /:/_    /  /\        ^|  ^|:^|%N%
echo(%C%   /  /:/ /\  /  /:/        ^|  ^|:^|%N%
echo(%C%  /  /:/ /:/ /__/::\      __^|__^|:^|%N%
echo(%C% /__/:/ /:/  \__\/\:\__  /__/::::\____%N%
echo(%C% \  \:\/:/      \  \:\/\    ~\~~\::::/%N%
echo(%C%  \  \::/        \__\::/     ^|~~^|:^|~~%N%
echo(%C%   \  \:\        /__/:/      ^|  ^|:^|%N%
echo(%C%    \  \:\       \__\/       ^|  ^|:^|%N%
echo(%C%     \__\/                   ^|__^|/%N%
goto :eof

:art_deb
echo(%C%     _____          ___                                       ___           ___%N%
echo(%C%    /  /::\        /  /\         _____                       /  /\         /  /\          ___%N%
echo(%C%   /  /:/\:\      /  /:/_       /  /::\                     /  /::\       /  /::\        /  /\ %N%
echo(%C%  /  /:/  \:\    /  /:/ /\     /  /:/\:\    ___     ___    /  /:/\:\     /  /:/\:\      /  /:/%N%
echo(%C% /__/:/ \__\:^|  /  /:/ /:/_   /  /:/~/::\  /__/\   /  /\  /  /:/  \:\   /  /:/~/::\    /  /:/%N%
echo(%C% \  \:\ /  /:/ /__/:/ /:/ /\ /__/:/ /:/\:^| \  \:\ /  /:/ /__/:/ \__\:\ /__/:/ /:/\:\  /  /::\ %N%
echo(%C%  \  \:\  /:/  \  \:\/:/ /:/ \  \:\/:/~/:/  \  \:\  /:/  \  \:\ /  /:/ \  \:\/:/__\/ /__/:/\:\ %N%
echo(%C%   \  \:\/:/    \  \::/ /:/   \  \::/ /:/    \  \:\/:/    \  \:\  /:/   \  \::/      \__\/  \:\ %N%
echo(%C%    \  \::/      \  \:\/:/     \  \:\/:/      \  \::/      \  \:\/:/     \  \:\           \  \:\ %N%
echo(%C%     \__\/        \  \::/       \  \::/        \__\/        \  \::/       \  \:\           \__\/%N%
echo(%C%                   \__\/         \__\/                       \__\/         \__\/%N%
goto :eof

:art_xbox
echo(%C%      ___                         ___           ___%N%
echo(%C%     /__/^|         _____         /  /\         /__/^|%N%
echo(%C%    ^|  ^|:^|        /  /::\       /  /::\       ^|  ^|:^|%N%
echo(%C%    ^|  ^|:^|       /  /:/\:\     /  /:/\:\      ^|  ^|:^|%N%
echo(%C%  __^|__^|:^|      /  /:/~/::\   /  /:/  \:\   __^|__^|:^|%N%
echo(%C% /__/::::\____ /__/:/ /:/\:^| /__/:/ \__\:\ /__/::::\____%N%
echo(%C%    ~\~~\::::/ \  \:\/:/~/:/ \  \:\ /  /:/    ~\~~\::::/%N%
echo(%C%     ^|~~^|:^|~~   \  \::/ /:/   \  \:\  /:/      ^|~~^|:^|~~%N%
echo(%C%     ^|  ^|:^|      \  \:\/:/     \  \:\/:/       ^|  ^|:^|%N%
echo(%C%     ^|  ^|:^|       \  \::/       \  \::/        ^|  ^|:^|%N%
echo(%C%     ^|__^|/         \__\/         \__\/         ^|__^|/%N%
goto :eof

:art_svc
echo(%C%      ___           ___           ___                                    ___           ___           ___%N%
echo(%C%     /  /\         /  /\         /  /\          ___        ___          /  /\         /  /\         /  /\ %N%
echo(%C%    /  /:/_       /  /:/_       /  /::\        /__/\      /  /\        /  /:/        /  /::\       /  /:/_%N%
echo(%C%   /  /:/ /\     /  /:/ /\     /  /:/\:\       \  \:\    /  /:/       /  /:/        /  /:/\:\     /  /:/ /\ %N%
echo(%C%  /  /:/ /::\   /  /:/ /:/_   /  /:/~/:/        \  \:\  /__/::\      /  /:/  ___   /  /:/  \:\   /  /:/ /::\ %N%
echo(%C% /__/:/ /:/\:\ /__/:/ /:/ /\ /__/:/ /:/___  ___  \__\:\ \__\/\:\__  /__/:/  /  /\ /__/:/ \__\:\ /__/:/ /:/\:\ %N%
echo(%C% \  \:\/:/~/:/ \  \:\/:/ /:/ \  \:\/:::::/ /__/\ ^|  ^|:^|    \  \:\/\ \  \:\ /  /:/ \  \:\ /  /:/ \  \:\/:/~/:/%N%
echo(%C%  \  \::/ /:/   \  \::/ /:/   \  \::/~~~~  \  \:\^|  ^|:^|     \__\::/  \  \:\  /:/   \  \:\  /:/   \  \::/ /:/%N%
echo(%C%   \__\/ /:/     \  \:\/:/     \  \:\       \  \:\__^|:^|     /__/:/    \  \:\/:/     \  \:\/:/     \__\/ /:/%N%
echo(%C%     /__/:/       \  \::/       \  \:\       \__\::::/      \__\/      \  \::/       \  \::/        /__/:/%N%
echo(%C%     \__\/         \__\/         \__\/           ~~~~                   \__\/         \__\/         \__\/%N%
goto :eof


:ok
echo     [OK] %~1
goto :eof

:pause_back
echo(
pause
goto :eof

:refuse
cls
echo(
echo %R%  [RECUSADO] %~1%N%
echo(
echo   A Nox Otimizacao NAO desativa Defender, SmartScreen, UAC,
echo   Anti-Malware, Windows Update, Firewall nem a rede.
echo   Nenhuma alteracao foi feita.
call :pause_back
goto :eof


:menu_main
call :hdr nox "Selecione o numero da opcao que deseja executar:"
echo   %C%[ 1 ]%N% Criar Ponto de Restauracao               %C%[ 2 ]%N% Otimizar Windows                        
echo   %C%[ 3 ]%N% Otimizacao de Jogos                      %C%[ 4 ]%N% Otimizacao de Perifericos               
echo   %C%[ 5 ]%N% Config. inicializacao do Windows         %C%[ 6 ]%N% Liberar Memoria Ram                     
echo   %C%[ 7 ]%N% Melhorar Conexao/Ping                    %C%[ 8 ]%N% Otimizar AMD                            
echo   %C%[ 9 ]%N% Otimizar NVIDIA                          %C%[ 10 ]%N% Fix de Erros                            
echo   %C%[ 11 ]%N% Debloater                                %C%[ 12 ]%N% Sair                                    
echo(
set "op="
set /p op=Escolha uma opcao: 
if "%op%"=="1" goto do_restore
if "%op%"=="2" goto menu_win
if "%op%"=="3" goto menu_games
if "%op%"=="4" goto menu_hw
if "%op%"=="5" goto do_startup
if "%op%"=="6" goto do_ram
if "%op%"=="7" goto menu_ping
if "%op%"=="8" goto menu_amd
if "%op%"=="9" goto do_nvidia
if "%op%"=="10" goto menu_fix
if "%op%"=="11" goto menu_deb
if "%op%"=="12" goto do_sair
goto menu_main


:menu_win
call :hdr win "Escolha a opcao que voce quer otimizar:"
echo   %C%[ 1 ]%N% Otimizar Energia                         %C%[ 2 ]%N% Desat. Efeitos Visuais                  
echo   %C%[ 3 ]%N% Tweaks de Privacidade                    %C%[ 4 ]%N% Desat. tarefas e servicos de Telemetria 
echo   %C%[ 5 ]%N% Desative TOTALMENTE a XBOX               %C%[ 6 ]%N% Desativar Relatorios de Erro            
echo   %C%[ 7 ]%N% Otimizar ALT +TAB                        %C%[ 8 ]%N% Desative Servicos Inuteis               
echo   %C%[ 9 ]%N% Desat. Hibernacao                        %C%[ 10 ]%N% Otimizar Explorer                       
echo   %C%[ 11 ]%N% Desat. Indexacao de pesquisa             %C%[ 12 ]%N% Ativar God Mode                         
echo   %C%[ 13 ]%N% Desativar Notificacoes                   %C%[ 14 ]%N% Desativar Cortana                       
echo   %C%[ 15 ]%N% Bloquear Envio de feedback automatico    %C%[ 16 ]%N% Desativar SmartScreen                   
echo   %C%[ 17 ]%N% Desativar Overlays (Xbox)                %C%[ 18 ]%N% Resetar Cache de Miniaturas             
echo   %C%[ 19 ]%N% Desat. Prefetch e Superfetch             %C%[ 20 ]%N% Fechar Explorer                         
echo   %C%[ 21 ]%N% Iniciar Explorer                         %C%[ 22 ]%N% Desat. UAC                              
echo   %C%[ 23 ]%N% Desativar Hyper-V (Maquina Virtual)      %C%[ 24 ]%N% Verificar/Arrumar arquivos              
echo   %C%[ 25 ]%N% Limpar Cache de Rede                     %C%[ 26 ]%N% Limpar Cache do Windows                 
echo   %C%[ 27 ]%N% Desat. Anti-Malware                      %C%[ 28 ]%N% Desat. Download Maps Manager            
echo   %C%[ 29 ]%N% Desat. TimeStamp                         %C%[ 30 ]%N% Desativar Bing Search                   
echo   %C%[ 31 ]%N% Desat. Servico de Relogio do Win.        %C%[ 32 ]%N% Desat. Sugestoes de pesquisa            
echo   %C%[ 33 ]%N% Desat. Animacoes no Sistema              %C%[ 34 ]%N% Forcar Windows a priorizar Jogos        
echo   %C%[ 35 ]%N% Desat. Memory Compression                %C%[ 36 ]%N% Desat. Atualizacoes Auto. da Microsoft Store
echo   %C%[ 37 ]%N% REINICIAR PC                             %C%[ 38 ]%N% Menu Principal                          
echo(
set "op="
set /p op=Digite o numero: 
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
if "%op%"=="16" call :refuse "Desativar SmartScreen" & goto menu_win
if "%op%"=="17" goto w_overlay
if "%op%"=="18" goto w_thumbs
if "%op%"=="19" goto w_prefetch
if "%op%"=="20" goto w_killexp
if "%op%"=="21" goto w_startexp
if "%op%"=="22" call :refuse "Desat. UAC" & goto menu_win
if "%op%"=="23" goto w_hyperv
if "%op%"=="24" goto w_sfc
if "%op%"=="25" goto ping_dns
if "%op%"=="26" goto w_temp
if "%op%"=="27" call :refuse "Desat. Anti-Malware" & goto menu_win
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
goto menu_win


:menu_hw
call :hdr hw "Escolha a opcao que voce quer otimizar:"
echo   %C%[ 1 ]%N% Otimizar HDD                             %C%[ 2 ]%N% Otimizar SSD                            
echo   %C%[ 3 ]%N% Verificar Temperatura                    %C%[ 4 ]%N% Otimizar Teclado                        
echo   %C%[ 5 ]%N% Otimizar Mouse                           %C%[ 6 ]%N% Reverter Otimizacao                     
echo    %C%[ 7 ]%N% Voltar ao Menu Principal
echo(
set "op="
set /p op=Digite o numero: 
if "%op%"=="1" goto hw_hdd
if "%op%"=="2" goto hw_ssd
if "%op%"=="3" goto hw_temp
if "%op%"=="4" goto hw_kbd
if "%op%"=="5" goto hw_mouse
if "%op%"=="6" goto hw_undo
if "%op%"=="7" goto menu_main
goto menu_hw

:hw_hdd
cls
echo Otimizar HDD...
fsutil behavior set disablelastaccess 1 >nul 2>&1
fsutil behavior set disable8dot3 1 >nul 2>&1
call :ok "LastAccess e 8.3 desligados"
call :pause_back
goto menu_hw

:hw_ssd
cls
echo Otimizar SSD...
fsutil behavior set disablelastaccess 1 >nul 2>&1
fsutil behavior set DisableDeleteNotify 0 >nul 2>&1
sc stop SysMain >nul 2>&1
sc config SysMain start= disabled >nul 2>&1
call :ok "TRIM ligado, SysMain desligado"
call :pause_back
goto menu_hw

:hw_temp
cls
echo Verificar Temperatura...
powershell -NoProfile -Command "try { Get-CimInstance MSAcpi_ThermalZoneTemperature -Namespace root/wmi -EA Stop | ForEach-Object { '{0:N1} C' -f (($_.CurrentTemperature/10)-273.15) } } catch { Get-CimInstance Win32_TemperatureProbe | Format-List; Write-Host 'Sensor WMI pode nao existir neste PC.' }"
call :pause_back
goto menu_hw

:hw_kbd
cls
echo Otimizar Teclado...
reg add "HKCU\Control Panel\Keyboard" /v KeyboardDelay /t REG_SZ /d 0 /f >nul
reg add "HKCU\Control Panel\Keyboard" /v KeyboardSpeed /t REG_SZ /d 31 /f >nul
call :ok "Repeat delay minimo"
call :pause_back
goto menu_hw

:hw_mouse
cls
echo Otimizar Mouse...
call :_mouse
call :pause_back
goto menu_hw

:hw_undo
cls
echo Reverter Otimizacao de perifericos...
reg add "HKCU\Control Panel\Mouse" /v MouseSpeed /t REG_SZ /d 1 /f >nul
reg add "HKCU\Control Panel\Mouse" /v MouseThreshold1 /t REG_SZ /d 6 /f >nul
reg add "HKCU\Control Panel\Mouse" /v MouseThreshold2 /t REG_SZ /d 10 /f >nul
reg add "HKCU\Control Panel\Keyboard" /v KeyboardDelay /t REG_SZ /d 1 /f >nul
reg add "HKCU\Control Panel\Keyboard" /v KeyboardSpeed /t REG_SZ /d 31 /f >nul
fsutil behavior set disablelastaccess 2 >nul 2>&1
call :ok "Rato/teclado/LastAccess restaurados"
call :pause_back
goto menu_hw


:menu_ping
call :hdr ping "Selecione o numero da opcao que deseja executar:"
echo   %C%[ 1 ]%N% Desativar Economia de Energia da Rede    %C%[ 2 ]%N% Otimizar TCP (Latencia)                 
echo   %C%[ 3 ]%N% Remover limitacao de Rede                %C%[ 4 ]%N% Limpar cache de DNS                     
echo   %C%[ 5 ]%N% Escolher o Melhor DNS                    %C%[ 6 ]%N% Voltar ao Menu Principal                
echo(
set "op="
set /p op=Digite o numero: 
if "%op%"=="1" goto ping_eco
if "%op%"=="2" goto ping_tcp
if "%op%"=="3" goto ping_lim
if "%op%"=="4" goto ping_dns
if "%op%"=="5" goto ping_best
if "%op%"=="6" goto menu_main
goto menu_ping

:ping_eco
cls
echo Desativar Economia de Energia da Rede...
powershell -NoProfile -Command "Get-NetAdapter | ForEach-Object { try { Disable-NetAdapterPowerManagement -Name $_.Name -EA Stop; Write-Host ('    [OK] ' + $_.Name) } catch { Write-Host ('    [AVISO] ' + $_.Name) } }"
echo Rede continua LIGADA. So desligou a poupanca de energia da placa.
call :pause_back
goto menu_ping

:ping_tcp
cls
echo Otimizar TCP / Latencia...
for /f "tokens=*" %%I in ('reg query "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" 2^>nul') do (
    reg add "%%I" /v TcpAckFrequency /t REG_DWORD /d 1 /f >nul 2>&1
    reg add "%%I" /v TCPNoDelay /t REG_DWORD /d 1 /f >nul 2>&1
)
call :ok "TcpAckFrequency=1  TCPNoDelay=1"
call :pause_back
goto menu_ping

:ping_lim
cls
echo Remover limitacao de Rede...
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v NetworkThrottlingIndex /t REG_DWORD /d 4294967295 /f >nul
call :ok "NetworkThrottlingIndex sem limite"
echo Firewall / Wi-Fi / Ethernet NAO foram desligados.
call :pause_back
goto menu_ping

:ping_dns
cls
echo Limpando cache do DNS...
ipconfig /flushdns
echo(
ipconfig /all
call :pause_back
if "%op%"=="25" goto menu_win
goto menu_ping

:ping_best
cls
echo Escolher o Melhor DNS
echo   [1] Cloudflare 1.1.1.1
echo   [2] Google 8.8.8.8
echo   [3] Cancelar
set "d="
set /p d=Numero: 
if "%d%"=="1" powershell -NoProfile -Command "Get-NetAdapter | Where-Object Status -eq 'Up' | ForEach-Object { Set-DnsClientServerAddress -InterfaceIndex $_.ifIndex -ServerAddresses '1.1.1.1','1.0.0.1' }"
if "%d%"=="2" powershell -NoProfile -Command "Get-NetAdapter | Where-Object Status -eq 'Up' | ForEach-Object { Set-DnsClientServerAddress -InterfaceIndex $_.ifIndex -ServerAddresses '8.8.8.8','8.8.4.4' }"
call :ok "DNS aplicado nas placas ativas"
call :pause_back
goto menu_ping


:menu_amd
call :hdr amd "Escolha a opcao que voce quer otimizar:"
echo   %C%[ 1 ]%N% Desativar MPO                            %C%[ 2 ]%N% Desativar AMD Crash Defender            
echo   %C%[ 3 ]%N% Desat. GPU Scheduling                    %C%[ 4 ]%N% Desativar AMD Overlay e Telemetria      
echo   %C%[ 5 ]%N% Instalar o Driver AMD                    %C%[ 6 ]%N% Voltar Ao Menu Principal                
echo(
set "op="
set /p op=Digite o numero: 
if "%op%"=="1" goto amd_mpo
if "%op%"=="2" goto amd_crash
if "%op%"=="3" goto amd_hags
if "%op%"=="4" goto amd_ov
if "%op%"=="5" goto amd_drv
if "%op%"=="6" goto menu_main
goto menu_amd

:amd_mpo
cls
echo Desativar MPO...
reg add "HKLM\SOFTWARE\Microsoft\Windows\Dwm" /v OverlayTestMode /t REG_DWORD /d 5 /f >nul
call :ok "OverlayTestMode=5  (reinicia)"
call :pause_back
goto menu_amd

:amd_crash
cls
echo Desativar AMD Crash Defender...
sc stop "AMD Crash Defender Service" >nul 2>&1
sc config "AMD Crash Defender Service" start= disabled >nul 2>&1
call :ok "AMD Crash Defender"
call :pause_back
goto menu_amd

:amd_hags
cls
echo Desat. GPU Scheduling...
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v HwSchMode /t REG_DWORD /d 1 /f >nul
call :ok "HAGS desligado  (reinicia)"
call :pause_back
goto menu_amd

:amd_ov
cls
echo Desativar AMD Overlay e Telemetria...
sc stop "AMD External Events Utility" >nul 2>&1
sc config "AMD External Events Utility" start= disabled >nul 2>&1
sc stop "AUEPLauncher" >nul 2>&1
call :ok "Overlay / telemetria AMD"
call :pause_back
goto menu_amd

:amd_drv
cls
echo Instalar o Driver AMD
echo Abre o site oficial. Nao descarregamos drivers de terceiros.
start "" "https://www.amd.com/en/support/download/drivers.html"
call :pause_back
goto menu_amd


:menu_fix
call :hdr fix "Escolha a opcao que voce quer otimizar:"
echo   %C%[ 1 ]%N% Fix Loja do windows nao baixa nada       %C%[ 2 ]%N% Fix Anticheat Bloqueando Jogo           
echo   %C%[ 3 ]%N% Fix Pc nao desliga (Fica so encerrando)  %C%[ 4 ]%N% Fix Tela preta apos boot                
echo   %C%[ 5 ]%N% Fix Notebook nao sai do modo aviao       %C%[ 6 ]%N% Fix Bluetooth Parou                     
echo   %C%[ 7 ]%N% Fix AUDIO                                %C%[ 8 ]%N% Fix Reativar WI-FI                      
echo   %C%[ 9 ]%N% Fix Audio Bugado                         %C%[ 10 ]%N% Fix Servicos Xbox                       
echo   %C%[ 11 ]%N% Fix Xbox app e Game Pass                 %C%[ 12 ]%N% Fix Erros de Disco                      
echo   %C%[ 13 ]%N% Fix de Rede e Internet                   %C%[ 14 ]%N% Fix Menu iniciar e Barra de Tarefas     
echo   %C%[ 15 ]%N% Fix Microsoft Store                      %C%[ 16 ]%N% Fix Windows Update                      
echo   %C%[ 17 ]%N% Fix de arquivos Corrompidos              %C%[ 18 ]%N% Voltar ao Menu Principal                
echo(
set "op="
set /p op=Digite o numero: 
if "%op%"=="1" goto fx_loja
if "%op%"=="2" goto fx_ac
if "%op%"=="3" goto fx_off
if "%op%"=="4" goto fx_black
if "%op%"=="5" goto fx_aviao
if "%op%"=="6" goto fx_bt
if "%op%"=="7" goto fx_audio
if "%op%"=="8" goto fx_wifi
if "%op%"=="9" goto fx_audio
if "%op%"=="10" goto fx_xsvc
if "%op%"=="11" goto fx_xapp
if "%op%"=="12" goto fx_disk
if "%op%"=="13" goto fx_net
if "%op%"=="14" goto fx_bar
if "%op%"=="15" goto fx_loja
if "%op%"=="16" goto fx_wu
if "%op%"=="17" goto w_sfc
if "%op%"=="18" goto menu_main
goto menu_fix

:fx_loja
cls
echo Fix Microsoft Store / loja nao baixa...
wsreset.exe
call :ok "wsreset"
call :pause_back
goto menu_fix

:fx_ac
cls
echo Fix Anticheat — a LIGAR servicos que jogos pedem...
sc config Winmgmt start= auto >nul 2>&1
sc start Winmgmt >nul 2>&1
sc config PlugPlay start= auto >nul 2>&1
call :ok "WMI / PlugPlay"
echo Defender NAO foi desligado.
call :pause_back
goto menu_fix

:fx_off
cls
echo Fix PC nao desliga...
powercfg /hibernate off >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v HiberbootEnabled /t REG_DWORD /d 0 /f >nul
call :ok "Arranque rapido desligado"
call :pause_back
goto menu_fix

:fx_black
cls
echo Fix Tela preta — a reiniciar Explorer...
taskkill /f /im explorer.exe >nul 2>&1
timeout /t 1 /nobreak >nul
start explorer.exe
call :ok "Explorer"
call :pause_back
goto menu_fix

:fx_aviao
cls
echo Fix modo aviao...
powershell -NoProfile -Command "Get-NetAdapter | Enable-NetAdapter -Confirm:$false -EA SilentlyContinue"
call :ok "Adaptadores reativados"
call :pause_back
goto menu_fix

:fx_bt
cls
echo Fix Bluetooth...
sc config bthserv start= demand >nul 2>&1
sc start bthserv >nul 2>&1
call :ok "bthserv"
call :pause_back
goto menu_fix

:fx_audio
cls
echo Fix AUDIO...
net stop Audiosrv >nul 2>&1
net start Audiosrv >nul 2>&1
net start AudioEndpointBuilder >nul 2>&1
call :ok "Audio services"
call :pause_back
goto menu_fix

:fx_wifi
cls
echo Fix Reativar WI-FI...
powershell -NoProfile -Command "Get-NetAdapter | Where-Object { $_.Name -match 'Wi-Fi|WiFi|Wireless' } | Enable-NetAdapter -Confirm:$false -EA SilentlyContinue; Write-Host '    [OK] Wi-Fi'"
call :pause_back
goto menu_fix

:fx_xsvc
cls
echo Fix Servicos Xbox — a LIGAR...
for %%S in (XblAuthManager XblGameSave XboxNetApiSvc XboxGipSvc) do (
    sc config %%S start= demand >nul 2>&1
    sc start %%S >nul 2>&1
    call :ok "%%S"
)
call :pause_back
goto menu_fix

:fx_xapp
cls
echo Fix Xbox app / Game Pass...
powershell -NoProfile -Command "Get-AppxPackage Microsoft.XboxApp,Microsoft.Xbox.TCUI,Microsoft.XboxGamingOverlay,Microsoft.GamingApp -EA SilentlyContinue | ForEach-Object { Add-AppxPackage -DisableDevelopmentMode -Register ($_.InstallLocation + '\AppxManifest.xml') -EA SilentlyContinue }; Write-Host '    [OK] re-registo'"
call :pause_back
goto menu_fix

:fx_disk
cls
echo Fix Erros de Disco...
chkdsk C: /scan
call :pause_back
goto menu_fix

:fx_net
cls
echo Fix de Rede e Internet...
ipconfig /flushdns
echo Rede continua ligada.
call :pause_back
goto menu_fix

:fx_bar
cls
echo Fix Menu iniciar e Barra de Tarefas...
taskkill /f /im explorer.exe >nul 2>&1
timeout /t 1 /nobreak >nul
start explorer.exe
call :ok "Explorer reiniciado"
call :pause_back
goto menu_fix

:fx_wu
cls
echo Fix Windows Update — a REPARAR, nao a desligar...
net start wuauserv >nul 2>&1
net start bits >nul 2>&1
net start usosvc >nul 2>&1
call :ok "wuauserv / bits / usosvc a correr"
call :pause_back
goto menu_fix


:menu_deb
call :hdr deb "Escolha qual Bloatware Remover:"
echo   %C%[ 1 ]%N% Usar todos (CUIDADO)                     %C%[ 2 ]%N% Remover officehub                       
echo   %C%[ 3 ]%N% Remover Cortana                          %C%[ 4 ]%N% Remover Copilot                         
echo   %C%[ 5 ]%N% Remover Loja do Windows                  %C%[ 6 ]%N% Remover a Xbox                          
echo   %C%[ 7 ]%N% Remover Windows Photos                   %C%[ 8 ]%N% Remover Windows People                  
echo   %C%[ 9 ]%N% Remover Windows Music                    %C%[ 10 ]%N% Remover Windows Messaging               
echo   %C%[ 11 ]%N% Remover Windows Maps                     %C%[ 12 ]%N% Remover Windows Groove                  
echo   %C%[ 13 ]%N% Remover Windows GetStarted               %C%[ 14 ]%N% Remover Calendario                      
echo   %C%[ 15 ]%N% Remover Calculadora                      %C%[ 16 ]%N% Remover Windows Alarms                  
echo   %C%[ 17 ]%N% Remover 3DBuilder                        %C%[ 18 ]%N% Remover Windows Camera                  
echo   %C%[ 19 ]%N% Remover Noticias                         %C%[ 20 ]%N% Remover OneDrive                        
echo   %C%[ 21 ]%N% Remover Anuncios e sugestoes             %C%[ 22 ]%N% Remover Emails                          
echo   %C%[ 23 ]%N% Remover Outlook                          %C%[ 24 ]%N% Remover Assistencia Rapida              
echo   %C%[ 25 ]%N% Remover Microsoft To do                  %C%[ 26 ]%N% Remover Solitaire e jogos Casuais       
echo   %C%[ 27 ]%N% Remover Clima                            %C%[ 28 ]%N% Remover Hub de Comentarios              
echo   %C%[ 29 ]%N% Reverter Debloaters                      %C%[ 30 ]%N% Voltar Ao Menu Principal                
echo(
set "op="
set /p op=Escolha uma opcao: 
if "%op%"=="1" goto db_all
if "%op%"=="2" call :appx Microsoft.MicrosoftOfficeHub & goto menu_deb
if "%op%"=="3" goto db_cortana
if "%op%"=="4" goto db_copilot
if "%op%"=="5" call :refuse "Remover Loja do Windows" & goto menu_deb
if "%op%"=="6" goto db_xbox
if "%op%"=="7" call :appx Microsoft.Windows.Photos & goto menu_deb
if "%op%"=="8" call :appx Microsoft.People & goto menu_deb
if "%op%"=="9" call :appx Microsoft.ZuneMusic & goto menu_deb
if "%op%"=="10" call :appx Microsoft.Messaging & goto menu_deb
if "%op%"=="11" call :appx Microsoft.WindowsMaps & goto menu_deb
if "%op%"=="12" call :appx Microsoft.ZuneVideo & goto menu_deb
if "%op%"=="13" call :appx Microsoft.GetStarted & goto menu_deb
if "%op%"=="14" call :appx microsoft.windowscommunicationsapps & goto menu_deb
if "%op%"=="15" call :refuse "Remover Calculadora" & goto menu_deb
if "%op%"=="16" call :appx Microsoft.WindowsAlarms & goto menu_deb
if "%op%"=="17" call :appx Microsoft.Microsoft3DViewer & goto menu_deb
if "%op%"=="18" call :appx Microsoft.WindowsCamera & goto menu_deb
if "%op%"=="19" call :appx Microsoft.BingNews & goto menu_deb
if "%op%"=="20" goto db_onedrive
if "%op%"=="21" goto w_privacy
if "%op%"=="22" call :appx microsoft.windowscommunicationsapps & goto menu_deb
if "%op%"=="23" call :appx Microsoft.OutlookForWindows & goto menu_deb
if "%op%"=="24" call :appx MicrosoftCorporationII.QuickAssist & goto menu_deb
if "%op%"=="25" call :appx Microsoft.Todos & goto menu_deb
if "%op%"=="26" call :appx Microsoft.MicrosoftSolitaireCollection & goto menu_deb
if "%op%"=="27" call :appx Microsoft.BingWeather & goto menu_deb
if "%op%"=="28" call :appx Microsoft.WindowsFeedbackHub & goto menu_deb
if "%op%"=="29" goto db_undo
if "%op%"=="30" goto menu_main
goto menu_deb

:appx
cls
echo A remover %~1 ...
powershell -NoProfile -Command "Get-AppxPackage -Name '%~1' -EA SilentlyContinue | Remove-AppxPackage -EA SilentlyContinue; Write-Host '    [OK] pedido enviado'"
call :pause_back
goto :eof

:db_all
cls
echo Usar todos — EXCEPTO Loja, Calculadora, Defender.
call :_tips
powershell -NoProfile -Command "$n=@('Microsoft.MicrosoftOfficeHub','Microsoft.Windows.Photos','Microsoft.People','Microsoft.ZuneMusic','Microsoft.Messaging','Microsoft.WindowsMaps','Microsoft.ZuneVideo','Microsoft.GetStarted','Microsoft.WindowsAlarms','Microsoft.Microsoft3DViewer','Microsoft.BingNews','Microsoft.OutlookForWindows','Microsoft.Todos','Microsoft.MicrosoftSolitaireCollection','Microsoft.BingWeather','Microsoft.WindowsFeedbackHub'); foreach($x in $n){ Get-AppxPackage -Name $x -EA SilentlyContinue | Remove-AppxPackage -EA SilentlyContinue }; Write-Host '    [OK] bloat removido'"
call :pause_back
goto menu_deb

:db_cortana
cls
echo Remover Cortana...
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v AllowCortana /t REG_DWORD /d 0 /f >nul
call :ok "Cortana off"
call :pause_back
goto menu_deb

:db_copilot
cls
echo Remover Copilot...
reg add "HKCU\Software\Policies\Microsoft\Windows\WindowsCopilot" /v TurnOffWindowsCopilot /t REG_DWORD /d 1 /f >nul
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v ShowCopilotButton /t REG_DWORD /d 0 /f >nul
call :ok "Copilot desligado na barra"
call :pause_back
goto menu_deb

:db_xbox
cls
echo Remover Xbox — so overlay/DVR, NAO desinstala Game Pass.
call :_xbox
call :pause_back
goto menu_deb

:db_onedrive
cls
echo Remover OneDrive do arranque (ficheiros na pasta NAO apagados)...
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\StartupApproved\Run" /v OneDrive /t REG_BINARY /d 030000000000000000000000 /f >nul 2>&1
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v OneDrive /f >nul 2>&1
call :ok "OneDrive fora do arranque"
call :pause_back
goto menu_deb

:db_undo
cls
echo Reverter Debloaters: instala outra vez a partir da Microsoft Store.
echo Ou usa o ponto de restauracao Nox Otimizacao.
start ms-windows-store:
call :pause_back
goto menu_deb


:menu_xbox
call :hdr xbox "MENU DE OTIMIZACAO DO PC"
echo   [1] Iniciar Otimizacao (Remover Xbox)
echo   [2] Reverter Otimizacao (Restaurar Xbox)
echo   [3] Voltar ao Menu Principal
echo(
set "op="
set /p op=Digite a opcao desejada: 
if "%op%"=="1" goto xbox_off
if "%op%"=="2" goto xbox_on
if "%op%"=="3" goto menu_main
goto menu_xbox

:xbox_off
cls
echo Remover Xbox / overlays...
call :_xbox
for %%S in (XblGameSave XboxNetApiSvc XboxGipSvc) do (
    sc stop %%S >nul 2>&1
    sc config %%S start= disabled >nul 2>&1
    call :ok %%S
)
echo XblAuthManager ficou ligado.
call :pause_back
goto menu_xbox

:xbox_on
cls
echo Restaurar Xbox...
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v AppCaptureEnabled /t REG_DWORD /d 1 /f >nul
reg add "HKCU\System\GameConfigStore" /v GameDVR_Enabled /t REG_DWORD /d 1 /f >nul
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\GameDVR" /v AllowGameDVR /f >nul 2>&1
for %%S in (XblGameSave XboxNetApiSvc XboxGipSvc) do (
    sc config %%S start= demand >nul 2>&1
    call :ok %%S
)
call :pause_back
goto menu_xbox


:menu_svc
call :hdr svc "OTIMIZADOR DE SERVICOS WINDOWS"
echo   [1] Desativar Servicos
echo   [2] Reverter Otimizacao
echo   [3] Voltar ao Menu Principal
echo(
set "op="
set /p op=Digite a opcao desejada: 
if "%op%"=="1" goto svc_off
if "%op%"=="2" goto svc_on
if "%op%"=="3" goto menu_main
goto menu_svc

:svc_off
cls
echo Desativar servicos opcionais...
for %%S in (Fax RemoteRegistry RetailDemo WMPNetworkSvc diagnosticshub.standardcollector.service MapsBroker CscService wisvc) do (
    sc stop %%S >nul 2>&1
    sc config %%S start= disabled >nul 2>&1
    call :ok %%S
)
call :pause_back
goto menu_svc

:svc_on
cls
echo Reverter servicos...
for %%S in (Fax RemoteRegistry RetailDemo WMPNetworkSvc diagnosticshub.standardcollector.service MapsBroker CscService wisvc) do (
    sc config %%S start= demand >nul 2>&1
    call :ok %%S
)
call :pause_back
goto menu_svc


:menu_games
call :hdr games "Escolha o jogo que voce quer priorizar:"
echo   %C%[ 1 ]%N% Fortnite                                 %C%[ 2 ]%N% Gta V                                   
echo   %C%[ 3 ]%N% FiveM                                    %C%[ 4 ]%N% CS2                                     
echo   %C%[ 5 ]%N% Minecraft                                %C%[ 6 ]%N% Valorant                                
echo   %C%[ 7 ]%N% League of Legends                        %C%[ 8 ]%N% Warzone                                 
echo   %C%[ 9 ]%N% Apex Legends                             %C%[ 10 ]%N% Roblox                                  
echo   %C%[ 11 ]%N% God Of War (2018 e ragnarok)             %C%[ 12 ]%N% MTA                                     
echo   %C%[ 13 ]%N% Euro Truck Simulator (1 e 2)             %C%[ 14 ]%N% Rainbow Six Siege                       
echo   %C%[ 15 ]%N% Cult of the Lamb                         %C%[ 16 ]%N% ULTRAKILL                               
echo   %C%[ 17 ]%N% Blood Strike                             %C%[ 18 ]%N% Arena Breakout                          
echo   %C%[ 19 ]%N% Resident Evil 4 Remake                   %C%[ 20 ]%N% Resident Evil 2 Remake                  
echo    %C%[ 21 ]%N% Tweaks globais                         %C%[ 22 ]%N% Menu Principal
echo(
set "op="
set /p op=Digite o numero: 
if "%op%"=="1" call :prio Fortnite FortniteClient-Win64-Shipping.exe & goto menu_games
if "%op%"=="2" call :prio "GTA V" GTA5.exe & goto menu_games
if "%op%"=="3" call :prio FiveM FiveM.exe & goto menu_games
if "%op%"=="4" call :prio CS2 cs2.exe & goto menu_games
if "%op%"=="5" call :prio Minecraft Minecraft.Windows.exe & goto menu_games
if "%op%"=="6" call :prio Valorant VALORANT-Win64-Shipping.exe & goto menu_games
if "%op%"=="7" call :prio LoL "League of Legends.exe" & goto menu_games
if "%op%"=="8" call :prio Warzone cod.exe & goto menu_games
if "%op%"=="9" call :prio Apex r5apex.exe & goto menu_games
if "%op%"=="10" call :prio Roblox RobloxPlayerBeta.exe & goto menu_games
if "%op%"=="11" call :prio GoW GoW.exe & goto menu_games
if "%op%"=="12" call :prio MTA "Multi Theft Auto.exe" & goto menu_games
if "%op%"=="13" call :prio ETS2 eurotrucks2.exe & goto menu_games
if "%op%"=="14" call :prio R6 RainbowSix.exe & goto menu_games
if "%op%"=="15" call :prio COTL "Cult Of The Lamb.exe" & goto menu_games
if "%op%"=="16" call :prio ULTRAKILL ULTRAKILL.exe & goto menu_games
if "%op%"=="17" call :prio BloodStrike BloodStrike.exe & goto menu_games
if "%op%"=="18" call :prio ArenaBreakout ArenaBreakout.exe & goto menu_games
if "%op%"=="19" call :prio RE4 re4.exe & goto menu_games
if "%op%"=="20" call :prio RE2 re2.exe & goto menu_games
if "%op%"=="21" goto do_games_global
if "%op%"=="22" goto menu_main
goto menu_games


:do_restore
cls
echo A criar ponto de restauracao...
powershell -NoProfile -ExecutionPolicy Bypass -Command "try { Checkpoint-Computer -Description 'Nox Otimizacao' -RestorePointType MODIFY_SETTINGS; Write-Host '[OK] Ponto criado.' } catch { Write-Host '[AVISO] Nao foi possivel criar o ponto.'; Write-Host $_.Exception.Message }"
call :pause_back
goto menu_main

:do_games_global
cls
echo Tweaks globais de jogos...
call :_gamemode
call :_hags_on
call :_mmcss
call :pause_back
goto menu_games

:do_startup
cls
echo Config. inicializacao...
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Serialize" /v StartupDelayInMSec /t REG_DWORD /d 0 /f >nul
call :ok "Atraso de arranque = 0"
call :pause_back
goto menu_main

:do_ram
cls
echo Limpando Memoria ram...
echo Limpando o cache de memoria RAM...
del /q /f /s "%TEMP%\*" >nul 2>&1
rundll32.exe advapi32.dll,ProcessIdleTasks
call :ok "TEMP limpo + idle tasks"
powershell -NoProfile -Command "$o=Get-CimInstance Win32_OperatingSystem; Write-Host ('RAM livre: {0:N0} MB' -f ($o.FreePhysicalMemory/1024))"
call :pause_back
goto menu_main

:do_nvidia
cls
echo Otimizar NVIDIA...
call :_hags_on
sc query NvTelemetryContainer >nul 2>&1 && (
    sc stop NvTelemetryContainer >nul 2>&1
    sc config NvTelemetryContainer start= disabled >nul 2>&1
    call :ok "NvTelemetry desligado"
)
call :pause_back
goto menu_main

:do_sair
cls
echo Nox Otimizacao - ate a proxima.
pause
endlocal
exit /b 0


:w_energia
cls
echo Otimizar Energia...
call :_energia
call :pause_back
goto menu_win
:w_visual
cls
echo Desat. Efeitos Visuais...
call :_visual
call :pause_back
goto menu_win
:w_privacy
cls
echo Tweaks de Privacidade...
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /v Enabled /t REG_DWORD /d 0 /f >nul
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Privacy" /v TailoredExperiencesWithDiagnosticDataEnabled /t REG_DWORD /d 0 /f >nul
call :_tips
call :ok "Anuncios / experiencias desligados"
call :pause_back
goto menu_win
:w_telemetry
cls
echo Telemetria...
sc stop DiagTrack >nul 2>&1
sc config DiagTrack start= disabled >nul 2>&1
sc stop dmwappushservice >nul 2>&1
sc config dmwappushservice start= disabled >nul 2>&1
call :ok "DiagTrack / dmwappush"
echo Update e Defender intactos.
call :pause_back
goto menu_win
:w_wer
cls
reg add "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting" /v Disabled /t REG_DWORD /d 1 /f >nul
call :ok "WER desligado"
call :pause_back
goto menu_win
:w_alttab
cls
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /v AltTabSettings /t REG_DWORD /d 1 /f >nul
call :ok "ALT+TAB classico"
call :pause_back
goto menu_win
:w_hiber
cls
powercfg -h off >nul 2>&1
call :ok "Hibernacao off"
call :pause_back
goto menu_win
:w_explorer
cls
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v SeparateProcess /t REG_DWORD /d 1 /f >nul
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v DisablePreviewDesktop /t REG_DWORD /d 1 /f >nul
call :ok "Explorer otimizado"
call :pause_back
goto menu_win
:w_searchidx
cls
sc stop WSearch >nul 2>&1
sc config WSearch start= disabled >nul 2>&1
call :ok "WSearch off"
call :pause_back
goto menu_win
:w_godmode
cls
mkdir "%USERPROFILE%\Desktop\GodMode.{ED7BA470-8E54-465E-825C-99712043E01C}" >nul 2>&1
call :ok "God Mode no Ambiente de Trabalho"
call :pause_back
goto menu_win
:w_notif
cls
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\PushNotifications" /v ToastEnabled /t REG_DWORD /d 0 /f >nul
call :_tips
call :ok "Toasts off"
call :pause_back
goto menu_win
:w_cortana
cls
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v AllowCortana /t REG_DWORD /d 0 /f >nul
call :ok "Cortana off"
call :pause_back
goto menu_win
:w_feedback
cls
reg add "HKCU\SOFTWARE\Microsoft\Siuf\Rules" /v NumberOfSIUFInPeriod /t REG_DWORD /d 0 /f >nul
call :ok "Feedback off"
call :pause_back
goto menu_win
:w_overlay
cls
call :_xbox
call :pause_back
goto menu_win
:w_thumbs
cls
taskkill /f /im explorer.exe >nul 2>&1
timeout /t 1 /nobreak >nul
del /f /s /q "%LocalAppData%\Microsoft\Windows\Explorer\thumbcache_*.db" >nul 2>&1
start explorer.exe
call :ok "Miniaturas reset"
call :pause_back
goto menu_win
:w_prefetch
cls
sc stop SysMain >nul 2>&1
sc config SysMain start= disabled >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v EnablePrefetcher /t REG_DWORD /d 0 /f >nul
call :ok "Prefetch / SysMain off"
call :pause_back
goto menu_win
:w_killexp
cls
taskkill /f /im explorer.exe >nul 2>&1
call :ok "Explorer fechado  -  opcao 21 para voltar"
call :pause_back
goto menu_win
:w_startexp
cls
start explorer.exe
call :ok "Explorer iniciado"
call :pause_back
goto menu_win
:w_hyperv
cls
bcdedit /set hypervisorlaunchtype off >nul 2>&1
call :ok "Hyper-V off  (reinicia)"
call :pause_back
goto menu_win
:w_sfc
cls
echo Verificar arquivos — pode demorar.
sfc /scannow
call :pause_back
goto menu_win
:w_temp
cls
echo Limpando cache do Windows...
del /q /f /s "%TEMP%\*" >nul 2>&1
call :ok "TEMP do utilizador"
call :pause_back
goto menu_win
:w_maps
cls
sc stop MapsBroker >nul 2>&1
sc config MapsBroker start= disabled >nul 2>&1
call :ok "MapsBroker"
call :pause_back
goto menu_win
:w_ntfs
cls
fsutil behavior set disablelastaccess 1 >nul 2>&1
call :ok "TimeStamp / last access off"
call :pause_back
goto menu_win
:w_bing
cls
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v BingSearchEnabled /t REG_DWORD /d 0 /f >nul
call :ok "Bing Search off"
call :pause_back
goto menu_win
:w_w32time
cls
sc stop W32Time >nul 2>&1
sc config W32Time start= disabled >nul 2>&1
call :ok "W32Time off"
call :pause_back
goto menu_win
:w_searchsug
cls
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\SearchSettings" /v IsDynamicSearchBoxEnabled /t REG_DWORD /d 0 /f >nul
call :ok "Sugestoes off"
call :pause_back
goto menu_win
:w_mmcss
cls
call :_mmcss
call :_gamemode
call :pause_back
goto menu_win
:w_mmcomp
cls
powershell -NoProfile -Command "Disable-MMAgent -MemoryCompression -EA SilentlyContinue; Write-Host '[OK] Memory Compression off'"
call :pause_back
goto menu_win
:w_store
cls
reg add "HKLM\SOFTWARE\Policies\Microsoft\WindowsStore" /v AutoDownload /t REG_DWORD /d 2 /f >nul
call :ok "Store auto-download off  (Windows Update intacto)"
call :pause_back
goto menu_win
:w_reboot
cls
set "ans="
set /p ans=Reiniciar o PC? Escreve S: 
if /I not "%ans%"=="S" goto menu_win
shutdown /r /t 5 /c "Nox Otimizacao"
goto menu_win


:prio
cls
echo Priorizar %~1 ...
call :_gamemode
call :_hags_on
call :_mmcss
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%~2\PerfOptions" /v CpuPriorityClass /t REG_DWORD /d 3 /f >nul
reg add "HKCU\Software\Microsoft\DirectX\UserGpuPreferences" /v "%~2" /t REG_SZ /d "GpuPreference=2;" /f >nul
call :ok "%~1 CPU High + GPU"
call :pause_back
goto :eof

:_mouse
reg add "HKCU\Control Panel\Mouse" /v MouseSpeed /t REG_SZ /d 0 /f >nul
reg add "HKCU\Control Panel\Mouse" /v MouseThreshold1 /t REG_SZ /d 0 /f >nul
reg add "HKCU\Control Panel\Mouse" /v MouseThreshold2 /t REG_SZ /d 0 /f >nul
call :ok "Aceleracao do rato off"
goto :eof

:_visual
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" /v VisualFXSetting /t REG_DWORD /d 3 /f >nul
reg add "HKCU\Control Panel\Desktop" /v UserPreferencesMask /t REG_BINARY /d 9012038010000000 /f >nul
reg add "HKCU\Control Panel\Desktop\WindowMetrics" /v MinAnimate /t REG_SZ /d 0 /f >nul
reg add "HKCU\Control Panel\Desktop" /v DragFullWindows /t REG_SZ /d 0 /f >nul
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v EnableTransparency /t REG_DWORD /d 0 /f >nul
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v TaskbarAnimations /t REG_DWORD /d 0 /f >nul
reg add "HKCU\Software\Microsoft\Windows\DWM" /v EnableAeroPeek /t REG_DWORD /d 0 /f >nul
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DWM" /v DisallowAnimations /t REG_DWORD /d 1 /f >nul
taskkill /f /im explorer.exe >nul 2>&1
timeout /t 1 /nobreak >nul
start explorer.exe
call :ok "Animacoes / transparencia / Peek off"
goto :eof

:_energia
powercfg -list | findstr /I /C:"e9a42b02-d5df-448d-aa00-03f14749eb61" >nul
if errorlevel 1 powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61 >nul 2>&1
powercfg -setactive e9a42b02-d5df-448d-aa00-03f14749eb61 >nul 2>&1
if errorlevel 1 powercfg -setactive 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c >nul 2>&1
powercfg -setacvalueindex SCHEME_CURRENT SUB_PROCESSOR PROCTHROTTLEMIN 100 >nul 2>&1
powercfg -setacvalueindex SCHEME_CURRENT SUB_PROCESSOR PROCTHROTTLEMAX 100 >nul 2>&1
powercfg -setactive SCHEME_CURRENT >nul 2>&1
call :ok "Plano alto desempenho / Ultimate"
goto :eof

:_gamemode
reg add "HKCU\Software\Microsoft\GameBar" /v AutoGameModeEnabled /t REG_DWORD /d 1 /f >nul
reg add "HKCU\Software\Microsoft\GameBar" /v AllowAutoGameMode /t REG_DWORD /d 1 /f >nul
call :_xbox
call :ok "Game Mode on"
goto :eof

:_xbox
reg add "HKCU\Software\Microsoft\GameBar" /v UseNexusForGameBarEnabled /t REG_DWORD /d 0 /f >nul
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v AppCaptureEnabled /t REG_DWORD /d 0 /f >nul
reg add "HKCU\System\GameConfigStore" /v GameDVR_Enabled /t REG_DWORD /d 0 /f >nul
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\GameDVR" /v AllowGameDVR /t REG_DWORD /d 0 /f >nul
call :ok "Game DVR / overlay off"
goto :eof

:_hags_on
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v HwSchMode /t REG_DWORD /d 2 /f >nul
call :ok "HAGS on"
goto :eof

:_mmcss
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "GPU Priority" /t REG_DWORD /d 8 /f >nul
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v Priority /t REG_DWORD /d 6 /f >nul
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Scheduling Category" /t REG_SZ /d High /f >nul
call :ok "Prioridade jogos"
goto :eof

:_tips
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SoftLandingEnabled /t REG_DWORD /d 0 /f >nul
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SystemPaneSuggestionsEnabled /t REG_DWORD /d 0 /f >nul
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v TaskbarDa /t REG_DWORD /d 0 /f >nul
reg add "HKLM\SOFTWARE\Policies\Microsoft\Dsh" /v AllowNewsAndInterests /t REG_DWORD /d 0 /f >nul
call :ok "Dicas / widgets off"
goto :eof
