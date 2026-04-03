# xbox Bridge Setup

## Prerequisites
- SIN-Chatroom deployed
- Cloudflare Tunnel configured
- xbox account credentials

## Setup Steps
1. Run `./scripts/enable-all-bridges.sh`
2. Configure bridge in `bridges/xbox/config.yaml`
3. Login to xbox
4. Restart bridge: `docker-compose restart xbox-bridge`
5. Test connection in Element

## Troubleshooting
- Check logs: `docker-compose logs xbox-bridge`
- Restart bridge: `docker-compose restart xbox-bridge`
- Reset config: `rm bridges/xbox/config.yaml && ./scripts/enable-all-bridges.sh`
