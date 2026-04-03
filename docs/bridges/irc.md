# irc Bridge Setup

## Prerequisites
- SIN-Chatroom deployed
- Cloudflare Tunnel configured
- irc account credentials

## Setup Steps
1. Run `./scripts/enable-all-bridges.sh`
2. Configure bridge in `bridges/irc/config.yaml`
3. Login to irc
4. Restart bridge: `docker-compose restart irc-bridge`
5. Test connection in Element

## Troubleshooting
- Check logs: `docker-compose logs irc-bridge`
- Restart bridge: `docker-compose restart irc-bridge`
- Reset config: `rm bridges/irc/config.yaml && ./scripts/enable-all-bridges.sh`
