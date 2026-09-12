# Otimização Windows (`Optimizacao.bat`)

Script para **Windows 10/11**. Corre **como Administrador**.  
Ficheiro principal: `Optimizacao.bat` (ASCII). Cópia com o nome pedido: `Optimizaça.bat` (mesmo conteúdo).

## Como usar

1. Clicar com o botão direito em `Optimizacao.bat` → **Executar como administrador**.
2. O script tenta criar um **ponto de restauro** antes de alterar o que quer que seja.
3. Cada passo aparece no ecrã em português.
4. No fim, **reinicia o PC** para aplicar o plano de energia e o agendamento de GPU.

## O que altera

- **Efeitos visuais** no estilo “Ajustar para melhor desempenho”: animações de janelas e da barra de tarefas, transparência, sombras, Aero Peek, fade de menus, atraso de menus. A **suavização de fontes (ClearType) fica ligada** para o texto continuar legível.
- **Jogos / FPS:** Game Mode ligado; Game DVR, gravação em segundo plano e overlay da Xbox Game Bar desligados; prioridade multimedia da tarefa “Games” mais alta.
- **Energia:** tenta o plano *Ultimate Performance*; se não existir, usa *Alto desempenho*. Em corrente, CPU a 100%. Em **bateria não mexe**.
- **GPU:** liga o agendamento com aceleração por hardware (HAGS), se o driver aceitar.
- **Rato:** desliga a aceleração (“Melhorar precisão do ponteiro”).
- **Fluff:** widgets/notícias na barra, dicas da Microsoft, destaques da pesquisa, atraso artificial no arranque.

As chaves de registo estão **comentadas no `.bat`** com o valor típico de fábrica, para poderes reverter à mão.

## O que **não** toca (de propósito)

- Windows Defender / SmartScreen  
- Windows Update  
- Firewall  
- Rede (Wi‑Fi, Ethernet, IPv6, DNS)  
- Ficheiros de sistema (nada é apagado)  
- Serviços do Xbox necessários para a app/Game Pass (só DVR/overlay via registo)  
- Sem tarefas agendadas, sem cópia para a pasta de arranque, sem persistência tipo malware  

## Como reverter

1. **Preferido:** Definições → Sistema → Recuperação → **Restauro do sistema** → ponto `Antes da Otimizacao (Vitex)`.
2. Ou restabelece os valores comentados em `Optimizacao.bat` (e apaga as políticas `AllowGameDVR` e `AllowNewsAndInterests` se as quiseres de volta).
3. Plano de energia: Definições → Sistema → Energia → *Equilibrado*.
4. Rato: Definições → Bluetooth e dispositivos → Rato → voltar a marcar “Melhorar precisão do ponteiro” se quiseres.

Alguns ajustes (HAGS, DVR, plano de energia) só ficam consistentes depois de um reinício.
