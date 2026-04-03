# beeper Bridge Setup

## Prerequisites
- SIN-Chatroom deployed
- Cloudflare Tunnel configured
- beeper account credentials

## Setup Steps
1. Run `./scripts/enable-all-bridges.sh`
2. Configure bridge in `bridges/beeper/config.yaml`
3. Login to beeper
4. Restart bridge: `docker-compose restart beeper-bridge`
5. Test connection in Element

## Troubleshooting
- Check logs: `docker-compose logs beeper-bridge`
- Restart bridge: `docker-compose restart beeper-bridge`
- Reset config: `rm bridges/beeper/config.yaml && ./scripts/enable-all-bridges.sh`
