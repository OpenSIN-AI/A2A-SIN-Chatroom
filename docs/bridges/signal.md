# signal Bridge Setup

## Prerequisites
- SIN-Chatroom deployed
- Cloudflare Tunnel configured
- signal account credentials

## Setup Steps
1. Run `./scripts/enable-all-bridges.sh`
2. Configure bridge in `bridges/signal/config.yaml`
3. Login to signal
4. Restart bridge: `docker-compose restart signal-bridge`
5. Test connection in Element

## Troubleshooting
- Check logs: `docker-compose logs signal-bridge`
- Restart bridge: `docker-compose restart signal-bridge`
- Reset config: `rm bridges/signal/config.yaml && ./scripts/enable-all-bridges.sh`
