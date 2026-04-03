# SIN-Chatroom Bridge Setup Guide

## How Bridges Work

SIN-Chatroom uses Matrix as the universal protocol. Each bridge connects a messaging platform to Matrix, allowing you to chat with ANY platform from ONE interface.

## Quick Setup for Each Bridge

### WhatsApp
```bash
cd bridges/whatsapp
# Scan QR code with WhatsApp
docker exec -it sin-bridge-whatsapp python -m mautrix_whatsapp --login
```

### Telegram
```bash
cd bridges/telegram
# Login with phone number
docker exec -it sin-bridge-telegram python -m mautrix_telegram --login
```

### Signal
```bash
cd bridges/signal
# Link device
docker exec -it sin-bridge-signal python -m mautrix_signal --login
```

### Discord
```bash
cd bridges/discord
# Login with token
docker exec -it sin-bridge-discord python -m mautrix_discord --login
```

### Slack
```bash
cd bridges/slack
# OAuth login
docker exec -it sin-bridge-slack python -m mautrix_slack --login
```

### Instagram
```bash
cd bridges/instagram
# Login with credentials
docker exec -it sin-bridge-instagram python -m mautrix_instagram --login
```

### IRC
```bash
cd bridges/irc
# Configure IRC server
echo "servers: {irc.libera.chat: {address: irc.libera.chat, port: 6697, tls: true}}" >> config.yaml
```

### Email
```bash
cd bridges/email
# Configure IMAP/SMTP
echo "email: {imap_server: imap.gmail.com, smtp_server: smtp.gmail.com}" >> config.yaml
```

## Using Bridges

Once a bridge is set up:
1. Open Element (or any Matrix client)
2. Start a chat with the bridge bot (e.g., `@whatsappbot:chat.opensin.ai`)
3. Send commands to link your account
4. Start chatting!

## Cross-Platform Chat

With all bridges connected, you can:
- Send a WhatsApp message from Telegram
- Reply to a Discord DM from Signal
- Forward an Email to Slack
- And ANY combination of 37+ platforms!
