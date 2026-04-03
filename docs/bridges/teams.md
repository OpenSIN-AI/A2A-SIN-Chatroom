# teams Bridge Setup

## Prerequisites
- SIN-Chatroom deployed
- Cloudflare Tunnel configured
- teams account credentials

## Setup Steps
1. Run `./scripts/enable-all-bridges.sh`
2. Configure bridge in `bridges/teams/config.yaml`
3. Login to teams
4. Restart bridge: `docker-compose restart teams-bridge`
5. Test connection in Element

## Troubleshooting
- Check logs: `docker-compose logs teams-bridge`
- Restart bridge: `docker-compose restart teams-bridge`
- Reset config: `rm bridges/teams/config.yaml && ./scripts/enable-all-bridges.sh`
