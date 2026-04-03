# bluebubbles Bridge Setup

## Prerequisites
- SIN-Chatroom deployed
- Cloudflare Tunnel configured
- bluebubbles account credentials

## Setup Steps
1. Run `./scripts/enable-all-bridges.sh`
2. Configure bridge in `bridges/bluebubbles/config.yaml`
3. Login to bluebubbles
4. Restart bridge: `docker-compose restart bluebubbles-bridge`
5. Test connection in Element

## Troubleshooting
- Check logs: `docker-compose logs bluebubbles-bridge`
- Restart bridge: `docker-compose restart bluebubbles-bridge`
- Reset config: `rm bridges/bluebubbles/config.yaml && ./scripts/enable-all-bridges.sh`
