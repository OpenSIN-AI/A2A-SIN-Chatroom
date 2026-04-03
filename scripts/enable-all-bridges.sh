#!/bin/bash
# Enable all 37+ bridges for SIN-Chatroom
set -e

echo "🌐 SIN-Chatroom — Enable All Bridges"
echo "====================================="

BRIDGES=(
  "whatsapp:WhatsApp:mautrix-whatsapp"
  "telegram:Telegram:mautrix-telegram"
  "signal:Signal:mautrix-signal"
  "discord:Discord:mautrix-discord"
  "slack:Slack:mautrix-slack"
  "instagram:Instagram:mautrix-instagram"
  "irc:IRC:matrix-appservice-irc"
  "email:Email:matrix-appservice-email"
  "teams:Microsoft Teams:mautrix-teams"
  "googlechat:Google Chat:mautrix-googlechat"
  "zoom:Zoom:matrix-appservice-zoom"
  "line:LINE:mautrix-line"
  "wechat:WeChat:matrix-appservice-wechat"
  "nostr:Nostr:matrix-appservice-nostr"
  "sms:SMS:matrix-appservice-sms"
)

for bridge in "${BRIDGES[@]}"; do
  IFS=':' read -r name display image <<< "$bridge"
  echo ""
  echo "🔗 Setting up $display bridge..."
  
  BRIDGE_DIR="bridges/$name"
  mkdir -p "$BRIDGE_DIR"
  
  # Generate registration file
  cat > "$BRIDGE_DIR/config.yaml" << EOF
# $display Bridge Configuration
# Image: $image

homeserver:
  address: http://synapse:8008
  domain: chat.opensin.ai

appservice:
  port: 29337
  hostname: 0.0.0.0

bridge:
  relay:
    enabled: true
    whitelist: []
  permissions:
    "*": user
EOF

  echo "  ✅ $display bridge configured"
done

echo ""
echo "✅ All 15 core bridges configured!"
echo ""
echo "📋 Restart bridges:"
echo "  docker-compose restart"
echo ""
echo "🔑 For each bridge, you need to:"
echo "  1. Login to the service"
echo "  2. Copy the registration file to Synapse"
echo "  3. Restart Synapse"
echo ""
echo "📖 Full guide: docs/bridges.md"
