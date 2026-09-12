@echo off
setlocal EnableExtensions EnableDelayedExpansion
:: =============================================================================
:: Optimizacao.bat
:: Ajustes REVERSIVEIS de desempenho para Windows 10/11 (efeitos visuais + jogos)
:: Execute como Administrador. Nao desativa Defender, Update, Firewall nem a rede.
::
:: Reverter: use o ponto de restauracao criado no inicio, ou os valores
:: comentados junto de cada chave (padroes tipicos da Microsoft).
:: =============================================================================

chcp 65001 >nul
title Otimizacao Windows - desempenho e jogos
color 07

echo.
echo ============================================================
echo   Otimizacao Windows  (desempenho / FPS)
echo   Seguro: nao mexe em Defender, Update, Firewall ou rede
echo ============================================================
echo.

:: --- Exigir Administrador (tenta elevar sozinho) -----------------------------
net session >nul 2>&1
if %errorLevel% NEQ 0 (
    echo [!] Este script precisa de permissao de Administrador.
    echo     A pedir elevacao...
    powershell -NoProfile -ExecutionPolicy Bypass -Command "Start-Process -FilePath '%~f0' -Verb RunAs"
    exit /b 1
)

echo [OK] A executar como Administrador.
echo.

:: --- Ponto de restauracao ----------------------------------------------------
echo [*] A criar um ponto de restauracao do sistema...
powershell.exe -NoProfile -ExecutionPolicy Bypass -Command "try { Checkpoint-Computer -Description 'Antes da Otimizacao (Vitex)' -RestorePointType MODIFY_SETTINGS; Write-Host '    [OK] Ponto de restauracao criado.' } catch { Write-Host '    [AVISO] Nao foi possivel criar o ponto de restauracao.'; Write-Host ('            ' + $_.Exception.Message); Write-Host '            O script continua. Restaure o sistema manualmente se precisar.' }"
echo.

echo [INFO] Nao sera alterado: Windows Defender, Windows Update, Firewall, rede.
echo [INFO] Nenhum ficheiro de sistema sera apagado.
echo.

:: =============================================================================
:: 1) Efeitos visuais  (estilo "Ajustar para melhor desempenho")
::    VisualFXSetting: 0=Windows decide  1=melhor aparencia  2=melhor desempenho  3=personalizado
::    Usamos 3 (personalizado) com tudo desligado EXCETO suavizacao de fontes,
::    para o texto continuar legivel. Jogos nao ganham FPS com fontes pixelizadas.
:: =============================================================================
echo [*] A desativar efeitos visuais inuteis (animacoes, transparencia, sombras)...

:: Padrao tipico: VisualFXSetting=0 ou 1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" /v VisualFXSetting /t REG_DWORD /d 3 /f >nul 2>&1
if errorlevel 1 (echo     [AVISO] VisualFXSetting) else (echo     [OK] Modo personalizado: melhor desempenho, fontes suaves)

:: UserPreferencesMask — desliga animacoes/fade/sombra do cursor (mantem UI effects basicos)
:: Padrao tipico: 9E 1E 07 80 12 00 00 00
reg add "HKCU\Control Panel\Desktop" /v UserPreferencesMask /t REG_BINARY /d 9012038010000000 /f >nul 2>&1
if errorlevel 1 (echo     [AVISO] UserPreferencesMask) else (echo     [OK] Mascara de preferencias visuais)

:: Animacao ao minimizar/maximizar  (padrao: 1)
reg add "HKCU\Control Panel\Desktop\WindowMetrics" /v MinAnimate /t REG_SZ /d 0 /f >nul 2>&1
if errorlevel 1 (echo     [AVISO] MinAnimate) else (echo     [OK] Animacao de janelas desligada)

:: Mostrar conteudo da janela ao arrastar  (padrao: 1)
reg add "HKCU\Control Panel\Desktop" /v DragFullWindows /t REG_SZ /d 0 /f >nul 2>&1
if errorlevel 1 (echo     [AVISO] DragFullWindows) else (echo     [OK] Arrastar janela sem conteudo)

:: Atraso dos menus  (padrao: 400 ms)
reg add "HKCU\Control Panel\Desktop" /v MenuShowDelay /t REG_SZ /d 0 /f >nul 2>&1
if errorlevel 1 (echo     [AVISO] MenuShowDelay) else (echo     [OK] Menus instantaneos)

:: Manter ClearType / suavizacao de fontes  (melhor desempenho puro desligaria isto)
reg add "HKCU\Control Panel\Desktop" /v FontSmoothing /t REG_SZ /d 2 /f >nul 2>&1
reg add "HKCU\Control Panel\Desktop" /v FontSmoothingType /t REG_DWORD /d 2 /f >nul 2>&1
echo     [OK] Suavizacao de fontes mantida (legibilidade)

:: Transparencia Aero / Acrilico  (padrao: 1)
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v EnableTransparency /t REG_DWORD /d 0 /f >nul 2>&1
if errorlevel 1 (echo     [AVISO] EnableTransparency) else (echo     [OK] Transparencia desligada)

:: Animacoes da barra de tarefas  (padrao: 1)
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v TaskbarAnimations /t REG_DWORD /d 0 /f >nul 2>&1
if errorlevel 1 (echo     [AVISO] TaskbarAnimations) else (echo     [OK] Animacoes da barra de tarefas desligadas)

:: Sombras em listas / etiquetas  (padrao: 1)
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v ListviewShadow /t REG_DWORD /d 0 /f >nul 2>&1
if errorlevel 1 (echo     [AVISO] ListviewShadow) else (echo     [OK] Sombras de lista desligadas)

:: Translucidez ao selecionar  (padrao: 1)
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v ListviewAlphaSelect /t REG_DWORD /d 0 /f >nul 2>&1
if errorlevel 1 (echo     [AVISO] ListviewAlphaSelect) else (echo     [OK] Selecao translucida desligada)

:: Aero Peek  (padrao: EnableAeroPeek=1 / DisablePreviewDesktop=0)
reg add "HKCU\Software\Microsoft\Windows\DWM" /v EnableAeroPeek /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v DisablePreviewDesktop /t REG_DWORD /d 1 /f >nul 2>&1
if errorlevel 1 (echo     [AVISO] Aero Peek) else (echo     [OK] Aero Peek desligado)

:: Miniaturas ao passar o rato no Peek  (padrao: 1)
reg add "HKCU\Software\Microsoft\Windows\DWM" /v AlwaysHibernateThumbnails /t REG_DWORD /d 0 /f >nul 2>&1
echo     [OK] Miniaturas DWM em hibernacao desligadas

:: Politica: sem animacoes DWM (apagar o valor para reverter)
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DWM" /v DisallowAnimations /t REG_DWORD /d 1 /f >nul 2>&1
if errorlevel 1 (echo     [AVISO] DisallowAnimations) else (echo     [OK] Politica: animacoes DWM desligadas)

echo.

:: =============================================================================
:: 2) Jogos / FPS — Game Mode ON, Game DVR / gravacao / overlay OFF
:: =============================================================================
echo [*] A ligar o Modo de Jogo e a cortar gravacao/overlays da Xbox...

:: Game Mode  (padrao: 1 em Win11, por vezes 0)
reg add "HKCU\Software\Microsoft\GameBar" /v AutoGameModeEnabled /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKCU\Software\Microsoft\GameBar" /v AllowAutoGameMode /t REG_DWORD /d 1 /f >nul 2>&1
if errorlevel 1 (echo     [AVISO] Game Mode) else (echo     [OK] Game Mode ligado)

:: Painel / overlay da Game Bar  (padrao: UseNexus=1, ShowStartupPanel=1)
reg add "HKCU\Software\Microsoft\GameBar" /v UseNexusForGameBarEnabled /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\Software\Microsoft\GameBar" /v ShowStartupPanel /t REG_DWORD /d 0 /f >nul 2>&1
echo     [OK] Overlay e popup da Game Bar desligados

:: Game DVR / capturas  (padrao: AppCaptureEnabled=1, GameDVR_Enabled=1)
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v AppCaptureEnabled /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v AudioCaptureEnabled /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v CursorCaptureEnabled /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v HistoricalCaptureEnabled /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\System\GameConfigStore" /v GameDVR_Enabled /t REG_DWORD /d 0 /f >nul 2>&1
if errorlevel 1 (echo     [AVISO] Game DVR) else (echo     [OK] Game DVR e gravacao em segundo plano desligados)

:: Politica: AllowGameDVR=0  (apagar o valor ou =1 para reverter)
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\GameDVR" /v AllowGameDVR /t REG_DWORD /d 0 /f >nul 2>&1
if errorlevel 1 (echo     [AVISO] Politica Game DVR) else (echo     [OK] Politica: Game DVR desativado)

:: Prioridade do agendador para a tarefa "Games"  (padroes: GPU Priority=2, Priority=2, Scheduling=Medium)
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "GPU Priority" /t REG_DWORD /d 8 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Priority" /t REG_DWORD /d 6 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Scheduling Category" /t REG_SZ /d "High" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "SFIO Priority" /t REG_SZ /d "High" /f >nul 2>&1
echo     [OK] Prioridade multimedia de jogos elevada

:: SystemResponsiveness: quanto CPU fica para tarefas em fundo  (padrao: 20)
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v SystemResponsiveness /t REG_DWORD /d 10 /f >nul 2>&1
echo     [OK] SystemResponsiveness=10 (menos CPU reservada ao fundo)

:: Otimizacoes para jogos em janela  (Win11; padrao: desligado)
reg add "HKCU\Software\Microsoft\DirectX\UserGpuPreferences" /v DirectXUserGlobalSettings /t REG_SZ /d "SwapEffectUpgradeEnable=1;" /f >nul 2>&1
echo     [OK] Otimizacoes DirectX para jogos em janela ligadas

echo.

:: =============================================================================
:: 3) GPU scheduling (HAGS) — util em GPUs modernas; ignorado se o driver nao suportar
::    HwSchMode: 1=desligado  2=ligado   (padrao: 1 ou 2 conforme o Windows)
:: =============================================================================
echo [*] A ligar o agendamento de GPU com aceleracao por hardware (se existir)...
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v HwSchMode /t REG_DWORD /d 2 /f >nul 2>&1
if errorlevel 1 (echo     [AVISO] HwSchMode) else (echo     [OK] HAGS ligado (HwSchMode=2). Pode precisar de reiniciar.)
echo.

:: =============================================================================
:: 4) Plano de energia: Ultimate Performance, senao Alto desempenho
::    GUIDs oficiais da Microsoft. Nao mexe no plano em bateria (DC).
:: =============================================================================
echo [*] A ativar plano de energia de alto desempenho...
:: GUID oficial Ultimate Performance. So duplica se ainda nao existir (evita copias infinitas).
powercfg -list | findstr /I /C:"e9a42b02-d5df-448d-aa00-03f14749eb61" >nul
if errorlevel 1 (
    powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61 >nul 2>&1
)
powercfg -setactive e9a42b02-d5df-448d-aa00-03f14749eb61 >nul 2>&1
if not errorlevel 1 (
    echo     [OK] Plano Ultimate Performance ativo
) else (
    powercfg -setactive 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c >nul 2>&1
    if not errorlevel 1 (
        echo     [OK] Plano Alto desempenho ativo
    ) else (
        echo     [AVISO] Nao foi possivel mudar o plano de energia. A continuar com o atual.
    )
)

:: Minimo 100%% de CPU em corrente (AC). Em bateria (DC) nao alteramos.
powercfg -setacvalueindex SCHEME_CURRENT SUB_PROCESSOR PROCTHROTTLEMIN 100 >nul 2>&1
powercfg -setacvalueindex SCHEME_CURRENT SUB_PROCESSOR PROCTHROTTLEMAX 100 >nul 2>&1
powercfg -setactive SCHEME_CURRENT >nul 2>&1
echo     [OK] CPU em corrente: minimo/maximo 100%% (bateria inalterada)
echo.

:: =============================================================================
:: 5) Rato — desligar aceleracao ("Melhorar precisao do ponteiro")
::    Padrao tipico: MouseSpeed=1, MouseThreshold1=6, MouseThreshold2=10
:: =============================================================================
echo [*] A desligar a aceleracao do rato...
reg add "HKCU\Control Panel\Mouse" /v MouseSpeed /t REG_SZ /d 0 /f >nul 2>&1
reg add "HKCU\Control Panel\Mouse" /v MouseThreshold1 /t REG_SZ /d 0 /f >nul 2>&1
reg add "HKCU\Control Panel\Mouse" /v MouseThreshold2 /t REG_SZ /d 0 /f >nul 2>&1
if errorlevel 1 (echo     [AVISO] MouseSpeed) else (echo     [OK] Aceleracao do rato desligada (Enhance pointer precision OFF))
echo.

:: =============================================================================
:: 6) Widgets, dicas e atraso no arranque (fluff que gasta CPU/RAM)
:: =============================================================================
echo [*] A cortar widgets, dicas e atraso de arranque...

:: Widgets / Noticias e interesses  (padrao: TaskbarDa=1; AllowNewsAndInterests ausente=permitido)
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v TaskbarDa /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Dsh" /v AllowNewsAndInterests /t REG_DWORD /d 0 /f >nul 2>&1
echo     [OK] Widgets / noticias na barra desligados

:: Atraso artificial de programas de arranque  (padrao: chave inexistente ~10s)
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Serialize" /v StartupDelayInMSec /t REG_DWORD /d 0 /f >nul 2>&1
echo     [OK] Atraso de arranque do Explorer = 0 ms

:: Dicas, sugestoes e "bem-vindo" da Microsoft  (padrao: 1)
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SoftLandingEnabled /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SystemPaneSuggestionsEnabled /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-310093Enabled /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-338388Enabled /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-338389Enabled /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-338393Enabled /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-353694Enabled /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-353696Enabled /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\UserProfileEngagement" /v ScoobeSystemSettingEnabled /t REG_DWORD /d 0 /f >nul 2>&1
echo     [OK] Dicas e sugestoes da Microsoft desligadas

:: Destaques da pesquisa (gasta rede/CPU; padrao: 1)
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\SearchSettings" /v IsDynamicSearchBoxEnabled /t REG_DWORD /d 0 /f >nul 2>&1
echo     [OK] Destaques dinamicos da pesquisa desligados

echo.

:: =============================================================================
:: Aplicar efeitos visuais: reiniciar o Explorer (barra de tarefas volta sozinha)
:: =============================================================================
echo [*] A reiniciar o Explorador do Windows para aplicar os efeitos visuais...
taskkill /f /im explorer.exe >nul 2>&1
timeout /t 1 /nobreak >nul
start "" explorer.exe
echo     [OK] Explorer reiniciado
echo.

echo ============================================================
echo   Concluido.
echo.
echo   Reinicie o PC para aplicar por completo o plano de energia
echo   e o agendamento de GPU.
echo.
echo   Para reverter: Definicoes ^> Sistema ^> Recuperacao ^>
echo   Ponto de restauracao  OU  veja os comentarios neste .bat
echo   (valores padrao ao lado de cada chave).
echo.
echo   Isto NAO desativou:
echo     - Windows Defender / SmartScreen
echo     - Windows Update
echo     - Firewall
echo     - Rede / Wi-Fi / Ethernet
echo ============================================================
echo.
pause
endlocal
exit /b 0
