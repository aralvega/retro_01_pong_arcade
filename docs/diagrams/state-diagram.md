# 🔄 Diagrama de estados

```mermaid
stateDiagram-v2

    [*] --> InicioState

    InicioState --> JugandoState : SPACE / iniciar partida

    JugandoState --> GanadorState : jugador o CPU alcanza WIN_SCORE

    GanadorState --> JugandoState : R / reiniciar partida

    GanadorState --> [*] : cerrar 
   
   ``` 
   ---

⬅️ [Volver al README](../../README.md)  
🏠 [Repositorio principal](https://github.com/aralvega/retro_01_pong_arcade)