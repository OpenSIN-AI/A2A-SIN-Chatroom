#!/bin/bash
# Setup Cloudflare Tunnel for SIN-Chatroom
set -e

echo "🔒 SIN-Chatroom — Cloudflare Tunnel Setup"
echo "==========================================="

# Check if cloudflared is installed
if ! command -v cloudflared &> /dev/null; then
  echo "📦 Installing cloudflared..."
  if [[ "$OSTYPE" == "darwin"* ]]; then
    brew install cloudflare/cloudflare/cloudflared
  else
    curl -fsSL https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64 -o /usr/local/bin/cloudflared
    chmod +x /usr/local/bin/cloudflared
  fi
fi

# Create tunnel
echo ""
echo "🔧 Creating tunnel..."
TUNNEL_NAME="sin-chatroom-$(openssl rand -hex 4)"
cloudflared tunnel create $TUNNEL_NAME

# Get tunnel credentials
CREDENTIALS_FILE=$(ls ~/.cloudflared/*.json | head -1)
echo "✅ Tunnel created: $TUNNEL_NAME"

# Configure routes
echo ""
echo "🌐 Configuring routes..."
cloudflared tunnel route dns $TUNNEL_NAME chat.opensin.ai

# Create config
cat > ~/.cloudflared/config.yml << EOF
tunnel: $TUNNEL_NAME
credentials-file: $CREDENTIALS_FILE

ingress:
  - hostname: chat.opensin.ai
    service: http://localhost:8008
  - hostname: element.opensin.ai
    service: http://localhost:8080
  - service: http_status:404
EOF

echo ""
echo "✅ Cloudflare Tunnel configured!"
echo ""
echo "📋 Start tunnel:"
echo "  cloudflared tunnel run $TUNNEL_NAME"
echo ""
echo "🌐 Your SIN-Chatroom is now accessible at:"
echo "  Matrix: https://chat.opensin.ai"
echo "  Element: https://element.opensin.ai"
