@echo off
echo off
setlocal EnableExtensions EnableDelayedExpansion
:: VENIX Otimizacao — SEM BOM. @echo off TEM de ser o primeiro comando ASCII.
:: Defender / SmartScreen / Anti-Malware: so nas opcoes 16 e 27, com S.
:: Nao desativa UAC, Windows Update, Firewall nem a rede.

title VENIX Otimizacao
color 0F
mode con cols=140 lines=52 >nul 2>&1
chcp 65001 >nul
echo off

for /F %%A in ('echo prompt $E^| cmd') do set "E=%%A"
set "C=%E%[38;5;208m"
set "Y=%E%[38;5;220m"
set "W=%E%[97m"
set "G=%E%[90m"
set "D=%E%[38;5;240m"
set "R=%E%[91m"
set "P=%E%[95m"
set "K=%E%[38;5;82m"
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
call :bar_top
call :art_%~1
call :bar_bot
echo(
goto :eof

:bar_top
echo(%C%               ╔════════════════════════════════════════════════════════════════════════════════════════════════════════════╗%N%
goto :eof

:bar_bot
echo(%C%               ╚════════════════════════════════════════════════════════════════════════════════════════════════════════════╝%N%
goto :eof

:ask
echo(
set "op="
set /p op=                                               %C%^> %N%
goto :eof

:art_venix
echo(%C%               ║                                                                                                            ║%N%
echo(%C%               ║                                     _    _________   _______  __                                           ║%N%
echo(%C%               ║                                    ^| ^|  / / ____/ ^| / /  _/ ^|/ /                                           ║%N%
echo(%C%               ║                                    ^| ^| / / __/ /  ^|/ // / ^|   /                                            ║%N%
echo(%C%               ║                                    ^| ^|/ / /___/ /^|  // / /   ^|                                             ║%N%
echo(%C%               ║                                    ^|___/_____/_/ ^|_/___//_/^|_^|                                             ║%N%
echo(%C%               ║                                                                                                            ║%N%
echo(%C%               ║                                    O T I M I Z A C A O   W I N D O W S                                     ║%N%
echo(%C%               ║                                                                                                            ║%N%
goto :eof

:art_win
echo(%C%               ║                                                                                                            ║%N%
echo(%C%               ║                               _       _______   ______  ____ _       _______                               ║%N%
echo(%C%               ║                              ^| ^|     / /  _/ ^| / / __ \/ __ \ ^|     / / ___/                               ║%N%
echo(%C%               ║                              ^| ^| /^| / // //  ^|/ / / / / / / / ^| /^| / /\__ \                                ║%N%
echo(%C%               ║                              ^| ^|/ ^|/ // // /^|  / /_/ / /_/ /^| ^|/ ^|/ /___/ /                                ║%N%
echo(%C%               ║                              ^|__/^|__/___/_/ ^|_/_____/\____/ ^|__/^|__//____/                                 ║%N%
echo(%C%               ║                                                                                                            ║%N%
goto :eof

:art_games
echo(%C%               ║                                                                                                            ║%N%
echo(%C%               ║                                             ______  __________  _____                                      ║%N%
echo(%C%               ║                                            / / __ \/ ____/ __ \/ ___/                                      ║%N%
echo(%C%               ║                                       __  / / / / / / __/ / / /\__ \                                       ║%N%
echo(%C%               ║                                      / /_/ / /_/ / /_/ / /_/ /___/ /                                       ║%N%
echo(%C%               ║                                      \____/\____/\____/\____//____/                                        ║%N%
echo(%C%               ║                                                                                                            ║%N%
goto :eof

:art_hw
echo(%C%               ║                                                                                                            ║%N%
echo(%C%               ║                            _   _    _    ____  ______        ___    ____  _____                            ║%N%
echo(%C%               ║                           ^| ^| ^| ^|  / \  ^|  _ \^|  _ \ \      / / \  ^|  _ \^| ____^|                           ║%N%
echo(%C%               ║                           ^| ^|_^| ^| / _ \ ^| ^|_) ^| ^| ^| \ \ /\ / / _ \ ^| ^|_) ^|  _^|                             ║%N%
echo(%C%               ║                           ^|  _  ^|/ ___ \^|  _ ^<^| ^|_^| ^|\ V  V / ___ \^|  _ ^<^| ^|___                            ║%N%
echo(%C%               ║                           ^|_^| ^|_/_/   \_\_^| \_\____/  \_/\_/_/   \_\_^| \_\_____^|                           ║%N%
echo(%C%               ║                                                                                                            ║%N%
goto :eof

:art_ping
echo(%C%               ║                                                                                                            ║%N%
echo(%C%               ║                                             ____  _____   ________                                         ║%N%
echo(%C%               ║                                            / __ \/  _/ ^| / / ____/                                         ║%N%
echo(%C%               ║                                           / /_/ // //  ^|/ / / __                                           ║%N%
echo(%C%               ║                                          / ____// // /^|  / /_/ /                                           ║%N%
echo(%C%               ║                                         /_/   /___/_/ ^|_/\____/                                            ║%N%
echo(%C%               ║                                                                                                            ║%N%
goto :eof

:art_amd
echo(%C%               ║                                                                                                            ║%N%
echo(%C%               ║                                              ___    __  _______                                            ║%N%
echo(%C%               ║                                             /   ^|  /  ^|/  / __ \                                           ║%N%
echo(%C%               ║                                            / /^| ^| / /^|_/ / / / /                                           ║%N%
echo(%C%               ║                                           / ___ ^|/ /  / / /_/ /                                            ║%N%
echo(%C%               ║                                          /_/  ^|_/_/  /_/_____/                                             ║%N%
echo(%C%               ║                                                                                                            ║%N%
goto :eof

:art_fix
echo(%C%               ║                                                                                                            ║%N%
echo(%C%               ║                                                ___________  __                                             ║%N%
echo(%C%               ║                                               / ____/  _/ ^|/ /                                             ║%N%
echo(%C%               ║                                              / /_   / / ^|   /                                              ║%N%
echo(%C%               ║                                             / __/ _/ / /   ^|                                               ║%N%
echo(%C%               ║                                            /_/   /___//_/^|_^|                                               ║%N%
echo(%C%               ║                                                                                                            ║%N%
goto :eof

:art_deb
echo(%C%               ║                                                                                                            ║%N%
echo(%C%               ║                                  ____  _____ ____  _     ___    _  _____                                   ║%N%
echo(%C%               ║                                 ^|  _ \^| ____^| __ )^| ^|   / _ \  / \^|_   _^|                                  ║%N%
echo(%C%               ║                                 ^| ^| ^| ^|  _^| ^|  _ \^| ^|  ^| ^| ^| ^|/ _ \ ^| ^|                                    ║%N%
echo(%C%               ║                                 ^| ^|_^| ^| ^|___^| ^|_) ^| ^|__^| ^|_^| / ___ \^| ^|                                    ║%N%
echo(%C%               ║                                 ^|____/^|_____^|____/^|_____\___/_/   \_\_^|                                    ║%N%
echo(%C%               ║                                                                                                            ║%N%
goto :eof

:art_xbox
echo(%C%               ║                                                                                                            ║%N%
echo(%C%               ║                                            _  __ ____  ____ _  __                                          ║%N%
echo(%C%               ║                                           ^| ^|/ // __ )/ __ \ ^|/ /                                          ║%N%
echo(%C%               ║                                           ^|   // __  / / / /   /                                           ║%N%
echo(%C%               ║                                          /   ^|/ /_/ / /_/ /   ^|                                            ║%N%
echo(%C%               ║                                         /_/^|_/_____/\____/_/^|_^|                                            ║%N%
echo(%C%               ║                                                                                                            ║%N%
goto :eof

:art_svc
echo(%C%               ║                                                                                                            ║%N%
echo(%C%               ║                                ____  _____ ______     _____ ____ ___  ____                                 ║%N%
echo(%C%               ║                               / ___^|^| ____^|  _ \ \   / /_ _/ ___/ _ \/ ___^|                                ║%N%
echo(%C%               ║                               \___ \^|  _^| ^| ^|_) \ \ / / ^| ^| ^|  ^| ^| ^| \___ \                                ║%N%
echo(%C%               ║                                ___) ^| ^|___^|  _ ^< \ V /  ^| ^| ^|__^| ^|_^| ^|___) ^|                               ║%N%
echo(%C%               ║                               ^|____/^|_____^|_^| \_\ \_/  ^|___\____\___/^|____/                                ║%N%
echo(%C%               ║                                                                                                            ║%N%
goto :eof

:art_clean
echo(%C%               ║                                                                                                            ║%N%
echo(%C%               ║                                       ____ _     _____    _    _   _                                       ║%N%
echo(%C%               ║                                      / ___^| ^|   ^| ____^|  / \  ^| \ ^| ^|                                      ║%N%
echo(%C%               ║                                     ^| ^|   ^| ^|   ^|  _^|   / _ \ ^|  \^| ^|                                      ║%N%
echo(%C%               ║                                     ^| ^|___^| ^|___^| ^|___ / ___ \^| ^|\  ^|                                      ║%N%
echo(%C%               ║                                      \____^|_____^|_____/_/   \_\_^| \_^|                                      ║%N%
echo(%C%               ║                                                                                                            ║%N%
goto :eof

:art_start
echo(%C%               ║                                                                                                            ║%N%
echo(%C%               ║                                        ____ _____  _    ____ _____                                         ║%N%
echo(%C%               ║                                       / ___^|_   _^|/ \  ^|  _ \_   _^|                                        ║%N%
echo(%C%               ║                                       \___ \ ^| ^| / _ \ ^| ^|_) ^|^| ^|                                          ║%N%
echo(%C%               ║                                        ___) ^|^| ^|/ ___ \^|  _ ^< ^| ^|                                          ║%N%
echo(%C%               ║                                       ^|____/ ^|_/_/   \_\_^| \_\^|_^|                                          ║%N%
echo(%C%               ║                                                                                                            ║%N%
goto :eof

:ok
echo     %K%[OK]%N% %~1
goto :eof

:pause_back
echo(
pause
goto :eof

:refuse
cls
echo(
echo %R%  [ RECUSADO ] %~1%N%
echo(
echo   A VENIX Otimizacao NAO desativa UAC, Windows Update,
echo   Firewall nem a rede. Nenhuma alteracao foi feita.
call :pause_back
goto :eof

:confirm_sec
cls
echo(
echo %R%  [ AVISO ] Isto DESATIVA %~1.%N%
echo  O PC fica mais exposto. Nao e stealth: as chaves ficam visiveis.
echo  Tamper Protection (Protecao contra adulteracao) no Windows Security
echo  pode bloquear servicos/chaves ate a desligares uma vez.
echo  UAC / Windows Update / firewall / rede NAO sao mexidos.
echo  Ponto de restauro: so a opcao 1, se quiseres.
echo(
set "ans="
set /p ans=Escreve S para confirmar: 
if /I not "%ans%"=="S" exit /b 1
exit /b 0


:menu_main
call :hdr venix
echo(%C%               ╔════════════════════════════════════════════════════════════════════════════════════════════════════════════╗%N%
echo(%C%               ║%Y%                                               MENU PRINCIPAL                                               %C%║%N%
echo(%C%               ╠════════════════════════════════════════════════════════════════════════════════════════════════════════════╣%N%
echo(%C%               ║%N% %C%[  1 ]%N%%W% Criar Ponto de Restauracao                   %N%  %C%[  2 ]%N%%W% Otimizar Windows                             %N% %C%║%N%
echo(%C%               ║%N% %C%[  3 ]%N%%W% Otimizacao de Jogos                          %N%  %C%[  4 ]%N%%W% Otimizacao de Perifericos                    %N% %C%║%N%
echo(%C%               ║%N% %C%[  5 ]%N%%W% Config. inicializacao do Windows             %N%  %C%[  6 ]%N%%W% Liberar Memoria Ram                          %N% %C%║%N%
echo(%C%               ║%N% %C%[  7 ]%N%%W% Melhorar Conexao/Ping                        %N%  %C%[  8 ]%N%%W% Otimizar AMD                                 %N% %C%║%N%
echo(%C%               ║%N% %C%[  9 ]%N%%W% Otimizar NVIDIA                              %N%  %C%[ 10 ]%N%%W% Fix de Erros                                 %N% %C%║%N%
echo(%C%               ║%N% %C%[ 11 ]%N%%W% Debloater                                    %N%  %C%[ 12 ]%N%%W% Limpeza do sistema                           %N% %C%║%N%
echo(%C%               ║%N% %C%[ 13 ]%N%%W% Reverter tudo                                %N%  %C%[ 14 ]%N%%W% Reduzir processos / CPU                      %N% %C%║%N%
echo(%C%               ║%N% %C%[ 15 ]%N%%W% Remover apps em 2 plano                      %N%  %C%[ 16 ]%N%%W% Sair                                         %N% %C%║%N%
echo(%C%               ╚════════════════════════════════════════════════════════════════════════════════════════════════════════════╝%N%
call :ask
if "%op%"=="1" goto do_restore
if "%op%"=="2" goto menu_win
if "%op%"=="3" goto menu_games
if "%op%"=="4" goto menu_hw
if "%op%"=="5" goto menu_start
if "%op%"=="6" goto do_ram
if "%op%"=="7" goto menu_ping
if "%op%"=="8" goto menu_amd
if "%op%"=="9" goto do_nvidia
if "%op%"=="10" goto menu_fix
if "%op%"=="11" goto menu_deb
if "%op%"=="12" goto menu_clean
if "%op%"=="13" goto do_revert_all
if "%op%"=="14" goto do_cpu
if "%op%"=="15" goto do_bg
if "%op%"=="16" goto do_sair
goto menu_main


:menu_win
call :hdr win
echo(%C%               ╔════════════════════════════════════════════════════════════════════════════════════════════════════════════╗%N%
echo(%C%               ║%Y%                                                  WINDOWS                                                   %C%║%N%
echo(%C%               ╠════════════════════════════════════════════════════════════════════════════════════════════════════════════╣%N%
echo(%C%               ║%N% %C%[  1 ]%N%%W% Otimizar Energia                             %N%  %C%[  2 ]%N%%W% Desat. Efeitos Visuais                       %N% %C%║%N%
echo(%C%               ║%N% %C%[  3 ]%N%%W% Tweaks de Privacidade                        %N%  %C%[  4 ]%N%%W% Desat. tarefas e servicos de Telemetria      %N% %C%║%N%
echo(%C%               ║%N% %C%[  5 ]%N%%W% Desative TOTALMENTE a XBOX                   %N%  %C%[  6 ]%N%%W% Desativar Relatorios de Erro                 %N% %C%║%N%
echo(%C%               ║%N% %C%[  7 ]%N%%W% Otimizar ALT +TAB                            %N%  %C%[  8 ]%N%%W% Desative Servicos Inuteis                    %N% %C%║%N%
echo(%C%               ║%N% %C%[  9 ]%N%%W% Desat. Hibernacao                            %N%  %C%[ 10 ]%N%%W% Otimizar Explorer                            %N% %C%║%N%
echo(%C%               ║%N% %C%[ 11 ]%N%%W% Desat. Indexacao de pesquisa                 %N%  %C%[ 12 ]%N%%W% Ativar God Mode                              %N% %C%║%N%
echo(%C%               ║%N% %C%[ 13 ]%N%%W% Desativar Notificacoes                       %N%  %C%[ 14 ]%N%%W% Desativar Cortana                            %N% %C%║%N%
echo(%C%               ║%N% %C%[ 15 ]%N%%W% Bloquear Envio de feedback automatico        %N%  %C%[ 16 ]%N%%W% Desativar SmartScreen                        %N% %C%║%N%
echo(%C%               ║%N% %C%[ 17 ]%N%%W% Desativar Overlays (Xbox)                    %N%  %C%[ 18 ]%N%%W% Resetar Cache de Miniaturas                  %N% %C%║%N%
echo(%C%               ║%N% %C%[ 19 ]%N%%W% Desat. Prefetch e Superfetch                 %N%  %C%[ 20 ]%N%%W% Fechar Explorer                              %N% %C%║%N%
echo(%C%               ║%N% %C%[ 21 ]%N%%W% Iniciar Explorer                             %N%  %C%[ 22 ]%N%%W% Desat. UAC                                   %N% %C%║%N%
echo(%C%               ║%N% %C%[ 23 ]%N%%W% Desativar Hyper-V (Maquina Virtual)          %N%  %C%[ 24 ]%N%%W% Verificar/Arrumar arquivos                   %N% %C%║%N%
echo(%C%               ║%N% %C%[ 25 ]%N%%W% Limpar Cache de Rede                         %N%  %C%[ 26 ]%N%%W% Limpar Cache do Windows                      %N% %C%║%N%
echo(%C%               ║%N% %C%[ 27 ]%N%%W% Desat. Anti-Malware                          %N%  %C%[ 28 ]%N%%W% Desat. Download Maps Manager                 %N% %C%║%N%
echo(%C%               ║%N% %C%[ 29 ]%N%%W% Desat. TimeStamp                             %N%  %C%[ 30 ]%N%%W% Desativar Bing Search                        %N% %C%║%N%
echo(%C%               ║%N% %C%[ 31 ]%N%%W% Desat. Servico de Relogio do Win.            %N%  %C%[ 32 ]%N%%W% Desat. Sugestoes de pesquisa                 %N% %C%║%N%
echo(%C%               ║%N% %C%[ 33 ]%N%%W% Desat. Animacoes no Sistema                  %N%  %C%[ 34 ]%N%%W% Forcar Windows a priorizar Jogos             %N% %C%║%N%
echo(%C%               ║%N% %C%[ 35 ]%N%%W% Desat. Memory Compression                    %N%  %C%[ 36 ]%N%%W% Desat. Atualizacoes Auto. da Microsoft Store %N% %C%║%N%
echo(%C%               ║%N% %C%[ 37 ]%N%%W% REINICIAR PC                                 %N%  %C%[ 38 ]%N%%W% Menu Principal                               %N% %C%║%N%
echo(%C%               ╚════════════════════════════════════════════════════════════════════════════════════════════════════════════╝%N%
call :ask
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
if "%op%"=="22" call :refuse "Desat. UAC" & goto menu_win
if "%op%"=="23" goto w_hyperv
if "%op%"=="24" goto w_sfc
if "%op%"=="25" goto ping_dns
if "%op%"=="26" goto w_temp
if "%op%"=="27" goto w_defender
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
call :hdr hw
echo(%C%               ╔════════════════════════════════════════════════════════════════════════════════════════════════════════════╗%N%
echo(%C%               ║%Y%                                                PERIFERICOS                                                 %C%║%N%
echo(%C%               ╠════════════════════════════════════════════════════════════════════════════════════════════════════════════╣%N%
echo(%C%               ║%N% %C%[  1 ]%N%%W% Otimizar HDD                                 %N%  %C%[  2 ]%N%%W% Otimizar SSD                                 %N% %C%║%N%
echo(%C%               ║%N% %C%[  3 ]%N%%W% Verificar Temperatura                        %N%  %C%[  4 ]%N%%W% Otimizar Teclado                             %N% %C%║%N%
echo(%C%               ║%N% %C%[  5 ]%N%%W% Otimizar Mouse                               %N%  %C%[  6 ]%N%%W% Reverter Otimizacao                          %N% %C%║%N%
echo(%C%               ║%N% %C%[  7 ]%N%%W% Voltar ao Menu Principal                     %N%                                                       %C%║%N%
echo(%C%               ╚════════════════════════════════════════════════════════════════════════════════════════════════════════════╝%N%
call :ask
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
call :hdr ping
echo(%C%               ╔════════════════════════════════════════════════════════════════════════════════════════════════════════════╗%N%
echo(%C%               ║%Y%                                                PING / REDE                                                 %C%║%N%
echo(%C%               ╠════════════════════════════════════════════════════════════════════════════════════════════════════════════╣%N%
echo(%C%               ║%N% %C%[  1 ]%N%%W% Desativar Economia de Energia da Rede        %N%  %C%[  2 ]%N%%W% Otimizar TCP (Latencia)                      %N% %C%║%N%
echo(%C%               ║%N% %C%[  3 ]%N%%W% Remover limitacao de Rede                    %N%  %C%[  4 ]%N%%W% Limpar cache de DNS                          %N% %C%║%N%
echo(%C%               ║%N% %C%[  5 ]%N%%W% Escolher o Melhor DNS                        %N%  %C%[  6 ]%N%%W% Voltar ao Menu Principal                     %N% %C%║%N%
echo(%C%               ╚════════════════════════════════════════════════════════════════════════════════════════════════════════════╝%N%
call :ask
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
echo(%C%  Escolher o Melhor DNS%N%
echo(
echo          %C%[  1 ]%N%%W% Cloudflare 1.1.1.1%N%
echo          %C%[  2 ]%N%%W% Google 8.8.8.8%N%
echo          %C%[  3 ]%N%%W% Cancelar%N%
set "d="
set /p d=                                          %C%^> %N%
if "%d%"=="1" powershell -NoProfile -Command "Get-NetAdapter | Where-Object Status -eq 'Up' | ForEach-Object { Set-DnsClientServerAddress -InterfaceIndex $_.ifIndex -ServerAddresses '1.1.1.1','1.0.0.1' }"
if "%d%"=="2" powershell -NoProfile -Command "Get-NetAdapter | Where-Object Status -eq 'Up' | ForEach-Object { Set-DnsClientServerAddress -InterfaceIndex $_.ifIndex -ServerAddresses '8.8.8.8','8.8.4.4' }"
call :ok "DNS aplicado nas placas ativas"
call :pause_back
goto menu_ping


:menu_amd
call :hdr amd
echo(%C%               ╔════════════════════════════════════════════════════════════════════════════════════════════════════════════╗%N%
echo(%C%               ║%Y%                                                    AMD                                                     %C%║%N%
echo(%C%               ╠════════════════════════════════════════════════════════════════════════════════════════════════════════════╣%N%
echo(%C%               ║%N% %C%[  1 ]%N%%W% Desativar MPO                                %N%  %C%[  2 ]%N%%W% Desativar AMD Crash Defender                 %N% %C%║%N%
echo(%C%               ║%N% %C%[  3 ]%N%%W% Desat. GPU Scheduling                        %N%  %C%[  4 ]%N%%W% Desativar AMD Overlay e Telemetria           %N% %C%║%N%
echo(%C%               ║%N% %C%[  5 ]%N%%W% Instalar o Driver AMD                        %N%  %C%[  6 ]%N%%W% Voltar Ao Menu Principal                     %N% %C%║%N%
echo(%C%               ╚════════════════════════════════════════════════════════════════════════════════════════════════════════════╝%N%
call :ask
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
call :hdr fix
echo(%C%               ╔════════════════════════════════════════════════════════════════════════════════════════════════════════════╗%N%
echo(%C%               ║%Y%                                                FIX DE ERROS                                                %C%║%N%
echo(%C%               ╠════════════════════════════════════════════════════════════════════════════════════════════════════════════╣%N%
echo(%C%               ║%N% %C%[  1 ]%N%%W% Fix Loja do windows nao baixa nada           %N%  %C%[  2 ]%N%%W% Fix Anticheat Bloqueando Jogo                %N% %C%║%N%
echo(%C%               ║%N% %C%[  3 ]%N%%W% Fix Pc nao desliga (Fica so encerrando)      %N%  %C%[  4 ]%N%%W% Fix Tela preta apos boot                     %N% %C%║%N%
echo(%C%               ║%N% %C%[  5 ]%N%%W% Fix Notebook nao sai do modo aviao           %N%  %C%[  6 ]%N%%W% Fix Bluetooth Parou                          %N% %C%║%N%
echo(%C%               ║%N% %C%[  7 ]%N%%W% Fix AUDIO                                    %N%  %C%[  8 ]%N%%W% Fix Reativar WI-FI                           %N% %C%║%N%
echo(%C%               ║%N% %C%[  9 ]%N%%W% Fix Audio Bugado                             %N%  %C%[ 10 ]%N%%W% Fix Servicos Xbox                            %N% %C%║%N%
echo(%C%               ║%N% %C%[ 11 ]%N%%W% Fix Xbox app e Game Pass                     %N%  %C%[ 12 ]%N%%W% Fix Erros de Disco                           %N% %C%║%N%
echo(%C%               ║%N% %C%[ 13 ]%N%%W% Fix de Rede e Internet                       %N%  %C%[ 14 ]%N%%W% Fix Menu iniciar e Barra de Tarefas          %N% %C%║%N%
echo(%C%               ║%N% %C%[ 15 ]%N%%W% Fix Microsoft Store                          %N%  %C%[ 16 ]%N%%W% Fix Windows Update                           %N% %C%║%N%
echo(%C%               ║%N% %C%[ 17 ]%N%%W% Fix de arquivos Corrompidos                  %N%  %C%[ 18 ]%N%%W% Voltar ao Menu Principal                     %N% %C%║%N%
echo(%C%               ╚════════════════════════════════════════════════════════════════════════════════════════════════════════════╝%N%
call :ask
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
call :hdr deb
echo(%C%               ╔════════════════════════════════════════════════════════════════════════════════════════════════════════════╗%N%
echo(%C%               ║%Y%                                                 DEBLOATER                                                  %C%║%N%
echo(%C%               ╠════════════════════════════════════════════════════════════════════════════════════════════════════════════╣%N%
echo(%C%               ║%N% %C%[  1 ]%N%%W% Usar todos (CUIDADO)                         %N%  %C%[  2 ]%N%%W% Remover officehub                            %N% %C%║%N%
echo(%C%               ║%N% %C%[  3 ]%N%%W% Remover Cortana                              %N%  %C%[  4 ]%N%%W% Remover Copilot                              %N% %C%║%N%
echo(%C%               ║%N% %C%[  5 ]%N%%W% Remover Loja do Windows                      %N%  %C%[  6 ]%N%%W% Remover a Xbox                               %N% %C%║%N%
echo(%C%               ║%N% %C%[  7 ]%N%%W% Remover Windows Photos                       %N%  %C%[  8 ]%N%%W% Remover Windows People                       %N% %C%║%N%
echo(%C%               ║%N% %C%[  9 ]%N%%W% Remover Windows Music                        %N%  %C%[ 10 ]%N%%W% Remover Windows Messaging                    %N% %C%║%N%
echo(%C%               ║%N% %C%[ 11 ]%N%%W% Remover Windows Maps                         %N%  %C%[ 12 ]%N%%W% Remover Windows Groove                       %N% %C%║%N%
echo(%C%               ║%N% %C%[ 13 ]%N%%W% Remover Windows GetStarted                   %N%  %C%[ 14 ]%N%%W% Remover Calendario                           %N% %C%║%N%
echo(%C%               ║%N% %C%[ 15 ]%N%%W% Remover Calculadora                          %N%  %C%[ 16 ]%N%%W% Remover Windows Alarms                       %N% %C%║%N%
echo(%C%               ║%N% %C%[ 17 ]%N%%W% Remover 3DBuilder                            %N%  %C%[ 18 ]%N%%W% Remover Windows Camera                       %N% %C%║%N%
echo(%C%               ║%N% %C%[ 19 ]%N%%W% Remover Noticias                             %N%  %C%[ 20 ]%N%%W% Remover OneDrive                             %N% %C%║%N%
echo(%C%               ║%N% %C%[ 21 ]%N%%W% Remover Anuncios e sugestoes                 %N%  %C%[ 22 ]%N%%W% Remover Emails                               %N% %C%║%N%
echo(%C%               ║%N% %C%[ 23 ]%N%%W% Remover Outlook                              %N%  %C%[ 24 ]%N%%W% Remover Assistencia Rapida                   %N% %C%║%N%
echo(%C%               ║%N% %C%[ 25 ]%N%%W% Remover Microsoft To do                      %N%  %C%[ 26 ]%N%%W% Remover Solitaire e jogos Casuais            %N% %C%║%N%
echo(%C%               ║%N% %C%[ 27 ]%N%%W% Remover Clima                                %N%  %C%[ 28 ]%N%%W% Remover Hub de Comentarios                   %N% %C%║%N%
echo(%C%               ║%N% %C%[ 29 ]%N%%W% Reverter Debloaters                          %N%  %C%[ 30 ]%N%%W% Voltar Ao Menu Principal                     %N% %C%║%N%
echo(%C%               ╚════════════════════════════════════════════════════════════════════════════════════════════════════════════╝%N%
call :ask
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
echo Ou usa o ponto de restauracao VENIX Otimizacao.
start ms-windows-store:
call :pause_back
goto menu_deb


:menu_xbox
call :hdr xbox
echo(%C%               ╔════════════════════════════════════════════════════════════════════════════════════════════════════════════╗%N%
echo(%C%               ║%Y%                                                    XBOX                                                    %C%║%N%
echo(%C%               ╠════════════════════════════════════════════════════════════════════════════════════════════════════════════╣%N%
echo(%C%               ║%N% %C%[  1 ]%N%%W% Iniciar Otimizacao (Remover Xbox)            %N%  %C%[  2 ]%N%%W% Reverter Otimizacao (Restaurar Xbox)         %N% %C%║%N%
echo(%C%               ║%N% %C%[  3 ]%N%%W% Voltar ao Menu Principal                     %N%                                                       %C%║%N%
echo(%C%               ╚════════════════════════════════════════════════════════════════════════════════════════════════════════════╝%N%
call :ask
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
call :hdr svc
echo(%C%               ╔════════════════════════════════════════════════════════════════════════════════════════════════════════════╗%N%
echo(%C%               ║%Y%                                              SERVICOS WINDOWS                                              %C%║%N%
echo(%C%               ╠════════════════════════════════════════════════════════════════════════════════════════════════════════════╣%N%
echo(%C%               ║%N% %C%[  1 ]%N%%W% Desativar servicos INUTEIS                   %N%  %C%[  2 ]%N%%W% Desativar servicos NORMAIS                   %N% %C%║%N%
echo(%C%               ║%N% %C%[  3 ]%N%%W% Reverter servicos                            %N%  %C%[  4 ]%N%%W% Voltar ao Menu Principal                     %N% %C%║%N%
echo(%C%               ╚════════════════════════════════════════════════════════════════════════════════════════════════════════════╝%N%
call :ask
if "%op%"=="1" goto svc_off_junk
if "%op%"=="2" goto svc_off_norm
if "%op%"=="3" goto svc_on
if "%op%"=="4" goto menu_main
goto menu_svc

:svc_off_junk
cls
echo Desativar servicos INUTEIS via registo (Start=4)...
echo Defender / Update / firewall / rede nao sao mexidos.
for %%S in (Fax RemoteRegistry RetailDemo WMPNetworkSvc diagnosticshub.standardcollector.service MapsBroker CscService wisvc AJRouter shpamsvc PhoneSvc WalletService lfsvc SensorService SensorDataService SensrSvc SCardSvr SCPolicySvc TapiSrv WpcMonSvc WorkFolders fhsvc SEMgrSvc WerSvc PcaSvc DiagTrack dmwappushservice XblGameSave XboxNetApiSvc XboxGipSvc AssignedAccessManagerSvc spectrum SharedRealitySvc) do (
    call :_svc_off %%S
)
call :pause_back
goto menu_svc

:svc_off_norm
cls
echo Desativar servicos NORMAIS via registo (Start=4)...
echo SysMain / Pesquisa / Spooler / Fontes / diagnosticos, etc.
echo Defender / Update / firewall / rede / audio ficam ligados.
for %%S in (SysMain WSearch Spooler FontCache DPS DusmSvc TrkWks stisvc WbioSrvc TabletInputService PrintNotify CDPSvc WpnService) do (
    call :_svc_off %%S
)
call :pause_back
goto menu_svc

:svc_on
cls
echo Reverter servicos (registo + sc)...
call :_svc_restore_all
call :pause_back
goto menu_svc


:menu_games
call :hdr games
echo(%C%               ╔════════════════════════════════════════════════════════════════════════════════════════════════════════════╗%N%
echo(%C%               ║%Y%                                                   JOGOS                                                    %C%║%N%
echo(%C%               ╠════════════════════════════════════════════════════════════════════════════════════════════════════════════╣%N%
echo(%C%               ║%N% %C%[  1 ]%N%%W% Fortnite                                     %N%  %C%[  2 ]%N%%W% Gta V                                        %N% %C%║%N%
echo(%C%               ║%N% %C%[  3 ]%N%%W% FiveM                                        %N%  %C%[  4 ]%N%%W% CS2                                          %N% %C%║%N%
echo(%C%               ║%N% %C%[  5 ]%N%%W% Minecraft                                    %N%  %C%[  6 ]%N%%W% Valorant                                     %N% %C%║%N%
echo(%C%               ║%N% %C%[  7 ]%N%%W% League of Legends                            %N%  %C%[  8 ]%N%%W% Warzone                                      %N% %C%║%N%
echo(%C%               ║%N% %C%[  9 ]%N%%W% Apex Legends                                 %N%  %C%[ 10 ]%N%%W% Roblox                                       %N% %C%║%N%
echo(%C%               ║%N% %C%[ 11 ]%N%%W% God Of War (2018 e ragnarok)                 %N%  %C%[ 12 ]%N%%W% MTA                                          %N% %C%║%N%
echo(%C%               ║%N% %C%[ 13 ]%N%%W% Euro Truck Simulator (1 e 2)                 %N%  %C%[ 14 ]%N%%W% Rainbow Six Siege                            %N% %C%║%N%
echo(%C%               ║%N% %C%[ 15 ]%N%%W% Cult of the Lamb                             %N%  %C%[ 16 ]%N%%W% ULTRAKILL                                    %N% %C%║%N%
echo(%C%               ║%N% %C%[ 17 ]%N%%W% Blood Strike                                 %N%  %C%[ 18 ]%N%%W% Arena Breakout                               %N% %C%║%N%
echo(%C%               ║%N% %C%[ 19 ]%N%%W% Resident Evil 4 Remake                       %N%  %C%[ 20 ]%N%%W% Resident Evil 2 Remake                       %N% %C%║%N%
echo(%C%               ║%N% %C%[ 21 ]%N%%W% Tweaks globais                               %N%  %C%[ 22 ]%N%%W% Priorizar EXE custom                         %N% %C%║%N%
echo(%C%               ║%N% %C%[ 23 ]%N%%W% Menu Principal                               %N%                                                       %C%║%N%
echo(%C%               ╚════════════════════════════════════════════════════════════════════════════════════════════════════════════╝%N%
call :ask
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
if "%op%"=="22" goto do_exe_custom
if "%op%"=="23" goto menu_main
goto menu_games


:do_restore
cls
echo A criar ponto de restauracao...
powershell -NoProfile -ExecutionPolicy Bypass -Command "try { Checkpoint-Computer -Description 'VENIX Otimizacao' -RestorePointType MODIFY_SETTINGS; Write-Host '[OK] Ponto criado.' } catch { Write-Host '[AVISO] Nao foi possivel criar o ponto.'; Write-Host $_.Exception.Message }"
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

:menu_start
call :hdr start
echo(%C%               ╔════════════════════════════════════════════════════════════════════════════════════════════════════════════╗%N%
echo(%C%               ║%Y%                                               INICIALIZACAO                                                %C%║%N%
echo(%C%               ╠════════════════════════════════════════════════════════════════════════════════════════════════════════════╣%N%
echo(%C%               ║%N% %C%[  1 ]%N%%W% Remover atraso de arranque                   %N%  %C%[  2 ]%N%%W% Listar programas na inicializacao            %N% %C%║%N%
echo(%C%               ║%N% %C%[  3 ]%N%%W% Desativar um item da inicializacao           %N%  %C%[  4 ]%N%%W% Reativar itens desligados pelo VENIX         %N% %C%║%N%
echo(%C%               ║%N% %C%[  5 ]%N%%W% Voltar ao Menu Principal                     %N%                                                       %C%║%N%
echo(%C%               ╚════════════════════════════════════════════════════════════════════════════════════════════════════════════╝%N%
call :ask
if "%op%"=="1" goto st_delay
if "%op%"=="2" goto st_list
if "%op%"=="3" goto st_off
if "%op%"=="4" goto st_on
if "%op%"=="5" goto menu_main
goto menu_start

:st_delay
cls
echo Config. inicializacao...
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Serialize" /v StartupDelayInMSec /t REG_DWORD /d 0 /f >nul
call :ok "Atraso de arranque = 0"
call :pause_back
goto menu_start

:st_list
cls
echo Programas na inicializacao
echo HKLM e so leitura. Defender / SecurityHealth nao se desativam.
echo(
powershell -NoProfile -ExecutionPolicy Bypass -Command "Write-Host '--- HKCU Run ---'; $r=Get-ItemProperty -Path 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Run' -EA SilentlyContinue; if($r){ $r.PSObject.Properties | Where-Object {$_.Name -notlike 'PS*'} | ForEach-Object { Write-Host ('  '+$_.Name+' = '+$_.Value) } } else { Write-Host '  (vazio)' }; Write-Host ''; Write-Host '--- Pasta Startup ---'; $p=Join-Path $env:APPDATA 'Microsoft\Windows\Start Menu\Programs\Startup'; Get-ChildItem $p -EA SilentlyContinue | Where-Object {$_.Name -ne 'desktop.ini'} | ForEach-Object { Write-Host ('  '+$_.Name) }; Write-Host ''; Write-Host '--- HKLM Run (so leitura) ---'; $r=Get-ItemProperty -Path 'HKLM:\Software\Microsoft\Windows\CurrentVersion\Run' -EA SilentlyContinue; if($r){ $r.PSObject.Properties | Where-Object {$_.Name -notlike 'PS*'} | ForEach-Object { Write-Host ('  '+$_.Name) } }"
call :pause_back
goto menu_start

:st_off
cls
echo Desativar um item de HKCU Run ou da pasta Startup.
echo Escreve o nome exacto (ex: OneDrive). Nao mexe em Defender.
set "VENIX_ITEM="
set /p VENIX_ITEM=Nome do item: 
if not defined VENIX_ITEM goto menu_start
powershell -NoProfile -ExecutionPolicy Bypass -Command "$n=$env:VENIX_ITEM.Trim(); if ($n -notmatch '^[A-Za-z0-9 ._\-()]+$') { Write-Host '[ERRO] Nome invalido.'; exit 0 }; if ($n -match 'SecurityHealth|Defender|MsMpEng|NisSrv|smartscreen') { Write-Host '[RECUSADO] Item de seguranca.'; exit 0 }; $rk='HKCU:\Software\Microsoft\Windows\CurrentVersion\Run'; $bk='HKCU:\Software\VenixOtimizacao\StartupBackup'; $done=$false; if (Test-Path $rk) { $p=Get-ItemProperty $rk -EA SilentlyContinue; if ($p.PSObject.Properties.Name -contains $n) { New-Item $bk -Force | Out-Null; New-ItemProperty $bk -Name $n -Value $p.$n -PropertyType String -Force | Out-Null; Remove-ItemProperty $rk -Name $n -Force; Write-Host ('    [OK] HKCU Run: '+$n); $done=$true } }; $sf=Join-Path $env:APPDATA 'Microsoft\Windows\Start Menu\Programs\Startup'; $hold=Join-Path $env:LOCALAPPDATA 'VenixOtimizacao\startup-disabled'; Get-ChildItem $sf -EA SilentlyContinue | Where-Object { $_.BaseName -eq $n -or $_.Name -eq $n } | ForEach-Object { New-Item $hold -ItemType Directory -Force | Out-Null; Move-Item $_.FullName (Join-Path $hold $_.Name) -Force; Write-Host ('    [OK] atalho: '+$_.Name); $done=$true }; if (-not $done) { Write-Host '[AVISO] Nao encontrei esse item em HKCU Run nem na pasta Startup.' }"
call :pause_back
goto menu_start

:st_on
cls
echo Reativar itens desligados pelo VENIX...
powershell -NoProfile -ExecutionPolicy Bypass -Command "$rk='HKCU:\Software\Microsoft\Windows\CurrentVersion\Run'; $sf=Join-Path $env:APPDATA 'Microsoft\Windows\Start Menu\Programs\Startup'; foreach($name in @('VenixOtimizacao','NoxOtimizacao')){ $bk='HKCU:\Software\'+$name+'\StartupBackup'; if (Test-Path $bk) { $p=Get-ItemProperty $bk; $p.PSObject.Properties | Where-Object {$_.Name -notlike 'PS*'} | ForEach-Object { New-ItemProperty $rk -Name $_.Name -Value $_.Value -PropertyType String -Force | Out-Null; Write-Host ('    [OK] Run: '+$_.Name) }; Remove-Item $bk -Recurse -Force -EA SilentlyContinue }; $hold=Join-Path $env:LOCALAPPDATA ($name+'\startup-disabled'); if (Test-Path $hold) { Get-ChildItem $hold -EA SilentlyContinue | ForEach-Object { Move-Item $_.FullName (Join-Path $sf $_.Name) -Force; Write-Host ('    [OK] atalho: '+$_.Name) } } }; Write-Host '    [OK] inicializacao restaurada'"
call :pause_back
goto menu_start

:menu_clean
call :hdr clean
echo(%C%               ╔════════════════════════════════════════════════════════════════════════════════════════════════════════════╗%N%
echo(%C%               ║%Y%                                                  LIMPEZA                                                   %C%║%N%
echo(%C%               ╠════════════════════════════════════════════════════════════════════════════════════════════════════════════╣%N%
echo(%C%               ║%N% %C%[  1 ]%N%%W% Limpar TEMP                                  %N%  %C%[  2 ]%N%%W% Esvaziar Reciclagem                          %N% %C%║%N%
echo(%C%               ║%N% %C%[  3 ]%N%%W% Limpar cache Delivery Optimization           %N%  %C%[  4 ]%N%%W% Limpar miniaturas                            %N% %C%║%N%
echo(%C%               ║%N% %C%[  5 ]%N%%W% Limpeza completa                             %N%  %C%[  6 ]%N%%W% Voltar ao Menu Principal                     %N% %C%║%N%
echo(%C%               ╚════════════════════════════════════════════════════════════════════════════════════════════════════════════╝%N%
call :ask
if "%op%"=="1" goto cl_temp
if "%op%"=="2" goto cl_bin
if "%op%"=="3" goto cl_do
if "%op%"=="4" goto cl_thumbs
if "%op%"=="5" goto cl_all
if "%op%"=="6" goto menu_main
goto menu_clean

:cl_temp
cls
echo Limpando TEMP...
call :_clean_temp
call :pause_back
goto menu_clean

:cl_bin
cls
echo Esvaziar Reciclagem...
call :_clean_bin
call :pause_back
goto menu_clean

:cl_do
cls
echo Limpar cache Delivery Optimization (Windows Update fica ligado)...
call :_clean_do
call :pause_back
goto menu_clean

:cl_thumbs
cls
echo Limpar miniaturas...
call :_clean_thumbs
call :pause_back
goto menu_clean

:cl_all
cls
echo Limpeza completa...
call :_clean_temp
call :_clean_bin
call :_clean_do
call :_clean_thumbs
ipconfig /flushdns >nul
call :ok "DNS flush"
call :pause_back
goto menu_clean

:do_revert_all
cls
echo Reverter tweaks do VENIX (nao reinstala apps da Loja).
echo UAC / Update / firewall / rede nao sao mexidos.
echo Defender e SmartScreen voltam a ligar-se.
echo(
set "ans="
set /p ans=Escreve S para continuar: 
if /I not "%ans%"=="S" goto menu_main
call :_revert_all
call :pause_back
goto menu_main

:do_exe_custom
cls
echo Priorizar um EXE qualquer. Exemplo: jogo.exe
echo So o nome do ficheiro (sem ^& ^| ^< ^>).
set "exe="
set /p exe=EXE: 
if not defined exe goto menu_games
set "VENIX_EXE=%exe%"
powershell -NoProfile -ExecutionPolicy Bypass -Command "$n=$env:VENIX_EXE; if (-not $n) { exit 2 }; $n=$n.Trim().Trim([char]34); if ($n -notmatch '\.exe$') { $n += '.exe' }; $n=[IO.Path]::GetFileName($n); if ($n -notmatch '^[A-Za-z0-9 ._\-()\[\]]+\.exe$') { exit 2 }; Set-Content -Path ($env:TEMP+'\venix-exe.txt') -Value $n -Encoding ASCII"
if errorlevel 2 (
    echo Nome invalido.
    call :pause_back
    goto menu_games
)
set /p exe=<"%TEMP%\venix-exe.txt"
if not defined exe goto menu_games
call :prio "Custom" "%exe%"
goto menu_games

:do_ram
cls
echo Liberar Memoria RAM
echo Nao fecha apps. Discord / browser / jogos abertos continuam a usar RAM.
echo A cortar working sets e a esvaziar a lista standby (rapido)...
echo(
powershell -NoProfile -ExecutionPolicy Bypass -EncodedCommand JABjACAAPQAgAEAAJwAKAHUAcwBpAG4AZwAgAFMAeQBzAHQAZQBtADsACgB1AHMAaQBuAGcAIABTAHkAcwB0AGUAbQAuAFIAdQBuAHQAaQBtAGUALgBJAG4AdABlAHIAbwBwAFMAZQByAHYAaQBjAGUAcwA7AAoAcAB1AGIAbABpAGMAIABzAHQAYQB0AGkAYwAgAGMAbABhAHMAcwAgAE4AbwB4AFIAYQBtACAAewAKACAAIABbAEQAbABsAEkAbQBwAG8AcgB0ACgAIgBuAHQAZABsAGwALgBkAGwAbAAiACkAXQAgAHAAdQBiAGwAaQBjACAAcwB0AGEAdABpAGMAIABlAHgAdABlAHIAbgAgAGkAbgB0ACAAUgB0AGwAQQBkAGoAdQBzAHQAUAByAGkAdgBpAGwAZQBnAGUAKABpAG4AdAAgAHAALAAgAGIAbwBvAGwAIABlACwAIABiAG8AbwBsACAAdAAsACAAbwB1AHQAIABiAG8AbwBsACAAdwApADsACgAgACAAWwBEAGwAbABJAG0AcABvAHIAdAAoACIAbgB0AGQAbABsAC4AZABsAGwAIgApAF0AIABwAHUAYgBsAGkAYwAgAHMAdABhAHQAaQBjACAAZQB4AHQAZQByAG4AIABpAG4AdAAgAE4AdABTAGUAdABTAHkAcwB0AGUAbQBJAG4AZgBvAHIAbQBhAHQAaQBvAG4AKABpAG4AdAAgAGMALAAgAHIAZQBmACAAaQBuAHQAIABpACwAIABpAG4AdAAgAGwAKQA7AAoAIAAgAHAAdQBiAGwAaQBjACAAcwB0AGEAdABpAGMAIAB2AG8AaQBkACAARwBvACgAKQAgAHsACgAgACAAIAAgAGIAbwBvAGwAIAB3ADsACgAgACAAIAAgAFIAdABsAEEAZABqAHUAcwB0AFAAcgBpAHYAaQBsAGUAZwBlACgANQAsACAAdAByAHUAZQAsACAAZgBhAGwAcwBlACwAIABvAHUAdAAgAHcAKQA7AAoAIAAgACAAIABSAHQAbABBAGQAagB1AHMAdABQAHIAaQB2AGkAbABlAGcAZQAoADEAMwAsACAAdAByAHUAZQAsACAAZgBhAGwAcwBlACwAIABvAHUAdAAgAHcAKQA7AAoAIAAgACAAIABpAG4AdAAgAHYAOwAKACAAIAAgACAAdgAgAD0AIAAyADsAIABOAHQAUwBlAHQAUwB5AHMAdABlAG0ASQBuAGYAbwByAG0AYQB0AGkAbwBuACgAOAAwACwAIAByAGUAZgAgAHYALAAgADQAKQA7AAoAIAAgACAAIAB2ACAAPQAgADMAOwAgAE4AdABTAGUAdABTAHkAcwB0AGUAbQBJAG4AZgBvAHIAbQBhAHQAaQBvAG4AKAA4ADAALAAgAHIAZQBmACAAdgAsACAANAApADsACgAgACAAIAAgAHYAIAA9ACAANAA7ACAATgB0AFMAZQB0AFMAeQBzAHQAZQBtAEkAbgBmAG8AcgBtAGEAdABpAG8AbgAoADgAMAAsACAAcgBlAGYAIAB2ACwAIAA0ACkAOwAKACAAIAAgACAAdgAgAD0AIAA1ADsAIABOAHQAUwBlAHQAUwB5AHMAdABlAG0ASQBuAGYAbwByAG0AYQB0AGkAbwBuACgAOAAwACwAIAByAGUAZgAgAHYALAAgADQAKQA7AAoAIAAgAH0ACgB9AAoAJwBAAAoAQQBkAGQALQBUAHkAcABlACAAJABjAAoAJABvACAAPQAgAEcAZQB0AC0AQwBpAG0ASQBuAHMAdABhAG4AYwBlACAAVwBpAG4AMwAyAF8ATwBwAGUAcgBhAHQAaQBuAGcAUwB5AHMAdABlAG0ACgAkAHQAIAA9ACAAWwBpAG4AdABdACgAJABvAC4AVABvAHQAYQBsAFYAaQBzAGkAYgBsAGUATQBlAG0AbwByAHkAUwBpAHoAZQAgAC8AIAAxADAAMgA0ACkACgAkAGIAIAA9ACAAWwBpAG4AdABdACgAJABvAC4ARgByAGUAZQBQAGgAeQBzAGkAYwBhAGwATQBlAG0AbwByAHkAIAAvACAAMQAwADIANAApAAoAVwByAGkAdABlAC0ASABvAHMAdAAgACgAIgAgACAAIAAgAEEAbgB0AGUAcwA6ACAAIAB7ADAAfQAgAE0AQgAgAGwAaQB2AHIAZQBzACAALwAgAHsAMQB9ACAATQBCACIAIAAtAGYAIAAkAGIALAAgACQAdAApAAoAWwBOAG8AeABSAGEAbQBdADoAOgBHAG8AKAApAAoAUwB0AGEAcgB0AC0AUwBsAGUAZQBwACAALQBNAGkAbABsAGkAcwBlAGMAbwBuAGQAcwAgADUAMAAwAAoAJABvACAAPQAgAEcAZQB0AC0AQwBpAG0ASQBuAHMAdABhAG4AYwBlACAAVwBpAG4AMwAyAF8ATwBwAGUAcgBhAHQAaQBuAGcAUwB5AHMAdABlAG0ACgAkAHgAIAA9ACAAWwBpAG4AdABdACgAJABvAC4ARgByAGUAZQBQAGgAeQBzAGkAYwBhAGwATQBlAG0AbwByAHkAIAAvACAAMQAwADIANAApAAoAVwByAGkAdABlAC0ASABvAHMAdAAgACgAIgAgACAAIAAgAEQAZQBwAG8AaQBzADoAIAB7ADAAfQAgAE0AQgAgAGwAaQB2AHIAZQBzACAAIAAoAGQAZQBsAHQAYQAgAHsAMQB9ACAATQBCACkAIgAgAC0AZgAgACQAeAAsACAAKAAkAHgAIAAtACAAJABiACkAKQA=
echo(
echo TEMP deixa de ser apagado aqui (isso demorava e nao libertava RAM).
echo Para ficheiros usa o menu 12 Limpeza.
call :pause_back
goto menu_main

:do_cpu
cls
echo Reduzir processos ativos e CPU de fundo
echo NAO fecha Cursor, Discord, browsers nem jogos.
echo Defender / Update / firewall / rede / audio ficam ligados.
echo Ponto de restauro: so na opcao 1 do menu principal, se quiseres.
echo(
echo --- Antes ---
call :_cpu_snap
echo(
echo A desligar servicos de fundo...
for %%S in (SysMain WSearch DPS DiagTrack dmwappushservice Fax RemoteRegistry RetailDemo WMPNetworkSvc diagnosticshub.standardcollector.service MapsBroker CscService wisvc AJRouter shpamsvc PhoneSvc WalletService lfsvc SensorService SensorDataService SensrSvc SCardSvr SCPolicySvc TapiSrv WpcMonSvc WorkFolders fhsvc SEMgrSvc WerSvc PcaSvc XblGameSave XboxNetApiSvc XboxGipSvc AssignedAccessManagerSvc spectrum SharedRealitySvc DusmSvc TrkWks stisvc WbioSrvc TabletInputService PrintNotify CDPSvc WpnService NvTelemetryContainer) do (
    call :_svc_off %%S
)
echo(
echo A desligar tarefas agendadas de telemetria...
call :_sch_trim
echo(
echo Widgets / Copilot / Game Bar / apps em segundo plano...
call :_tips
call :_xbox
reg add "HKCU\Software\Policies\Microsoft\Windows\WindowsCopilot" /v TurnOffWindowsCopilot /t REG_DWORD /d 1 /f >nul
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v ShowCopilotButton /t REG_DWORD /d 0 /f >nul
call :_bg_apps_off
call :_bloat_kill
timeout /t 2 /nobreak >nul
echo(
echo --- Depois ---
call :_cpu_snap
echo(
echo Reverter: menu 13. Apps tuas continuam abertas.
call :pause_back
goto menu_main

:do_bg
cls
echo Remover aplicativos em 2 plano
echo Apps da Loja / UWP deixam de correr em segundo plano.
echo NAO fecha Cursor, Discord, browsers nem jogos.
echo Defender / Update / firewall / rede / audio ficam ligados.
echo Ponto de restauro: so na opcao 1 do menu principal, se quiseres.
echo(
call :_bg_apps_off
echo(
echo O que mudou:
echo   - GlobalUserDisabled = 1  (definicao do utilizador)
echo   - BackgroundAppGlobalToggle = 0
echo   - LetAppsRunInBackground = Never  (politica)
echo   - Disabled / DisabledByUser em cada app UWP
echo(
echo Reverter: menu 13.
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
echo VENIX Otimizacao - ate a proxima.
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
echo Update intacto.
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
shutdown /r /t 5 /c "VENIX Otimizacao"
goto menu_win

:w_smartscreen
call :confirm_sec "SmartScreen"
if errorlevel 1 goto menu_win
cls
echo A desativar SmartScreen...
call :_smart_off
echo(
echo Firewall / Update / UAC intactos. Reverter: menu 13.
call :pause_back
goto menu_win

:w_defender
call :confirm_sec "Windows Defender / Anti-Malware"
if errorlevel 1 goto menu_win
cls
echo A desativar Windows Defender / Anti-Malware...
echo Se falhar: Windows Security - Protecao contra adulteracao - Desligar.
call :_def_off
echo(
echo Firewall / Update / UAC / rede intactos. Reverter: menu 13.
call :pause_back
goto menu_win


:prio
cls
echo Priorizar %~1 ...
call :_gamemode
call :_hags_on
call :_mmcss
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%~2\PerfOptions" /v CpuPriorityClass /t REG_DWORD /d 3 /f >nul
reg add "HKCU\Software\Microsoft\DirectX\UserGpuPreferences" /v "%~2" /t REG_SZ /d "GpuPreference=2;" /f >nul
reg add "HKCU\Software\VenixOtimizacao\Prio" /v "%~2" /t REG_SZ /d 1 /f >nul
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

:_bg_apps_off
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" /v GlobalUserDisabled /t REG_DWORD /d 1 /f >nul
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v BackgroundAppGlobalToggle /t REG_DWORD /d 0 /f >nul
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /v LetAppsRunInBackground /t REG_DWORD /d 2 /f >nul
reg add "HKCU\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /v LetAppsRunInBackground /t REG_DWORD /d 2 /f >nul
call :ok "GlobalUserDisabled=1  LetAppsRunInBackground=Never"
powershell -NoProfile -ExecutionPolicy Bypass -EncodedCommand JAByAG8AbwB0ACAAPQAgACcASABLAEMAVQA6AFwAUwBvAGYAdAB3AGEAcgBlAFwATQBpAGMAcgBvAHMAbwBmAHQAXABXAGkAbgBkAG8AdwBzAFwAQwB1AHIAcgBlAG4AdABWAGUAcgBzAGkAbwBuAFwAQgBhAGMAawBnAHIAbwB1AG4AZABBAGMAYwBlAHMAcwBBAHAAcABsAGkAYwBhAHQAaQBvAG4AcwAnAAoATgBlAHcALQBJAHQAZQBtACAALQBQAGEAdABoACAAJAByAG8AbwB0ACAALQBGAG8AcgBjAGUAIAB8ACAATwB1AHQALQBOAHUAbABsAAoAJABuACAAPQAgADAACgBHAGUAdAAtAEMAaABpAGwAZABJAHQAZQBtACAAJAByAG8AbwB0ACAALQBFAEEAIABTAGkAbABlAG4AdABsAHkAQwBvAG4AdABpAG4AdQBlACAAfAAgAEYAbwByAEUAYQBjAGgALQBPAGIAagBlAGMAdAAgAHsACgAgACAATgBlAHcALQBJAHQAZQBtAFAAcgBvAHAAZQByAHQAeQAgACQAXwAuAFAAUwBQAGEAdABoACAALQBOAGEAbQBlACAARABpAHMAYQBiAGwAZQBkACAALQBWAGEAbAB1AGUAIAAxACAALQBQAHIAbwBwAGUAcgB0AHkAVAB5AHAAZQAgAEQAVwBvAHIAZAAgAC0ARgBvAHIAYwBlACAAfAAgAE8AdQB0AC0ATgB1AGwAbAAKACAAIABOAGUAdwAtAEkAdABlAG0AUAByAG8AcABlAHIAdAB5ACAAJABfAC4AUABTAFAAYQB0AGgAIAAtAE4AYQBtAGUAIABEAGkAcwBhAGIAbABlAGQAQgB5AFUAcwBlAHIAIAAtAFYAYQBsAHUAZQAgADEAIAAtAFAAcgBvAHAAZQByAHQAeQBUAHkAcABlACAARABXAG8AcgBkACAALQBGAG8AcgBjAGUAIAB8ACAATwB1AHQALQBOAHUAbABsAAoAIAAgACQAbgArACsACgB9AAoARwBlAHQALQBBAHAAcAB4AFAAYQBjAGsAYQBnAGUAIAAtAEUAQQAgAFMAaQBsAGUAbgB0AGwAeQBDAG8AbgB0AGkAbgB1AGUAIAB8ACAARgBvAHIARQBhAGMAaAAtAE8AYgBqAGUAYwB0ACAAewAKACAAIAAkAGkAZAAgAD0AIAAkAF8ALgBQAGEAYwBrAGEAZwBlAEYAYQBtAGkAbAB5AE4AYQBtAGUACgAgACAAaQBmACAAKAAtAG4AbwB0ACAAJABpAGQAKQAgAHsAIAByAGUAdAB1AHIAbgAgAH0ACgAgACAAJABwACAAPQAgAEoAbwBpAG4ALQBQAGEAdABoACAAJAByAG8AbwB0ACAAJABpAGQACgAgACAAaQBmACAAKAAtAG4AbwB0ACAAKABUAGUAcwB0AC0AUABhAHQAaAAgACQAcAApACkAIAB7ACAATgBlAHcALQBJAHQAZQBtACAAJABwACAALQBGAG8AcgBjAGUAIAB8ACAATwB1AHQALQBOAHUAbABsACAAfQAKACAAIABOAGUAdwAtAEkAdABlAG0AUAByAG8AcABlAHIAdAB5ACAAJABwACAALQBOAGEAbQBlACAARABpAHMAYQBiAGwAZQBkACAALQBWAGEAbAB1AGUAIAAxACAALQBQAHIAbwBwAGUAcgB0AHkAVAB5AHAAZQAgAEQAVwBvAHIAZAAgAC0ARgBvAHIAYwBlACAAfAAgAE8AdQB0AC0ATgB1AGwAbAAKACAAIABOAGUAdwAtAEkAdABlAG0AUAByAG8AcABlAHIAdAB5ACAAJABwACAALQBOAGEAbQBlACAARABpAHMAYQBiAGwAZQBkAEIAeQBVAHMAZQByACAALQBWAGEAbAB1AGUAIAAxACAALQBQAHIAbwBwAGUAcgB0AHkAVAB5AHAAZQAgAEQAVwBvAHIAZAAgAC0ARgBvAHIAYwBlACAAfAAgAE8AdQB0AC0ATgB1AGwAbAAKACAAIAAkAG4AKwArAAoAfQAKAFcAcgBpAHQAZQAtAEgAbwBzAHQAIAAoACIAIAAgACAAIABbAE8ASwBdACAAewAwAH0AIABhAHAAcABzACAAVQBXAFAAIABzAGUAbQAgAGEAYwBlAHMAcwBvACAAZQBtACAAMgAgAHAAbABhAG4AbwAiACAALQBmACAAJABuACkA
goto :eof

:_bg_apps_on
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" /v GlobalUserDisabled /f >nul 2>&1
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v BackgroundAppGlobalToggle /f >nul 2>&1
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /v LetAppsRunInBackground /f >nul 2>&1
reg delete "HKCU\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /v LetAppsRunInBackground /f >nul 2>&1
powershell -NoProfile -ExecutionPolicy Bypass -EncodedCommand JAByAG8AbwB0ACAAPQAgACcASABLAEMAVQA6AFwAUwBvAGYAdAB3AGEAcgBlAFwATQBpAGMAcgBvAHMAbwBmAHQAXABXAGkAbgBkAG8AdwBzAFwAQwB1AHIAcgBlAG4AdABWAGUAcgBzAGkAbwBuAFwAQgBhAGMAawBnAHIAbwB1AG4AZABBAGMAYwBlAHMAcwBBAHAAcABsAGkAYwBhAHQAaQBvAG4AcwAnAAoAaQBmACAAKABUAGUAcwB0AC0AUABhAHQAaAAgACQAcgBvAG8AdAApACAAewAKACAAIABHAGUAdAAtAEMAaABpAGwAZABJAHQAZQBtACAAJAByAG8AbwB0ACAALQBFAEEAIABTAGkAbABlAG4AdABsAHkAQwBvAG4AdABpAG4AdQBlACAAfAAgAEYAbwByAEUAYQBjAGgALQBPAGIAagBlAGMAdAAgAHsACgAgACAAIAAgAFIAZQBtAG8AdgBlAC0ASQB0AGUAbQBQAHIAbwBwAGUAcgB0AHkAIAAkAF8ALgBQAFMAUABhAHQAaAAgAC0ATgBhAG0AZQAgAEQAaQBzAGEAYgBsAGUAZAAgAC0ARQBBACAAUwBpAGwAZQBuAHQAbAB5AEMAbwBuAHQAaQBuAHUAZQAKACAAIAAgACAAUgBlAG0AbwB2AGUALQBJAHQAZQBtAFAAcgBvAHAAZQByAHQAeQAgACQAXwAuAFAAUwBQAGEAdABoACAALQBOAGEAbQBlACAARABpAHMAYQBiAGwAZQBkAEIAeQBVAHMAZQByACAALQBFAEEAIABTAGkAbABlAG4AdABsAHkAQwBvAG4AdABpAG4AdQBlAAoAIAAgAH0ACgB9AAoAVwByAGkAdABlAC0ASABvAHMAdAAgACcAIAAgACAAIABbAE8ASwBdACAAYwBoAGEAdgBlAHMAIABwAG8AcgAgAGEAcABwACAAcgBlAGEAdABpAHYAYQBkAGEAcwAnAA==
goto :eof

:_cpu_snap
powershell -NoProfile -Command "$p=(Get-Process -EA SilentlyContinue).Count; $c=(Get-CimInstance Win32_Processor -EA SilentlyContinue | Measure-Object -Property LoadPercentage -Average).Average; if ($null -eq $c) {$c=0}; Write-Host ('    Processos: '+[string]([int]$p)+'   CPU (aprox): '+[string]([int]$c)+' %%')"
goto :eof

:_bloat_kill
echo A terminar so processos de bloat (nao toca nas tuas apps)...
for %%P in (GameBar.exe GameBarFTW.exe GameBarPresenceWriter.exe WidgetService.exe Widgets.exe YourPhone.exe PhoneExperienceHost.exe CompatTelRunner.exe SearchApp.exe SearchHost.exe GameChatOverlay.exe XboxApp.exe XboxPcAppFTW.exe XboxGameBar.exe) do (
    taskkill /F /IM %%P >nul 2>&1
)
call :ok "Game Bar / Widgets / SearchHost / CompatTel / Phone"
goto :eof

:_sch_trim
schtasks /Change /TN "\Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" /Disable >nul 2>&1
schtasks /Change /TN "\Microsoft\Windows\Application Experience\ProgramDataUpdater" /Disable >nul 2>&1
schtasks /Change /TN "\Microsoft\Windows\Application Experience\StartupAppTask" /Disable >nul 2>&1
schtasks /Change /TN "\Microsoft\Windows\Customer Experience Improvement Program\Consolidator" /Disable >nul 2>&1
schtasks /Change /TN "\Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" /Disable >nul 2>&1
schtasks /Change /TN "\Microsoft\Windows\Autochk\Proxy" /Disable >nul 2>&1
schtasks /Change /TN "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" /Disable >nul 2>&1
schtasks /Change /TN "\Microsoft\Windows\Feedback\Siuf\DmClient" /Disable >nul 2>&1
schtasks /Change /TN "\Microsoft\Windows\Feedback\Siuf\DmClientOnScenarioDownload" /Disable >nul 2>&1
schtasks /Change /TN "\Microsoft\Windows\Maps\MapsToastTask" /Disable >nul 2>&1
schtasks /Change /TN "\Microsoft\Windows\Maps\MapsUpdateTask" /Disable >nul 2>&1
schtasks /Change /TN "\Microsoft\Windows\Windows Error Reporting\QueueReporting" /Disable >nul 2>&1
schtasks /Change /TN "\Microsoft\Windows\CloudExperienceHost\CreateObjectTask" /Disable >nul 2>&1
schtasks /Change /TN "\Microsoft\XblGameSave\XblGameSaveTask" /Disable >nul 2>&1
schtasks /Change /TN "\Microsoft\Windows\Diagnosis\Scheduled" /Disable >nul 2>&1
schtasks /Change /TN "\Microsoft\Windows\Flighting\FeatureConfig\ReconcileFeatures" /Disable >nul 2>&1
schtasks /Change /TN "\Microsoft\Windows\Flighting\OneSettings\RefreshCache" /Disable >nul 2>&1
call :ok "Tarefas CEIP / CompatTel / Maps / WER (Update intacto)"
goto :eof

:_sch_restore
schtasks /Change /TN "\Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" /Enable >nul 2>&1
schtasks /Change /TN "\Microsoft\Windows\Application Experience\ProgramDataUpdater" /Enable >nul 2>&1
schtasks /Change /TN "\Microsoft\Windows\Application Experience\StartupAppTask" /Enable >nul 2>&1
schtasks /Change /TN "\Microsoft\Windows\Customer Experience Improvement Program\Consolidator" /Enable >nul 2>&1
schtasks /Change /TN "\Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" /Enable >nul 2>&1
schtasks /Change /TN "\Microsoft\Windows\Autochk\Proxy" /Enable >nul 2>&1
schtasks /Change /TN "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" /Enable >nul 2>&1
schtasks /Change /TN "\Microsoft\Windows\Feedback\Siuf\DmClient" /Enable >nul 2>&1
schtasks /Change /TN "\Microsoft\Windows\Feedback\Siuf\DmClientOnScenarioDownload" /Enable >nul 2>&1
schtasks /Change /TN "\Microsoft\Windows\Maps\MapsToastTask" /Enable >nul 2>&1
schtasks /Change /TN "\Microsoft\Windows\Maps\MapsUpdateTask" /Enable >nul 2>&1
schtasks /Change /TN "\Microsoft\Windows\Windows Error Reporting\QueueReporting" /Enable >nul 2>&1
schtasks /Change /TN "\Microsoft\Windows\CloudExperienceHost\CreateObjectTask" /Enable >nul 2>&1
schtasks /Change /TN "\Microsoft\XblGameSave\XblGameSaveTask" /Enable >nul 2>&1
schtasks /Change /TN "\Microsoft\Windows\Diagnosis\Scheduled" /Enable >nul 2>&1
schtasks /Change /TN "\Microsoft\Windows\Flighting\FeatureConfig\ReconcileFeatures" /Enable >nul 2>&1
schtasks /Change /TN "\Microsoft\Windows\Flighting\OneSettings\RefreshCache" /Enable >nul 2>&1
call :ok "Tarefas agendadas reativadas"
goto :eof

:_smart_off
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v SmartScreenEnabled /t REG_SZ /d Off /f >nul
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" /v EnableWebContentEvaluation /t REG_DWORD /d 0 /f >nul
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v EnableSmartScreen /t REG_DWORD /d 0 /f >nul
reg add "HKLM\SOFTWARE\Policies\Microsoft\MicrosoftEdge\PhishingFilter" /v EnabledV9 /t REG_DWORD /d 0 /f >nul
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" /v PreventOverride /t REG_DWORD /d 0 /f >nul
call :ok "SmartScreen Explorer / Edge / apps"
goto :eof

:_smart_on
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v SmartScreenEnabled /t REG_SZ /d Warn /f >nul
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" /v EnableWebContentEvaluation /t REG_DWORD /d 1 /f >nul
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v EnableSmartScreen /f >nul 2>&1
reg delete "HKLM\SOFTWARE\Policies\Microsoft\MicrosoftEdge\PhishingFilter" /v EnabledV9 /f >nul 2>&1
call :ok "SmartScreen restaurado"
goto :eof

:_def_svc
sc stop "%~1" >nul 2>&1
sc config "%~1" start= disabled >nul 2>&1
if errorlevel 1 (
    echo     [AVISO] %~1 bloqueado — desliga Tamper Protection e tenta outra vez.
) else (
    call :ok "%~1"
)
goto :eof

:_def_off
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v DisableAntiSpyware /t REG_DWORD /d 1 /f >nul
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v DisableAntiVirus /t REG_DWORD /d 1 /f >nul
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v DisableRealtimeMonitoring /t REG_DWORD /d 1 /f >nul
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v DisableBehaviorMonitoring /t REG_DWORD /d 1 /f >nul
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v DisableOnAccessProtection /t REG_DWORD /d 1 /f >nul
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v DisableScanOnRealtimeEnable /t REG_DWORD /d 1 /f >nul
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v DisableIOAVProtection /t REG_DWORD /d 1 /f >nul
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" /v SpynetReporting /t REG_DWORD /d 0 /f >nul
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" /v SubmitSamplesConsent /t REG_DWORD /d 2 /f >nul
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Scan" /v DisableArchiveScanning /t REG_DWORD /d 1 /f >nul
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Scan" /v DisableCatchupFullScan /t REG_DWORD /d 1 /f >nul
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Scan" /v DisableCatchupQuickScan /t REG_DWORD /d 1 /f >nul
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Scan" /v DisableEmailScanning /t REG_DWORD /d 1 /f >nul
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Scan" /v DisableRemovableDriveScanning /t REG_DWORD /d 1 /f >nul
call :ok "Politicas Defender (realtime / scans / amostras)"
powershell -NoProfile -Command "try { Set-MpPreference -DisableRealtimeMonitoring $true -DisableBehaviorMonitoring $true -DisableIOAVProtection $true -DisableScriptScanning $true -SubmitSamplesConsent 2 -MAPSReporting 0 -EA Stop; Write-Host '    [OK] Set-MpPreference' } catch { Write-Host '    [AVISO] Tamper Protection pode estar a bloquear o Defender.' }"
call :_def_svc WinDefend
call :_def_svc WdNisSvc
call :_def_svc Sense
call :_def_svc SecurityHealthService
schtasks /Change /TN "\Microsoft\Windows\Windows Defender\Windows Defender Cache Maintenance" /Disable >nul 2>&1
schtasks /Change /TN "\Microsoft\Windows\Windows Defender\Windows Defender Cleanup" /Disable >nul 2>&1
schtasks /Change /TN "\Microsoft\Windows\Windows Defender\Windows Defender Scheduled Scan" /Disable >nul 2>&1
schtasks /Change /TN "\Microsoft\Windows\Windows Defender\Windows Defender Verification" /Disable >nul 2>&1
call :ok "Tarefas agendadas do Defender"
echo     Firewall (mpssvc/BFE) e Windows Update nao foram mexidos.
goto :eof

:_def_on
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /f >nul 2>&1
sc config WinDefend start= auto >nul 2>&1
sc start WinDefend >nul 2>&1
sc config WdNisSvc start= demand >nul 2>&1
sc start WdNisSvc >nul 2>&1
sc config Sense start= delayed-auto >nul 2>&1
sc config SecurityHealthService start= demand >nul 2>&1
sc start SecurityHealthService >nul 2>&1
schtasks /Change /TN "\Microsoft\Windows\Windows Defender\Windows Defender Cache Maintenance" /Enable >nul 2>&1
schtasks /Change /TN "\Microsoft\Windows\Windows Defender\Windows Defender Cleanup" /Enable >nul 2>&1
schtasks /Change /TN "\Microsoft\Windows\Windows Defender\Windows Defender Scheduled Scan" /Enable >nul 2>&1
schtasks /Change /TN "\Microsoft\Windows\Windows Defender\Windows Defender Verification" /Enable >nul 2>&1
powershell -NoProfile -Command "try { Set-MpPreference -DisableRealtimeMonitoring $false -DisableBehaviorMonitoring $false -DisableIOAVProtection $false -DisableScriptScanning $false -SubmitSamplesConsent 1 -MAPSReporting 1 -EA SilentlyContinue; Write-Host '    [OK] Defender restaurado' } catch { Write-Host '    [AVISO] Nao foi possivel restaurar via Set-MpPreference' }"
call :ok "WinDefend / WdNisSvc / SecurityHealth / tarefas"
goto :eof

:_svc_off
echo(%~1| findstr /I /X /C:"WinDefend" /C:"Sense" /C:"WdNisSvc" /C:"SecurityHealthService" /C:"wscsvc" /C:"mpssvc" /C:"MpsSvc" /C:"BFE" /C:"wuauserv" /C:"bits" /C:"UsoSvc" /C:"DoSvc" /C:"WaaSMedicSvc" /C:"Dhcp" /C:"Dnscache" /C:"NlaSvc" /C:"netprofm" /C:"nsi" /C:"Winmgmt" /C:"RpcSs" /C:"DcomLaunch" /C:"LSM" /C:"EventLog" /C:"Schedule" /C:"Audiosrv" /C:"AudioEndpointBuilder" /C:"PlugPlay" /C:"Power" /C:"ProfSvc" /C:"UserManager" /C:"SamSs" /C:"CryptSvc" /C:"gpsvc" /C:"WlanSvc" /C:"WinHttpAutoProxySvc" /C:"TrustedInstaller" /C:"MsMpEng" /C:"NisSrv" >nul 2>&1
if not errorlevel 1 (
    echo     [SKIP] %~1
    goto :eof
)
reg query "HKLM\SYSTEM\CurrentControlSet\Services\%~1" >nul 2>&1
if errorlevel 1 (
    echo     [SKIP] %~1
    goto :eof
)
sc stop "%~1" >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\%~1" /v Start /t REG_DWORD /d 4 /f >nul
sc config "%~1" start= disabled >nul 2>&1
call :ok "%~1"
goto :eof

:_svc_put
reg query "HKLM\SYSTEM\CurrentControlSet\Services\%~1" >nul 2>&1 || goto :eof
reg add "HKLM\SYSTEM\CurrentControlSet\Services\%~1" /v Start /t REG_DWORD /d %~2 /f >nul
sc config "%~1" start= %~3 >nul 2>&1
call :ok "%~1"
goto :eof

:_svc_restore_all
call :_svc_put SysMain 2 auto
call :_svc_put WSearch 2 delayed-auto
call :_svc_put Spooler 2 auto
call :_svc_put FontCache 2 auto
call :_svc_put DPS 2 auto
call :_svc_put CDPSvc 2 auto
call :_svc_put WpnService 2 auto
call :_svc_put DiagTrack 2 auto
for %%S in (Fax RemoteRegistry RetailDemo WMPNetworkSvc diagnosticshub.standardcollector.service MapsBroker CscService wisvc AJRouter shpamsvc PhoneSvc WalletService lfsvc SensorService SensorDataService SensrSvc SCardSvr SCPolicySvc TapiSrv WpcMonSvc WorkFolders fhsvc SEMgrSvc WerSvc PcaSvc dmwappushservice XblGameSave XboxNetApiSvc XboxGipSvc AssignedAccessManagerSvc spectrum SharedRealitySvc DusmSvc TrkWks stisvc WbioSrvc TabletInputService PrintNotify W32Time) do (
    call :_svc_put %%S 3 demand
)
goto :eof

:_clean_temp
del /q /f /s "%TEMP%\*" >nul 2>&1
del /q /f /s "%LOCALAPPDATA%\Temp\*" >nul 2>&1
if exist "%WINDIR%\Temp" del /q /f /s "%WINDIR%\Temp\*" >nul 2>&1
call :ok "TEMP limpo"
goto :eof

:_clean_bin
powershell -NoProfile -Command "Clear-RecycleBin -Force -EA SilentlyContinue; Write-Host '    [OK] Reciclagem'"
goto :eof

:_clean_do
powershell -NoProfile -Command "try { Delete-DeliveryOptimizationCache -Force -EA Stop; Write-Host '    [OK] Delivery Optimization' } catch { $p='C:\Windows\ServiceProfiles\NetworkService\AppData\Local\Microsoft\Windows\DeliveryOptimization\Cache'; if (Test-Path $p) { Get-ChildItem $p -Recurse -Force -EA SilentlyContinue | Remove-Item -Recurse -Force -EA SilentlyContinue; Write-Host '    [OK] cache DO' } else { Write-Host '    [OK] nada a limpar' } }"
goto :eof

:_clean_thumbs
taskkill /f /im explorer.exe >nul 2>&1
timeout /t 1 /nobreak >nul
del /f /s /q "%LocalAppData%\Microsoft\Windows\Explorer\thumbcache_*.db" >nul 2>&1
start explorer.exe
call :ok "Miniaturas"
goto :eof

:_revert_all
echo A reverter...
reg add "HKCU\Control Panel\Mouse" /v MouseSpeed /t REG_SZ /d 1 /f >nul
reg add "HKCU\Control Panel\Mouse" /v MouseThreshold1 /t REG_SZ /d 6 /f >nul
reg add "HKCU\Control Panel\Mouse" /v MouseThreshold2 /t REG_SZ /d 10 /f >nul
reg add "HKCU\Control Panel\Keyboard" /v KeyboardDelay /t REG_SZ /d 1 /f >nul
reg add "HKCU\Control Panel\Keyboard" /v KeyboardSpeed /t REG_SZ /d 31 /f >nul
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" /v VisualFXSetting /t REG_DWORD /d 0 /f >nul
reg add "HKCU\Control Panel\Desktop\WindowMetrics" /v MinAnimate /t REG_SZ /d 1 /f >nul
reg add "HKCU\Control Panel\Desktop" /v DragFullWindows /t REG_SZ /d 1 /f >nul
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v EnableTransparency /t REG_DWORD /d 1 /f >nul
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v TaskbarAnimations /t REG_DWORD /d 1 /f >nul
reg add "HKCU\Software\Microsoft\Windows\DWM" /v EnableAeroPeek /t REG_DWORD /d 1 /f >nul
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\DWM" /v DisallowAnimations /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /v Enabled /t REG_DWORD /d 1 /f >nul
reg delete "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Privacy" /v TailoredExperiencesWithDiagnosticDataEnabled /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v AppCaptureEnabled /t REG_DWORD /d 1 /f >nul
reg add "HKCU\System\GameConfigStore" /v GameDVR_Enabled /t REG_DWORD /d 1 /f >nul
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\GameDVR" /v AllowGameDVR /f >nul 2>&1
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v AllowCortana /f >nul 2>&1
reg delete "HKCU\Software\Policies\Microsoft\Windows\WindowsCopilot" /v TurnOffWindowsCopilot /f >nul 2>&1
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v ShowCopilotButton /f >nul 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\PushNotifications" /v ToastEnabled /t REG_DWORD /d 1 /f >nul
reg delete "HKCU\SOFTWARE\Microsoft\Siuf\Rules" /v NumberOfSIUFInPeriod /f >nul 2>&1
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /v AltTabSettings /f >nul 2>&1
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v SeparateProcess /f >nul 2>&1
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v BingSearchEnabled /f >nul 2>&1
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\SearchSettings" /v IsDynamicSearchBoxEnabled /f >nul 2>&1
reg delete "HKLM\SOFTWARE\Policies\Microsoft\WindowsStore" /v AutoDownload /f >nul 2>&1
reg delete "HKLM\SOFTWARE\Microsoft\Windows\Dwm" /v OverlayTestMode /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v HwSchMode /t REG_DWORD /d 2 /f >nul
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v NetworkThrottlingIndex /t REG_DWORD /d 10 /f >nul
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v EnablePrefetcher /t REG_DWORD /d 3 /f >nul
reg delete "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting" /v Disabled /f >nul 2>&1
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Serialize" /v StartupDelayInMSec /f >nul 2>&1
reg delete "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SoftLandingEnabled /f >nul 2>&1
reg delete "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SystemPaneSuggestionsEnabled /f >nul 2>&1
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v TaskbarDa /f >nul 2>&1
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Dsh" /v AllowNewsAndInterests /f >nul 2>&1
call :_bg_apps_on
call :_sch_restore
call :_def_on
call :_smart_on
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\GameDVR" /f >nul 2>&1
fsutil behavior set disablelastaccess 2 >nul 2>&1
powercfg -h on >nul 2>&1
powercfg -setactive 381b4222-2468-4e61-94e6-e41df20cf209 >nul 2>&1
bcdedit /set hypervisorlaunchtype auto >nul 2>&1
sc config SysMain start= auto >nul 2>&1
sc start SysMain >nul 2>&1
call :_svc_restore_all
sc config NvTelemetryContainer start= demand >nul 2>&1
sc config "AMD Crash Defender Service" start= demand >nul 2>&1
sc config "AMD External Events Utility" start= auto >nul 2>&1
powershell -NoProfile -Command "Enable-MMAgent -MemoryCompression -EA SilentlyContinue; Get-NetAdapter -EA SilentlyContinue | ForEach-Object { try { Enable-NetAdapterPowerManagement -Name $_.Name -EA SilentlyContinue } catch {} ; try { Set-DnsClientServerAddress -InterfaceIndex $_.ifIndex -ResetServerAddresses -EA SilentlyContinue } catch {} }; foreach($k in @('HKCU:\Software\VenixOtimizacao\Prio','HKCU:\Software\NoxOtimizacao\Prio')){ if (Test-Path $k) { $p=Get-ItemProperty $k; $p.PSObject.Properties | Where-Object {$_.Name -notlike 'PS*'} | ForEach-Object { Remove-Item ('HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\'+$_.Name+'\PerfOptions') -Recurse -EA SilentlyContinue; Remove-ItemProperty -Path 'HKCU:\Software\Microsoft\DirectX\UserGpuPreferences' -Name $_.Name -EA SilentlyContinue; Write-Host ('    [OK] prio: '+$_.Name) }; Remove-Item $k -Recurse -Force -EA SilentlyContinue } }"
for /f "tokens=*" %%I in ('reg query "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" 2^>nul') do (
    reg delete "%%I" /v TcpAckFrequency /f >nul 2>&1
    reg delete "%%I" /v TCPNoDelay /f >nul 2>&1
)
call :st_on_silent
reg delete "HKCU\Software\VenixOtimizacao" /f >nul 2>&1
reg delete "HKCU\Software\NoxOtimizacao" /f >nul 2>&1
if exist "%LOCALAPPDATA%\VenixOtimizacao" rd /s /q "%LOCALAPPDATA%\VenixOtimizacao" >nul 2>&1
if exist "%LOCALAPPDATA%\NoxOtimizacao" rd /s /q "%LOCALAPPDATA%\NoxOtimizacao" >nul 2>&1
call :ok "Tweaks VENIX revertidos (apps da Loja nao voltam sozinhas)"
goto :eof

:st_on_silent
powershell -NoProfile -ExecutionPolicy Bypass -Command "$rk='HKCU:\Software\Microsoft\Windows\CurrentVersion\Run'; $sf=Join-Path $env:APPDATA 'Microsoft\Windows\Start Menu\Programs\Startup'; foreach($name in @('VenixOtimizacao','NoxOtimizacao')){ $bk='HKCU:\Software\'+$name+'\StartupBackup'; if (Test-Path $bk) { $p=Get-ItemProperty $bk; $p.PSObject.Properties | Where-Object {$_.Name -notlike 'PS*'} | ForEach-Object { New-ItemProperty $rk -Name $_.Name -Value $_.Value -PropertyType String -Force | Out-Null; Write-Host ('    [OK] Run: '+$_.Name) }; Remove-Item $bk -Recurse -Force -EA SilentlyContinue }; $hold=Join-Path $env:LOCALAPPDATA ($name+'\startup-disabled'); if (Test-Path $hold) { Get-ChildItem $hold -EA SilentlyContinue | ForEach-Object { Move-Item $_.FullName (Join-Path $sf $_.Name) -Force; Write-Host ('    [OK] atalho: '+$_.Name) } } }"
goto :eof
