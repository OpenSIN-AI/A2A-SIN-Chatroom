# discord Bridge Setup

## Prerequisites
- SIN-Chatroom deployed
- Cloudflare Tunnel configured
- discord account credentials

## Setup Steps
1. Run `./scripts/enable-all-bridges.sh`
2. Configure bridge in `bridges/discord/config.yaml`
3. Login to discord
4. Restart bridge: `docker-compose restart discord-bridge`
5. Test connection in Element

## Troubleshooting
- Check logs: `docker-compose logs discord-bridge`
- Restart bridge: `docker-compose restart discord-bridge`
- Reset config: `rm bridges/discord/config.yaml && ./scripts/enable-all-bridges.sh`
