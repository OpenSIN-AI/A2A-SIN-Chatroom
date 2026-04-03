# slack Bridge Setup

## Prerequisites
- SIN-Chatroom deployed
- Cloudflare Tunnel configured
- slack account credentials

## Setup Steps
1. Run `./scripts/enable-all-bridges.sh`
2. Configure bridge in `bridges/slack/config.yaml`
3. Login to slack
4. Restart bridge: `docker-compose restart slack-bridge`
5. Test connection in Element

## Troubleshooting
- Check logs: `docker-compose logs slack-bridge`
- Restart bridge: `docker-compose restart slack-bridge`
- Reset config: `rm bridges/slack/config.yaml && ./scripts/enable-all-bridges.sh`
