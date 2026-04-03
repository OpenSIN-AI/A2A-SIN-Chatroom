# SIN-Chatroom — Universal Messenger Bridge Hub

**One platform to rule them all.** SIN-Chatroom connects ALL 37+ messaging platforms through Matrix bridges — hosted on a free Hugging Face VM with Cloudflare Tunnel.

## Why SIN-Chatroom?

Instead of 37 separate agents, SIN-Chatroom uses **Matrix as the universal protocol** — connecting every messenger through bridges. End users get ONE chat interface that talks to EVERY platform.

### Architecture

```
┌─────────────────────────────────────────────────────────────┐
│                    SIN-Chatroom (HF VM)                      │
│                                                              │
│  ┌──────────────┐    ┌──────────────────────────────────┐   │
│  │   Synapse    │◄──►│        Matrix Bridges            │   │
│  │  Homeserver  │    │                                  │   │
│  └──────┬───────┘    │  WhatsApp  Telegram  Signal      │   │
│         │            │  iMessage  Teams     Slack        │   │
│         │            │  Instagram Discord   SMS          │   │
│         │            │  Email     IRC       LINE         │   │
│         │            │  WeChat    Zoom      Nostr        │   │
│         │            │  Xbox      PSN       Nintendo     │   │
│         │            │  ...and 25 more bridges           │   │
│         │            └──────────────────────────────────┘   │
│         │                                                    │
│  ┌──────▼───────┐                                           │
│  │  Cloudflare  │  ◄── Public Access (free)                 │
│  │   Tunnel     │                                           │
│  └──────────────┘                                           │
└─────────────────────────────────────────────────────────────┘
         ▲
         │ Users connect via ANY Matrix client
         │ (Element, FluffyChat, Nheko, etc.)
```

## Quick Start

### 1. Deploy on Hugging Face (Free)

```bash
cd SIN-Chatroom
./scripts/deploy-hf.sh
```

### 2. Configure Cloudflare Tunnel

```bash
./scripts/setup-cloudflare-tunnel.sh
```

### 3. Connect Your Messengers

```bash
# WhatsApp
./bridges/whatsapp/setup.sh

# Telegram
./bridges/telegram/setup.sh

# Signal
./bridges/signal/setup.sh

# All bridges
./scripts/enable-all-bridges.sh
```

### 4. Chat!

Open Element (or any Matrix client), login to your SIN-Chatroom, and start chatting across ALL platforms from ONE interface.

## Supported Bridges (37+)

| Category | Bridges |
|---|---|
| **Messenger** | WhatsApp, Telegram, Signal, iMessage, BlueBubbles, Beeper, SMS, Email |
| **Social Media** | X/Twitter, Reddit, Instagram, TikTok, YouTube, Medium, LinkedIn, Nostr |
| **Enterprise** | Slack, Teams, Google Chat, Google Apps, Feishu, Zoom, WebChat |
| **Gaming** | Xbox, PlayStation, Nintendo |
| **Protocols** | Matrix, IRC, LINE, WeChat |

## Why This Beats OpenClaw

| Feature | OpenClaw | SIN-Chatroom |
|---|---|---|
| **Architecture** | 25 separate bots | 1 Matrix server + bridges |
| **User Experience** | Switch between bots | ONE chat interface |
| **Cross-Platform** | No | ✅ WhatsApp → Telegram → Signal |
| **Hosting** | Self-hosted only | Free HF VM + Cloudflare |
| **Setup Time** | Hours per platform | 10 minutes for ALL |
| **Cost** | Multiple servers | FREE (HF + Cloudflare) |

## License

MIT — Copyright (c) 2026 OpenSIN-AI
