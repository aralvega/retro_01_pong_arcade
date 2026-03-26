# Development Roadmap

## Phase 0 — Project Setup
- Create the Processing project
- Initialize local and remote Git repository
- Create initial README
- Define project structure

## Phase 1 — Core Architecture
- Implement main sketch structure
- Add `Game` coordinator
- Add `GameState` interface
- Add `Time` for delta time control
- Add `Config` constants

## Phase 2 — Entities and First Playable Prototype
- Implement `InicioState`
- Implement `JugandoState`
- Add `Paleta`
- Add `PaletaJugador`
- Add `Pelota`
- Introduce `PVector` for position and velocity
- Validate movement and vertical bounce

## Phase 3 — Collision System
- Introduce `BoxCollider`
- Add `Collision` utility class
- Implement circle-vs-box collision detection
- Validate paddle-ball collision
- Separate detection from collision response

## Phase 4 — Core Pong Rules
- Detect lateral exits
- Reset ball after score
- Add scoring system
- Introduce HUD for score visualization

## Phase 5 — Opponent and Game Flow
- Add `PaletaCPU`
- Add `GanadorState`
- Add state transitions between gameplay screens
- Define victory condition

## Phase 6 — Presentation and Polish
- Improve visual clarity
- Balance movement and difficulty
- Refactor constants and minor responsibilities
- Improve feedback during gameplay

## Phase 7 — Portfolio Documentation
- Add labs
- Add theory notes
- Add diagrams
- Add screenshots and GIFs
- Improve README with final media and structure

---
⬅️ [Volver al README](../../README.md)  
🏠 [Repositorio principal](https://github.com/aralvega/retro-01-pong-arcade)