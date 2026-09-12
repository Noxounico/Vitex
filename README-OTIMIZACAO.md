# Boost FPS Nox — Optimização

Ferramenta **Windows 10/11** em menu (laranja, opções numeradas).  
Ficheiros: `Optimizacao.bat` e a cópia `Optimizaça.bat` (mesmo conteúdo).

## Como usar

1. Botão direito → **Executar como administrador**.
2. Escolhe o número no menu (Enter).
3. Cria um **ponto de restauro** (opção 1) antes do resto.
4. Reinicia o PC depois de energia / NVIDIA / AMD / HAGS.

## Menu principal

| # | Opção | O que faz |
|---|--------|-----------|
| 1 | Ponto de restauração | Checkpoint do sistema |
| 2 | Otimizar Windows | Submenu (efeitos, energia, Explorer, etc.) |
| 3 | Otimização de jogos | Game Mode + prioridade CPU/GPU por jogo |
| 4 | Periféricos | Desliga aceleração do rato |
| 5 | Inicialização | Atraso de arranque = 0 |
| 6 | RAM | Limpa `%TEMP%` do utilizador + tarefas idle |
| 7 | Ping | Sem throttle MMCSS + TCPNoDelay (rede **continua ligada**) |
| 8 | AMD | HAGS + ULPS off se houver GPU AMD |
| 9 | NVIDIA | HAGS + desliga só telemetria NVIDIA se existir |
| 10 | Fix de erros | `sfc` + DISM RestoreHealth |
| 11 | Debloater leve | Widgets, dicas, destaques — **não desinstala** o Windows |
| 12 | Sair | |

Jogos no submenu 3: Fortnite, GTA V, FiveM, CS2, Minecraft, Valorant, LoL, Warzone, Apex, Roblox, GoW, MTA, ETS2, R6, Cult of the Lamb, ULTRAKILL, Blood Strike, Arena Breakout, RE4/RE2 Remake.

## O que **não** toca (de propósito)

- Windows Defender / SmartScreen / Anti-Malware  
- UAC  
- Windows Update  
- Firewall  
- Wi‑Fi / Ethernet / IPv6  
- Ficheiros de sistema (só temp do utilizador e cache de miniaturas)  
- Sem tarefas agendadas nem cópia para a pasta de arranque  

## Reverter

Definições → Sistema → Recuperação → restauro `Boost FPS Nox Optimizacao`.  
Plano de energia: *Equilibrado*. Rato: voltar a marcar “Melhorar precisão do ponteiro”.
