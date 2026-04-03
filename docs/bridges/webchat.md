# webchat Bridge Setup

## Prerequisites
- SIN-Chatroom deployed
- Cloudflare Tunnel configured
- webchat account credentials

## Setup Steps
1. Run `./scripts/enable-all-bridges.sh`
2. Configure bridge in `bridges/webchat/config.yaml`
3. Login to webchat
4. Restart bridge: `docker-compose restart webchat-bridge`
5. Test connection in Element

## Troubleshooting
- Check logs: `docker-compose logs webchat-bridge`
- Restart bridge: `docker-compose restart webchat-bridge`
- Reset config: `rm bridges/webchat/config.yaml && ./scripts/enable-all-bridges.sh`
