# VENIX Otimização (`Optimizacao.bat`)

Painel dourado em caixa (logo VENIX + duas colunas). Corre **como Administrador**.

## Como usar

Botão direito → Executar como administrador. Ponto de restauro é **só** a opção **1** (não é criado nas outras ações).

O ficheiro está em ASCII/UTF-8 **sem BOM** para o menu não aparecer duplicado.

## Menus

1 Restauro · 2 Windows · 3 Jogos · 4 Hardware · 5 Arranque · 6 RAM · 7 Ping · 8 AMD · 9 NVIDIA · 10 Fix · 11 Debloater · 12 Limpeza · 13 Reverter tudo · 14 Reduzir processos / CPU · 15 Remover apps em 2 plano · 16 FiveM / Fortnite · 17 Sair

**Windows → 16 SmartScreen e 27 Anti-Malware:** desligam de verdade (pedem `S`). Tamper Protection no Windows Security pode bloquear até a desligares uma vez.  
**Recusado:** UAC, desinstalar a Loja, desinstalar a Calculadora.  
Windows Update / Firewall / rede **não** são desligados. O Fix da Update só repara serviços.

Serviços (menu Windows → 8): **inúteis** e **normais**. Opção **14** reduz processos/CPU de fundo.

## Apps em 2º plano (opção 15)

Desliga mesmo as apps UWP/Loja em segundo plano (não é só um echo):

- `GlobalUserDisabled=1` (HKCU + HKLM)
- `BackgroundAppGlobalToggle=0`
- política `LetAppsRunInBackground=Never` (2) em HKCU e HKLM
- `Disabled` / `DisabledByUser` em cada pacote AppX (incluindo AllUsers)
- para extras SearchHost / SearchApp / RuntimeBroker (Start Menu fica)
- reinicia o Explorer para as chaves pegarem e faz `reg query` no fim para confirmares que ficaram

Não fecha Cursor, Discord, browsers nem jogos. Reverter: menu **13**.

## RAM (opção 6)

1. **Limpar RAM agora** — corta working sets uma vez e esvazia a lista standby. As tuas apps continuam abertas.
2. **Bloquear RAM** — cria a tarefa `VENIX-RamHold` (a cada 3 min): limpa standby (classes 4/5), corta só processos de bloat, desliga SysMain para a cache não voltar a encher. Não toca no working set de Cursor/Discord/browsers/jogos.
3. **Desbloquear RAM** — apaga a tarefa e volta a ligar o SysMain.

**Reverter tudo** também remove `VENIX-RamHold` e a pasta `%ProgramData%\VenixOtimizacao`.

## FiveM / Fortnite (opção 16, ou Jogos → 23)

Perfil só para esses dois títulos: CPU High + IO, GPU de alto desempenho, fullscreen optimizations off, timer resolution, MMCSS/HAGS, TCPNoDelay. **Sem cheats, sem inject, sem mexer em EasyAntiCheat / BattlEye.**

1 FiveM · 2 Fortnite · 3 os dois · 4 reverter perfil · 5 voltar.

## Reverter

Opção **13 Reverter tudo**, ou Reverter nos submenus Xbox / serviços / hardware / arranque / RAM / FiveM-Fortnite. Ponto `VENIX Otimizacao` só existe se usaste a opção **1**. Apps da Loja removidas no Debloater não voltam sozinhas. Quem usou a versão Nox antiga também vê os backups restaurados.
