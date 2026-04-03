# line Bridge Setup

## Prerequisites
- SIN-Chatroom deployed
- Cloudflare Tunnel configured
- line account credentials

## Setup Steps
1. Run `./scripts/enable-all-bridges.sh`
2. Configure bridge in `bridges/line/config.yaml`
3. Login to line
4. Restart bridge: `docker-compose restart line-bridge`
5. Test connection in Element

## Troubleshooting
- Check logs: `docker-compose logs line-bridge`
- Restart bridge: `docker-compose restart line-bridge`
- Reset config: `rm bridges/line/config.yaml && ./scripts/enable-all-bridges.sh`
