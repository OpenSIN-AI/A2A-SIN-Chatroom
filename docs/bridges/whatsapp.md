# whatsapp Bridge Setup

## Prerequisites
- SIN-Chatroom deployed
- Cloudflare Tunnel configured
- whatsapp account credentials

## Setup Steps
1. Run `./scripts/enable-all-bridges.sh`
2. Configure bridge in `bridges/whatsapp/config.yaml`
3. Login to whatsapp
4. Restart bridge: `docker-compose restart whatsapp-bridge`
5. Test connection in Element

## Troubleshooting
- Check logs: `docker-compose logs whatsapp-bridge`
- Restart bridge: `docker-compose restart whatsapp-bridge`
- Reset config: `rm bridges/whatsapp/config.yaml && ./scripts/enable-all-bridges.sh`
