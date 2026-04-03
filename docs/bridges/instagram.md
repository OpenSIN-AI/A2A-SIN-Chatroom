# instagram Bridge Setup

## Prerequisites
- SIN-Chatroom deployed
- Cloudflare Tunnel configured
- instagram account credentials

## Setup Steps
1. Run `./scripts/enable-all-bridges.sh`
2. Configure bridge in `bridges/instagram/config.yaml`
3. Login to instagram
4. Restart bridge: `docker-compose restart instagram-bridge`
5. Test connection in Element

## Troubleshooting
- Check logs: `docker-compose logs instagram-bridge`
- Restart bridge: `docker-compose restart instagram-bridge`
- Reset config: `rm bridges/instagram/config.yaml && ./scripts/enable-all-bridges.sh`
