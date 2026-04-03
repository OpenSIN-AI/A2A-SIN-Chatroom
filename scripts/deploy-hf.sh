#!/bin/bash
# Deploy SIN-Chatroom on Hugging Face VM
set -e

echo "🚀 SIN-Chatroom — Hugging Face Deployment"
echo "==========================================="

# Check requirements
command -v docker >/dev/null 2>&1 || { echo "❌ Docker required"; exit 1; }
command -v docker-compose >/dev/null 2>&1 || { echo "❌ Docker Compose required"; exit 1; }

# Generate secrets
export MATRIX_SERVER_NAME="${MATRIX_SERVER_NAME:-chat.opensin.ai}"
export REGISTRATION_SHARED_SECRET=$(openssl rand -hex 32)
export MACAROON_SECRET_KEY=$(openssl rand -hex 32)
export FORM_SECRET=$(openssl rand -hex 32)

echo ""
echo "✅ Configuration:"
echo "  Server: $MATRIX_SERVER_NAME"
echo "  Secrets: Generated"
echo ""

# Create config directories
mkdir -p config/synapse config/element
mkdir -p bridges/{whatsapp,telegram,signal,discord,slack,instagram,irc,email}

# Start services
echo "📦 Starting SIN-Chatroom..."
docker-compose up -d

echo ""
echo "✅ SIN-Chatroom is running!"
echo ""
echo "📋 Next Steps:"
echo "  1. Setup Cloudflare Tunnel: ./scripts/setup-cloudflare-tunnel.sh"
echo "  2. Configure bridges: ./scripts/enable-all-bridges.sh"
echo "  3. Open Element: http://localhost:8080"
