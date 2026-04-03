# googlechat Bridge Setup

## Prerequisites
- SIN-Chatroom deployed
- Cloudflare Tunnel configured
- googlechat account credentials

## Setup Steps
1. Run `./scripts/enable-all-bridges.sh`
2. Configure bridge in `bridges/googlechat/config.yaml`
3. Login to googlechat
4. Restart bridge: `docker-compose restart googlechat-bridge`
5. Test connection in Element

## Troubleshooting
- Check logs: `docker-compose logs googlechat-bridge`
- Restart bridge: `docker-compose restart googlechat-bridge`
- Reset config: `rm bridges/googlechat/config.yaml && ./scripts/enable-all-bridges.sh`
