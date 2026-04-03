# zoom Bridge Setup

## Prerequisites
- SIN-Chatroom deployed
- Cloudflare Tunnel configured
- zoom account credentials

## Setup Steps
1. Run `./scripts/enable-all-bridges.sh`
2. Configure bridge in `bridges/zoom/config.yaml`
3. Login to zoom
4. Restart bridge: `docker-compose restart zoom-bridge`
5. Test connection in Element

## Troubleshooting
- Check logs: `docker-compose logs zoom-bridge`
- Restart bridge: `docker-compose restart zoom-bridge`
- Reset config: `rm bridges/zoom/config.yaml && ./scripts/enable-all-bridges.sh`
