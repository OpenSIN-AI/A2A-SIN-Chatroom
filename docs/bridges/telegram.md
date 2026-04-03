# telegram Bridge Setup

## Prerequisites
- SIN-Chatroom deployed
- Cloudflare Tunnel configured
- telegram account credentials

## Setup Steps
1. Run `./scripts/enable-all-bridges.sh`
2. Configure bridge in `bridges/telegram/config.yaml`
3. Login to telegram
4. Restart bridge: `docker-compose restart telegram-bridge`
5. Test connection in Element

## Troubleshooting
- Check logs: `docker-compose logs telegram-bridge`
- Restart bridge: `docker-compose restart telegram-bridge`
- Reset config: `rm bridges/telegram/config.yaml && ./scripts/enable-all-bridges.sh`
