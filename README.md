# Chitin Homebrew Tap

Homebrew formulae for the [Chitin](https://github.com/chitinhq/chitin) platform -- runtime governance for AI coding agents.

## Setup

```bash
brew tap chitinhq/tap
```

## Available Formulae

| Formula | Description | Version |
|---------|-------------|---------|
| `shellforge` | Local governed agent runtime -- wraps Ollama + Chitin governance | 0.6.1 |
| `octi-pulpo` | Swarm coordination brain -- multi-agent dispatch and scheduling | 1.0.0 |
| `cata` | Governed CLI agent driver (Clawta) | 1.0.0 |

## Install

```bash
# ShellForge -- the full governed agent sandbox
brew install chitinhq/tap/shellforge

# Octi Pulpo -- swarm coordination
brew install chitinhq/tap/octi-pulpo

# Clawta -- raw governed CLI agent driver
brew install chitinhq/tap/cata
```

## Update

```bash
brew update
brew upgrade chitinhq/tap/shellforge
brew upgrade chitinhq/tap/octi-pulpo
brew upgrade chitinhq/tap/cata
```

## Supported Platforms

All formulae ship pre-built binaries for:

- macOS (Apple Silicon and Intel)
- Linux (ARM64 and x86_64)

## Links

- [Chitin Kernel](https://github.com/chitinhq/chitin) -- the governance engine underneath
- [ShellForge](https://github.com/chitinhq/shellforge) -- DefenseClaw sandbox source
- [Workspace](https://github.com/chitinhq/workspace) -- platform overview and architecture
