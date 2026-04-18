# A2A-SIN-Chatroom

> SIN Chatroom — Multi-Platform Chat Management & Platform Auth Status

[![SIN Chatroom](https://img.shields.io/badge/SIN%20Chatroom-latest-green)](https://a2a.delqhi.com/agents/sin-chatroom)
[![Node 18+](https://img.shields.io/badge/node-18%2B-339933)](https://nodejs.org)
[![License](https://img.shields.io/badge/License-Apache--2.0-blue.svg)](LICENSE)

## Overview

A2A (Agent-to-Agent) Chatroom integration for the SIN Solver platform. Zentraler Hub für Multi-Platform Chat Management und Platform Auth Status Monitoring.

## Platform Auth Status (2026-04-04)

Der Chatroom Agent überwacht den Login-Status aller 12 SIN Platform Agents:

| Plattform | Status | Auth Cookies | Handle |
|-----------|--------|-------------|--------|
| X (Twitter) | ✅ LOGGED IN | 4 | @opnsin |
| YouTube | ✅ LOGGED IN | 29 | @opnsin |
| Instagram | ❌ NOT_VISITED | 0 | @opnsin |
| Reddit | ❌ NOT_VISITED | 0 | opnsin |
| Discord | ❌ NOT_VISITED | 0 | opnsin |
| Medium | ❌ NOT_VISITED | 0 | @opnsin |
| TikTok | ⚠️ VISITED | 0 | @opnsin |
| HuggingFace | ✅ LOGGED IN | 2 | delqhi |
| LinkedIn | ✅ LOGGED IN | 2 | opnsin |
| Telegram | ❌ NOT_VISITED | 0 | @opnsin |
| Google-Apps | ✅ LOGGED IN | 19 | opnsin |
| Community | ✅ LOGGED IN | 5 | opnsin |

**6/12 Plattformen eingeloggt** via sin-platform-auth (Chrome Cookie-Extraktion)

## Quick Start

```bash
git clone https://github.com/OpenSIN-AI/A2A-SIN-Chatroom.git
cd A2A-SIN-Chatroom
bun install
bun start
```

## Features

- Multi-Platform Chat Management
- Platform Auth Status Monitoring
- sin-platform-auth Integration
- A2A Protocol Support
- OpenSIN MCP Server Compatibility
- Zero Human Intervention

## Architecture

This agent connects to the OpenSIN orchestrator via A2A protocol and handles Chatroom messaging operations. It monitors Platform Auth status across all 12 supported platforms and reports session health to the fleet.

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md).

## License

Apache-2.0 — See [LICENSE](LICENSE).

## 📚 Documentation

This repository follows the [Global Dev Docs Standard](https://github.com/OpenSIN-AI/Global-Dev-Docs-Standard).

For contribution guidelines, see [CONTRIBUTING.md](CONTRIBUTING.md).
For security policy, see [SECURITY.md](SECURITY.md).
For the complete OpenSIN ecosystem, see [OpenSIN-AI Organization](https://github.com/OpenSIN-AI).

## 🔗 See Also

- [OpenSIN Core](https://github.com/OpenSIN-AI/OpenSIN) — Main platform
- [OpenSIN-Code](https://github.com/OpenSIN-AI/OpenSIN-Code) — CLI
- [OpenSIN-backend](https://github.com/OpenSIN-AI/OpenSIN-backend) — Backend
- [OpenSIN-Infrastructure](https://github.com/OpenSIN-AI/OpenSIN-Infrastructure) — Deploy
- [Global Dev Docs Standard](https://github.com/OpenSIN-AI/Global-Dev-Docs-Standard) — Docs
